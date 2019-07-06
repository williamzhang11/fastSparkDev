package com.xiu.fastsparkdev.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.xiu.fastsparkdev.constant.Constants;
import com.xiu.fastsparkdev.exception.SessionAggregationException;
import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.SessionAggregationService;
import com.xiu.fastsparkdev.util.DateUtils;
import com.xiu.fastsparkdev.util.ParamUtils;
import com.xiu.fastsparkdev.util.StringUtils;
import com.xiu.fastsparkdev.util.ValidUtils;
import org.apache.spark.Accumulator;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.function.Function;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import org.springframework.stereotype.Service;
import scala.Tuple2;

import java.util.Date;
import java.util.Iterator;

@Service
public class SessionAggregationServiceImpl implements SessionAggregationService{

    @Override
    public JavaRDD<Row> getActionRDDByDateRange(SQLContext sqlContext, Task task) throws Exception {
        if(task == null){
            throw new SessionAggregationException("task is null");
        }
        JSONObject jsonObject = JSONObject.parseObject(task.getTaskParam());
        String startDate = ParamUtils.getParam(jsonObject, Constants.PARAM_START_DATE);
        String endDate = ParamUtils.getParam(jsonObject, Constants.PARAM_END_DATE);
        StringBuffer sql = new StringBuffer("select * from user_visit_action where");

        if(StringUtils.isNotEmpty(startDate)){
            sql.append("  date >= '" + startDate+"'");
        }

        if(StringUtils.isNotEmpty(endDate)){
            sql.append(" and date <= '" + endDate+"'");
        }

        Dataset<Row> dataset = sqlContext.sql(sql.toString());
        return dataset.javaRDD();
    }

    @Override
    public JavaPairRDD<String, String> aggregateBySession(SQLContext sqlContext, JavaRDD<Row> actionRDD) {

    //<sessionid,Row>
    JavaPairRDD<Long,String> userid2PartAggrInfoRDD = actionRDD.mapToPair( row ->{
            return new Tuple2<String,Row>(row.getString(2),row);
    }).groupByKey().mapToPair((Tuple2<String,Iterable<Row>> v)->{
        String sessionid = v._1;
        Long userid =null;
        Date startTime = null;
        Date endTime = null;
        Iterator<Row> iterator = v._2.iterator();
        StringBuffer searchKeywordsBuffer = new StringBuffer("");
        StringBuffer clickCategoryIdsBuffer = new StringBuffer("");
        int stepLength = 0;
        while(iterator.hasNext()) {
            Row row = iterator.next();
            if (userid == null) {
                userid=row.getLong(1);
            }
            String searchKeyWord = row.getString(5);
            Long clickCategoryId=null;
            if(row.get(6)!=null){
                clickCategoryId = row.getLong(6);
            }

            if (clickCategoryId != null) {
                if (!clickCategoryIdsBuffer.toString().contains(String.valueOf(clickCategoryId))) {
                    clickCategoryIdsBuffer.append(clickCategoryId + ",");
                }
            }
            Date actionTime = DateUtils.parseTime(row.getString(4));
            if (startTime == null) {
                startTime = actionTime;
            }
            if (endTime == null) {
                endTime = actionTime;
            }
            if (actionTime.before(startTime)) {
                startTime = actionTime;
            }
            if (actionTime.after(endTime)) {
                endTime = actionTime;
            }
            stepLength++;

            if (com.xiu.fastsparkdev.util.StringUtils.isNotEmpty(searchKeyWord)) {
                if (!searchKeywordsBuffer.toString().contains(searchKeyWord)) {
                    searchKeywordsBuffer.append(searchKeyWord + ",");
                }
            }
        }
            String searchKeywords = StringUtils.trimComma(searchKeywordsBuffer.toString());
            String clickCategoryIds = StringUtils.trimComma(clickCategoryIdsBuffer.toString());
            long visitLength = (endTime.getTime()-startTime.getTime())/1000;//秒

            String partAggrInfo = Constants.FIELD_SESSION_ID +"="+ sessionid + "|"
                    +Constants.FIELD_SEARCH_KEYWORDS + "="+searchKeywords+"|"
                    +Constants.FIELD_CLICK_CATEGORY_IDS+"="+clickCategoryIds
                    +Constants.FIELD_VISIT_LENGTH+"="+visitLength
                    +Constants.FIELD_STEP_LENGTH+"="+stepLength
                    ;
            return new Tuple2<Long,String>(userid,partAggrInfo);
        });
        //<userid,userrow>
        JavaPairRDD<Long,Row> userid2InfoRDD = sqlContext.sql("select * from user_info").javaRDD().mapToPair(row ->
              new Tuple2<Long,Row>(row.getLong(0),row));


        JavaPairRDD<Long ,Tuple2<String,Row>>join = userid2PartAggrInfoRDD.join(userid2InfoRDD);

        return join.mapToPair((Tuple2<Long,Tuple2<String,Row>> v)->{
            String partAggrInfo = v._2._1;
            Row userInfoRow = v._2._2;
            String sessionid = StringUtils.getFieldFromConcatString(
                    partAggrInfo, "\\|", Constants.FIELD_SESSION_ID);

            int age = userInfoRow.getInt(3);
            String professional = userInfoRow.getString(4);
            String city = userInfoRow.getString(5);
            String sex = userInfoRow.getString(6);
            String fullAggrInfo = partAggrInfo+"|"
                    +Constants.FIELD_AGE+"="+age+"|"
                    +Constants.FIELD_PROFESSIONAL+"="+professional+"|"
                    +Constants.FIELD_CITY+"="+city+"|"
                    +Constants.FIELD_SEX+"="+sex;
            return new Tuple2<String,String>(sessionid, fullAggrInfo);

        });
    }

    public  JavaPairRDD<String, String> filterSessionAndAggrStat(
            JavaPairRDD<String, String> sessionid2AggrInfoRDD,
            final JSONObject taskParam,
            final Accumulator<String> sessionAggrStatAccumulator) {
        // 为了使用我们后面的ValieUtils，所以，首先将所有的筛选参数拼接成一个连接串
        // 此外，这里其实大家不要觉得是多此一举
        // 其实我们是给后面的性能优化埋下了一个伏笔
        String startAge = ParamUtils.getParam(taskParam, Constants.PARAM_START_AGE);
        String endAge = ParamUtils.getParam(taskParam, Constants.PARAM_END_AGE);
        String professionals = ParamUtils.getParam(taskParam, Constants.PARAM_PROFESSIONALS);
        String cities = ParamUtils.getParam(taskParam, Constants.PARAM_CIRYS);
        String sex = ParamUtils.getParam(taskParam, Constants.PARAM_SEX);
        String keywords = ParamUtils.getParam(taskParam, Constants.PARAM_KEYWORDS);
        String categoryIds = ParamUtils.getParam(taskParam, Constants.PARAM_CATEGORY_IDS);

        String _parameter = (startAge != null ? Constants.PARAM_START_AGE + "=" + startAge + "|" : "")
                + (endAge != null ? Constants.PARAM_END_AGE + "=" + endAge + "|" : "")
                + (professionals != null ? Constants.PARAM_PROFESSIONALS + "=" + professionals + "|" : "")
                + (cities != null ? Constants.PARAM_CIRYS + "=" + cities + "|" : "")
                + (sex != null ? Constants.PARAM_SEX + "=" + sex + "|" : "")
                + (keywords != null ? Constants.PARAM_KEYWORDS + "=" + keywords + "|" : "")
                + (categoryIds != null ? Constants.PARAM_CATEGORY_IDS + "=" + categoryIds: "");

        if(_parameter.endsWith("\\|")) {
            _parameter = _parameter.substring(0, _parameter.length() - 1);
        }

        final String parameter = _parameter;

        // 根据筛选参数进行过滤
        JavaPairRDD<String, String> filteredSessionid2AggrInfoRDD = sessionid2AggrInfoRDD.filter(

                new Function<Tuple2<String,String>, Boolean>() {

                    private static final long serialVersionUID = 1L;

                    public Boolean call(Tuple2<String, String> tuple) throws Exception {
                        // 首先，从tuple中，获取聚合数据
                        String aggrInfo = tuple._2;

                        // 接着，依次按照筛选条件进行过滤
                        // 按照年龄范围进行过滤（startAge、endAge）
                        if(!ValidUtils.between(aggrInfo, Constants.FIELD_AGE,
                                parameter, Constants.PARAM_START_AGE, Constants.PARAM_END_AGE)) {
                            return false;
                        }

                        // 按照职业范围进行过滤（professionals）
                        // 互联网,IT,软件
                        // 互联网
                        if(!ValidUtils.in(aggrInfo, Constants.FIELD_PROFESSIONAL,
                                parameter, Constants.PARAM_PROFESSIONALS)) {
                            return false;
                        }

                        // 按照城市范围进行过滤（cities）
                        // 北京,上海,广州,深圳
                        // 成都
                        if(!ValidUtils.in(aggrInfo, Constants.FIELD_CITY,
                                parameter, Constants.PARAM_CIRYS)) {
                            return false;
                        }

                        // 按照性别进行过滤
                        // 男/女
                        // 男，女
                        if(!ValidUtils.equal(aggrInfo, Constants.FIELD_SEX,
                                parameter, Constants.PARAM_SEX)) {
                            return false;
                        }

                        // 按照搜索词进行过滤
                        // 我们的session可能搜索了 火锅,蛋糕,烧烤
                        // 我们的筛选条件可能是 火锅,串串香,iphone手机
                        // 那么，in这个校验方法，主要判定session搜索的词中，有任何一个，与筛选条件中
                        // 任何一个搜索词相当，即通过
                        if(!ValidUtils.in(aggrInfo, Constants.FIELD_SEARCH_KEYWORDS,
                                parameter, Constants.PARAM_KEYWORDS)) {
                            return false;
                        }

                        // 按照点击品类id进行过滤
                        if(!ValidUtils.in(aggrInfo, Constants.FIELD_CLICK_CATEGORY_IDS,
                                parameter, Constants.PARAM_CATEGORY_IDS)) {
                            return false;
                        }

                        // 如果经过了之前的多个过滤条件之后，程序能够走到这里
                        // 那么就说明，该session是通过了用户指定的筛选条件的，也就是需要保留的session
                        // 那么就要对session的访问时长和访问步长，进行统计，根据session对应的范围
                        // 进行相应的累加计数

                        // 主要走到这一步，那么就是需要计数的session
                        sessionAggrStatAccumulator.add(Constants.SESSION_COUNT);

                        // 计算出session的访问时长和访问步长的范围，并进行相应的累加
                        long visitLength = Long.valueOf(StringUtils.getFieldFromConcatString(
                                aggrInfo, "\\|", Constants.FIELD_VISIT_LENGTH) == null? "0":StringUtils.getFieldFromConcatString(
                                aggrInfo, "\\|", Constants.FIELD_VISIT_LENGTH));
                        long stepLength = Long.valueOf(StringUtils.getFieldFromConcatString(
                                aggrInfo, "\\|", Constants.FIELD_STEP_LENGTH) ==null ?"0":StringUtils.getFieldFromConcatString(
                                aggrInfo, "\\|", Constants.FIELD_STEP_LENGTH));
                        calculateVisitLength(visitLength);
                        calculateStepLength(stepLength);

                        return true;
                    }

                    /**
                     * 计算访问时长范围
                     * @param visitLength
                     */
                    private void calculateVisitLength(long visitLength) {
                        if(visitLength >=1 && visitLength <= 3) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_1s_3s);
                        } else if(visitLength >=4 && visitLength <= 6) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_4s_6s);
                        } else if(visitLength >=7 && visitLength <= 9) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_7s_9s);
                        } else if(visitLength >=10 && visitLength <= 30) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_10s_30s);
                        } else if(visitLength > 30 && visitLength <= 60) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_30s_60s);
                        } else if(visitLength > 60 && visitLength <= 180) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_1m_3m);
                        } else if(visitLength > 180 && visitLength <= 600) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_3m_10m);
                        } else if(visitLength > 600 && visitLength <= 1800) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_10m_30m);
                        } else if(visitLength > 1800) {
                            sessionAggrStatAccumulator.add(Constants.TIME_PERIOD_30m);
                        }
                    }

                    /**
                     * 计算访问步长范围
                     * @param stepLength
                     */
                    private void calculateStepLength(long stepLength) {
                        if(stepLength >= 1 && stepLength <= 3) {
                            sessionAggrStatAccumulator.add(Constants.STEP_PERIOD_1_3);
                        } else if(stepLength >= 4 && stepLength <= 6) {
                            sessionAggrStatAccumulator.add(Constants.STEP_PERIOD_4_6);
                        } else if(stepLength >= 7 && stepLength <= 9) {
                            sessionAggrStatAccumulator.add(Constants.STEP_PERIOD_7_9);
                        } else if(stepLength >= 10 && stepLength <= 30) {
                            sessionAggrStatAccumulator.add(Constants.STEP_PERIOD_10_30);
                        } else if(stepLength > 30 && stepLength <= 60) {
                            sessionAggrStatAccumulator.add(Constants.STEP_PERIOD_30_60);
                        } else if(stepLength > 60) {
                            sessionAggrStatAccumulator.add(Constants.STEP_PERIOD_60);
                        }
                    }

                });

        return filteredSessionid2AggrInfoRDD;
    }



}
