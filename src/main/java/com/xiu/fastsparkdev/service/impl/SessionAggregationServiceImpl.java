package com.xiu.fastsparkdev.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.xiu.fastsparkdev.constant.Constants;
import com.xiu.fastsparkdev.exception.SessionAggregationException;
import com.xiu.fastsparkdev.model.*;
import com.xiu.fastsparkdev.service.*;
import com.xiu.fastsparkdev.util.*;
import org.apache.spark.Accumulator;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.Optional;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scala.Tuple2;

import java.io.Serializable;
import java.util.*;

@Service
public class SessionAggregationServiceImpl implements SessionAggregationService,Serializable {


    @Autowired
    transient SessionRandomExtractService sessionRandomExtractService;

    @Autowired
    SessionDetailService sessionDetailService;

    @Autowired
    Top10CategoryService top10CategoryService;
    @Autowired
    JavaSparkContext javaSparkContext;

    @Autowired
    Top10SessionService top10SessionService;


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
    public JavaPairRDD<String, String> aggregateBySession(SQLContext sqlContext, JavaPairRDD<String, Row> sessionid2actionRDD) {

    //<sessionid,Row>
    JavaPairRDD<Long,String> userid2PartAggrInfoRDD =sessionid2actionRDD.groupByKey().
            mapToPair((Tuple2<String,Iterable<Row>> v)->{
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
                    +Constants.FIELD_CLICK_CATEGORY_IDS+"="+clickCategoryIds+"|"
                    +Constants.FIELD_VISIT_LENGTH+"="+visitLength+"|"
                    +Constants.FIELD_STEP_LENGTH+"="+stepLength+"|"
                    + Constants.FIELD_START_TIME + "=" + DateUtils.formatTime(startTime);
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

        JavaPairRDD<String,String> filteredSessionid2AggrInfoRDD = sessionid2AggrInfoRDD.filter(
                (Tuple2<String, String> tuple)->{
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


                    //calculateVisitLength(visitLength,sessionAggrStatAccumulator);
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
                    //calculateStepLength(stepLength,sessionAggrStatAccumulator);
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



                    return true;
                }

        );

        return filteredSessionid2AggrInfoRDD;
    }




    @Override
    public JavaPairRDD<String,Tuple2<String,Row>> randomExtractSession(Task task, JavaPairRDD<String, String> sessionid2AggrInfoRDD, JavaPairRDD<String, Row> sessionid2actionRDD) {

        JavaPairRDD<String,String> time2sessionRDD = sessionid2AggrInfoRDD.mapToPair((Tuple2<String,String> tuple)->{

            String sessionid = tuple._1;
            String aggrInfo = tuple._2;

            String startTime = StringUtils.getFieldFromConcatString(
                    aggrInfo, "\\|", Constants.FIELD_START_TIME);
            String dateHour = DateUtils.getDateHour(startTime);
            return new Tuple2<String,String>(dateHour,aggrInfo);
        });
        //得到每天每小时数量
        Map<String,Long> countMap = time2sessionRDD.countByKey();
        //使用按时间比例随机抽取算法，计算出每天每小时抽取session索引
        final Map<String,Map<String ,Long>> dayHourCountMap = new HashMap<String,Map<String,Long>>();

        countMap.forEach((k,v)->{
            String dateHour = k;
            String date = dateHour.split("_")[0];
            String hour = dateHour.split("_")[1];

            long count = v;

            Map<String,Long> hourCountMap = dayHourCountMap.get(date);

            if(hourCountMap ==null){
                hourCountMap = new HashMap<>();
                dayHourCountMap.put(date,hourCountMap);
            }
            hourCountMap.put(hour,count);
        });
        //总共抽取100个，按照天数，进行平分
        int extractNumberPerDay = 100/dayHourCountMap.size();

        final Map<String,Map<String,List<Integer>>> dateHourExtractMap = new HashMap<>();
        Random random = new Random();

        for(Map.Entry<String, Map<String, Long>> dateHourCountEntry : dayHourCountMap.entrySet()) {
            String date = dateHourCountEntry.getKey();
            Map<String, Long> hourCountMap = dateHourCountEntry.getValue();

            // 计算出这一天的session总数
            long sessionCount = 0L;
            for(long hourCount : hourCountMap.values()) {
                sessionCount += hourCount;
            }

            Map<String, List<Integer>> hourExtractMap = dateHourExtractMap.get(date);
            if(hourExtractMap == null) {
                hourExtractMap = new HashMap<String, List<Integer>>();
                dateHourExtractMap.put(date, hourExtractMap);
            }

            // 遍历每个小时
            for(Map.Entry<String, Long> hourCountEntry : hourCountMap.entrySet()) {
                String hour = hourCountEntry.getKey();
                long count = hourCountEntry.getValue();

                // 计算每个小时的session数量，占据当天总session数量的比例，直接乘以每天要抽取的数量
                // 就可以计算出，当前小时需要抽取的session数量
                int hourExtractNumber = (int)(((double)count / (double)sessionCount)
                        * extractNumberPerDay);
                if(hourExtractNumber > count) {
                    hourExtractNumber = (int) count;
                }

                // 先获取当前小时的存放随机数的list
                List<Integer> extractIndexList = hourExtractMap.get(hour);
                if(extractIndexList == null) {
                    extractIndexList = new ArrayList<Integer>();
                    hourExtractMap.put(hour, extractIndexList);
                }

                // 生成上面计算出来的数量的随机数
                for(int i = 0; i < hourExtractNumber; i++) {
                    int extractIndex = random.nextInt((int) count);
                    while(extractIndexList.contains(extractIndex)) {
                        extractIndex = random.nextInt((int) count);
                    }
                    extractIndexList.add(extractIndex);
                }
            }
        }


        JavaPairRDD<String,Iterable<String>> time2sessionsRDD= time2sessionRDD.groupByKey();


        JavaPairRDD<String, String> extractSessionidsRDD =time2sessionsRDD.flatMapToPair((Tuple2<String, Iterable<String>> tuple) ->{

            List<Tuple2<String,String>> extractSessionids = new ArrayList<>();

            String dateHour = tuple._1;
            String date = dateHour.split("_")[0];
            String hour = dateHour.split("_")[1];
            Iterator<String> iterator = tuple._2.iterator();
           List<Integer> extractIndexList = dateHourExtractMap.get(date).get(hour);
            int index =0;
            while(iterator.hasNext()){
                String sessionAggrInfo = iterator.next();
                if(extractIndexList.contains(index)){
                    String sessionid = StringUtils.getFieldFromConcatString(
                            sessionAggrInfo, "\\|", Constants.FIELD_SESSION_ID);

                    // 将数据写入MySQL
                    SessionRandomExtract sessionRandomExtract = new SessionRandomExtract();
                    sessionRandomExtract.setTaskid(task.getId());
                    sessionRandomExtract.setSessionid(sessionid);
                    sessionRandomExtract.setStartTime(StringUtils.getFieldFromConcatString(
                            sessionAggrInfo, "\\|", Constants.FIELD_START_TIME));
                    sessionRandomExtract.setSearchKeywords(StringUtils.getFieldFromConcatString(
                            sessionAggrInfo, "\\|", Constants.FIELD_SEARCH_KEYWORDS));
                    sessionRandomExtract.setClickCategoryIds(StringUtils.getFieldFromConcatString(
                            sessionAggrInfo, "\\|", Constants.FIELD_CLICK_CATEGORY_IDS));
                    //sessionRandomExtractService.saveSessionRandomExtract(sessionRandomExtract);

                    extractSessionids.add(new Tuple2<String, String>(sessionid, sessionid));
                }
                index++;
            }
            return  extractSessionids.iterator();
        });


        JavaPairRDD<String,Tuple2<String,Row>> extractSessionDetailRDD = extractSessionidsRDD.join(sessionid2actionRDD);

        return extractSessionDetailRDD;
    }


    @Override
    public void getTop10Category(Task task, JavaPairRDD<String, String> filteredSessionid2AggrInfoRDD, JavaPairRDD<String, Row> sessionid2actionRDD) {
        //第一步：获取符合条件的session访问过的所有品类
        JavaPairRDD<String, Row> sessionid2detailRDD =filteredSessionid2AggrInfoRDD.join(sessionid2actionRDD).mapToPair((Tuple2<String, Tuple2<String, Row>> tuple)->
        {
            return new Tuple2<String, Row>(tuple._1, tuple._2._2);
        });
        //获取所有session访问过的所有品类id
        JavaPairRDD<Long,Long> categoryidRDD = sessionid2detailRDD.flatMapToPair((Tuple2<String,Row> tuple)->{

            Row row = tuple._2;
            List<Tuple2<Long,Long>> list = new ArrayList<>();
            Long clickCategoryId = row.isNullAt(6)? null:row.getLong(6);
            if(clickCategoryId != null){
                list.add(new Tuple2<Long,Long>(clickCategoryId,clickCategoryId));
            }

            String orderCategoryIds = row.getString(8);
            if(orderCategoryIds != null) {
                String[] orderCategoryIdsSplited = orderCategoryIds.split(",");
                for(String orderCategoryId : orderCategoryIdsSplited) {
                    list.add(new Tuple2<Long, Long>(Long.valueOf(orderCategoryId),
                            Long.valueOf(orderCategoryId)));
                }
            }

            String payCategoryIds = row.getString(10);
            if(payCategoryIds != null) {
                String[] payCategoryIdsSplited = payCategoryIds.split(",");
                for(String payCategoryId : payCategoryIdsSplited) {
                    list.add(new Tuple2<Long, Long>(Long.valueOf(payCategoryId),
                            Long.valueOf(payCategoryId)));
                }
            }

            return list.iterator();
        });

        categoryidRDD.distinct();

        //第二步：计算各品类的点击，下单，支付次数
        // 计算各个品类的点击次数
        JavaPairRDD<Long, Long> clickCategoryId2CountRDD =
                getClickCategoryId2CountRDD(sessionid2detailRDD);
        // 计算各个品类的下单次数
        JavaPairRDD<Long, Long> orderCategoryId2CountRDD =
                getOrderCategoryId2CountRDD(sessionid2detailRDD);
        // 计算各个品类的支付次数
        JavaPairRDD<Long, Long> payCategoryId2CountRDD =
                getPayCategoryId2CountRDD(sessionid2detailRDD);

        JavaPairRDD<Long, String> categoryid2countRDD = joinCategoryAndData(
                categoryidRDD, clickCategoryId2CountRDD, orderCategoryId2CountRDD,
                payCategoryId2CountRDD);

        JavaPairRDD<CategorySortKey, String> sortKey2countRDD = categoryid2countRDD.mapToPair(

                (Tuple2<Long, String> tuple)->{

                    String countInfo = tuple._2;
                    long clickCount = Long.valueOf(StringUtils.getFieldFromConcatString(
                            countInfo, "\\|", Constants.FIELD_CLICK_COUNT));
                    long orderCount = Long.valueOf(StringUtils.getFieldFromConcatString(
                            countInfo, "\\|", Constants.FIELD_ORDER_COUNT));
                    long payCount = Long.valueOf(StringUtils.getFieldFromConcatString(
                            countInfo, "\\|", Constants.FIELD_PAY_COUNT));

                    CategorySortKey sortKey = new CategorySortKey(clickCount,orderCount, payCount);

                    return new Tuple2<CategorySortKey, String>(sortKey, countInfo);
                }
        );
        JavaPairRDD<CategorySortKey, String> sortedCategoryCountRDD =
                sortKey2countRDD.sortByKey(false);

        List<Tuple2<CategorySortKey, String>> top10CategoryList =
                sortedCategoryCountRDD.take(10);

        for(Tuple2<CategorySortKey, String> tuple: top10CategoryList) {
            String countInfo = tuple._2;
            long categoryid = Long.valueOf(StringUtils.getFieldFromConcatString(
                    countInfo, "\\|", Constants.FIELD_CATEGORY_ID));
            long clickCount = Long.valueOf(StringUtils.getFieldFromConcatString(
                    countInfo, "\\|", Constants.FIELD_CLICK_COUNT));
            long orderCount = Long.valueOf(StringUtils.getFieldFromConcatString(
                    countInfo, "\\|", Constants.FIELD_ORDER_COUNT));
            long payCount = Long.valueOf(StringUtils.getFieldFromConcatString(
                    countInfo, "\\|", Constants.FIELD_PAY_COUNT));

            Top10Category category = new Top10Category();
            category.setTaskid(task.getId());
            category.setCategoryid(categoryid);
            category.setClickCount(clickCount);
            category.setOrderCount(orderCount);
            category.setPayCount(payCount);
            top10CategoryService.saveTop10Category(category);

        }

        getTop10Session(javaSparkContext, task.getTaskid(),
                top10CategoryList, sessionid2detailRDD);


    }


    @Override
    public JavaPairRDD<Long, Long> getClickCategoryId2CountRDD(JavaPairRDD<String, Row> sessionid2detailRDD) {
        JavaPairRDD<String,Row> clickActionRDD = sessionid2detailRDD.filter((Tuple2<String,Row>tuple)->{
            Row row = tuple._2;
            return row.get(6)!=null ?true:false;
        });

        JavaPairRDD<Long, Long> clickCategoryIdRDD =clickActionRDD.mapToPair((Tuple2<String,Row> tuple)->{
            long clickCategoryId = tuple._2.getLong(6);
            return new Tuple2<Long, Long>(clickCategoryId, 1L);
        });
        JavaPairRDD<Long, Long> clickCategoryId2CountRDD = clickCategoryIdRDD.reduceByKey(
                (Long v1,Long v2)->{return  v1+v2;}
                );

        return clickCategoryId2CountRDD;
    }

    @Override
    public JavaPairRDD<Long, Long> getOrderCategoryId2CountRDD(JavaPairRDD<String, Row> sessionid2detailRDD) {

        JavaPairRDD<String,Row> orderActionRDD = sessionid2detailRDD.filter((Tuple2<String,Row>tuple)->{
            Row row = tuple._2;
            return row.get(8)!=null ?true:false;
        });
        JavaPairRDD<Long, Long> orderCategoryIdRDD = orderActionRDD.flatMapToPair(

                (Tuple2<String, Row> tuple)->{
                    Row row = tuple._2;
                    String orderCategoryIds = row.getString(8);
                    String[] orderCategoryIdsSplited = orderCategoryIds.split(",");

                    List<Tuple2<Long, Long>> list = new ArrayList<Tuple2<Long, Long>>();

                    for(String orderCategoryId : orderCategoryIdsSplited) {
                        list.add(new Tuple2<Long, Long>(Long.valueOf(orderCategoryId), 1L));
                    }

                    return list.iterator();
                }
        );

        JavaPairRDD<Long, Long> orderCategoryId2CountRDD = orderCategoryIdRDD.reduceByKey(
                (Long v1,Long v2)->{return  v1+v2;}
        );

        return orderCategoryId2CountRDD;
    }

    @Override
    public JavaPairRDD<Long, Long> getPayCategoryId2CountRDD(JavaPairRDD<String, Row> sessionid2detailRDD) {
        JavaPairRDD<String,Row> payActionRDD = sessionid2detailRDD.filter((Tuple2<String,Row>tuple)->{
            Row row = tuple._2;
            return row.get(10)!=null ?true:false;
        });


        JavaPairRDD<Long, Long> payCategoryIdRDD = payActionRDD.flatMapToPair(

                (Tuple2<String, Row> tuple)->{
                    Row row = tuple._2;
                    String payCategoryIds = row.getString(8);
                    List<Tuple2<Long, Long>> list = new ArrayList<Tuple2<Long, Long>>();
                    if(!StringUtils.isEmpty(payCategoryIds)) {
                        String[] payCategoryIdsSplited = payCategoryIds.split(",");
                        for (String payCategoryId : payCategoryIdsSplited) {
                            list.add(new Tuple2<Long, Long>(Long.valueOf(payCategoryId), 1L));
                        }
                    }
                    return list.iterator();


                }
        );

        JavaPairRDD<Long, Long> clickCategoryId2CountRDD = payCategoryIdRDD.reduceByKey(
                (Long v1,Long v2)->{return  v1+v2;}
        );

        return clickCategoryId2CountRDD;
    }


    @Override
    public JavaPairRDD<Long, String> joinCategoryAndData(JavaPairRDD<Long, Long> categoryidRDD, JavaPairRDD<Long, Long> clickCategoryId2CountRDD, JavaPairRDD<Long, Long> orderCategoryId2CountRDD, JavaPairRDD<Long, Long> payCategoryId2CountRDD) {

        JavaPairRDD<Long, Tuple2<Long, Optional<Long>>>  tmpJoinRDD =categoryidRDD.leftOuterJoin(clickCategoryId2CountRDD);

        JavaPairRDD<Long, String> tmpMapRDD = tmpJoinRDD.mapToPair(

                (Tuple2<Long, Tuple2<Long, Optional<Long>>> tuple)->{
                    long categoryid = tuple._1;
                    Optional<Long> optional = tuple._2._2;
                    long clickCount = 0L;
                    if(optional.isPresent()) {
                        clickCount = optional.get();
                    }
                    String value = Constants.FIELD_CATEGORY_ID + "=" + categoryid + "|" +
                            Constants.FIELD_CLICK_COUNT + "=" + clickCount;
                    return new Tuple2<Long, String>(categoryid, value);

                }
        );

        tmpMapRDD = tmpMapRDD.leftOuterJoin(orderCategoryId2CountRDD).mapToPair(

                (Tuple2<Long, Tuple2<String, Optional<Long>>> tuple)->{

                    long categoryid = tuple._1;
                    String value = tuple._2._1;

                    Optional<Long> optional = tuple._2._2;
                    long orderCount = 0L;

                    if(optional.isPresent()) {
                        orderCount = optional.get();
                    }

                    value = value + "|" + Constants.FIELD_ORDER_COUNT + "=" + orderCount;

                    return new Tuple2<Long, String>(categoryid, value);
                }
        );

        tmpMapRDD = tmpMapRDD.leftOuterJoin(payCategoryId2CountRDD).mapToPair(

                (Tuple2<Long, Tuple2<String, Optional<Long>>> tuple)->{
                    long categoryid = tuple._1;
                    String value = tuple._2._1;

                    Optional<Long> optional = tuple._2._2;
                    long payCount = 0L;

                    if(optional.isPresent()) {
                        payCount = optional.get();
                    }

                    value = value + "|" + Constants.FIELD_PAY_COUNT + "=" + payCount;

                    return new Tuple2<Long, String>(categoryid, value);
                }

        );

        return tmpMapRDD;
    }


    @Override
    public void getTop10Session(JavaSparkContext sc, long taskid, List<Tuple2<CategorySortKey, String>> top10CategoryList, JavaPairRDD<String, Row> sessionid2detailRDD) {
        /**
         * 第一步：将top10热门品类的id，生成一份RDD
         */
        List<Tuple2<Long, Long>> top10CategoryIdList =
                new ArrayList<Tuple2<Long, Long>>();

        for(Tuple2<CategorySortKey, String> category : top10CategoryList) {
            long categoryid = Long.valueOf(StringUtils.getFieldFromConcatString(
                    category._2, "\\|", Constants.FIELD_CATEGORY_ID));
            top10CategoryIdList.add(new Tuple2<Long, Long>(categoryid, categoryid));
        }

        JavaPairRDD<Long, Long> top10CategoryIdRDD =
                sc.parallelizePairs(top10CategoryIdList);
        /**
         * 第二步：计算top10品类被各session点击的次数
         */
        JavaPairRDD<String, Iterable<Row>> sessionid2detailsRDD =
                sessionid2detailRDD.groupByKey();
        JavaPairRDD<Long, String> categoryid2sessionCountRDD = sessionid2detailsRDD.flatMapToPair((
                Tuple2<String, Iterable<Row>> tuple)->{
            String sessionid = tuple._1;
            Iterator<Row> iterator = tuple._2.iterator();

            Map<Long, Long> categoryCountMap = new HashMap<Long, Long>();

            // 计算出该session，对每个品类的点击次数
            while(iterator.hasNext()) {
                Row row = iterator.next();

                if(row.get(6) != null) {
                    long categoryid = row.getLong(6);

                    Long count = categoryCountMap.get(categoryid);
                    if(count == null) {
                        count = 0L;
                    }

                    count++;

                    categoryCountMap.put(categoryid, count);
                }
            }
            List<Tuple2<Long, String>> list = new ArrayList<Tuple2<Long, String>>();

            for(Map.Entry<Long, Long> categoryCountEntry : categoryCountMap.entrySet()) {
                long categoryid = categoryCountEntry.getKey();
                long count = categoryCountEntry.getValue();
                String value = sessionid + "," + count;
                list.add(new Tuple2<Long, String>(categoryid, value));
            }

            return list.iterator();


        });

        JavaPairRDD<Long, String> top10CategorySessionCountRDD = top10CategoryIdRDD
                .join(categoryid2sessionCountRDD).mapToPair((Tuple2<Long, Tuple2<Long, String>> tuple)->{

                    return new Tuple2<Long, String>(tuple._1, tuple._2._2);
                });

        /**
         * 第三步：分组取TopN算法实现，获取每个品类的top10活跃用户
         */
        JavaPairRDD<Long, Iterable<String>> top10CategorySessionCountsRDD =
                top10CategorySessionCountRDD.groupByKey();
        Accumulator<List<Top10Session>> top10SessionAccumulator=javaSparkContext.accumulator(new ArrayList<>(),new Top10SessionAccumulator());

        JavaPairRDD<String, String> top10SessionRDD = top10CategorySessionCountsRDD.flatMapToPair(

                (Tuple2<Long, Iterable<String>> tuple)->{

                    long categoryid = tuple._1;
                    Iterator<String> iterator = tuple._2.iterator();

                    // 定义取topn的排序数组
                    String[] top10Sessions = new String[10];

                    while(iterator.hasNext()) {
                        String sessionCount = iterator.next();
                        long count = Long.valueOf(sessionCount.split(",")[1]);

                        // 遍历排序数组
                        for(int i = 0; i < top10Sessions.length; i++) {
                            // 如果当前i位，没有数据，那么直接将i位数据赋值为当前sessionCount
                            if(top10Sessions[i] == null) {
                                top10Sessions[i] = sessionCount;
                                break;
                            } else {
                                long _count = Long.valueOf(top10Sessions[i].split(",")[1]);

                                // 如果sessionCount比i位的sessionCount要大
                                if(count > _count) {
                                    // 从排序数组最后一位开始，到i位，所有数据往后挪一位
                                    for(int j = 9; j > i; j--) {
                                        top10Sessions[j] = top10Sessions[j - 1];
                                    }
                                    // 将i位赋值为sessionCount
                                    top10Sessions[i] = sessionCount;
                                    break;
                                }

                                // 比较小，继续外层for循环
                            }
                        }
                    }
                    // 将数据写入MySQL表
                    List<Tuple2<String, String>> list = new ArrayList<Tuple2<String, String>>();

                    for(String sessionCount : top10Sessions) {
                        String sessionid = sessionCount.split(",")[0];
                        long count = Long.valueOf(sessionCount.split(",")[1]);

                        // 将top10 session插入MySQL表
                        Top10Session top10Session = new Top10Session();
                        top10Session.setTaskid(taskid);
                        top10Session.setCategoryid(categoryid);
                        top10Session.setSessionid(sessionid);
                        top10Session.setClickCount(count);

                        List<Top10Session> top10StessionList = new ArrayList<>();
                        top10StessionList.add(top10Session);
                        top10SessionAccumulator.add(top10StessionList);

                        //top10SessionService.saveTop10Session(top10Session);
                        // 放入list
                        list.add(new Tuple2<String, String>(sessionid, sessionid));
                    }

                    return list.iterator();
                }
        );
        top10SessionService.saveAllTop10Session(top10SessionAccumulator.value());


        /**
         * 第四步：获取top10活跃session的明细数据，并写入MySQL
         */
        JavaPairRDD<String, Tuple2<String, Row>> sessionDetailRDD =
                top10SessionRDD.join(sessionid2detailRDD);
        Accumulator<List<SessionDetail>> sessionDetailAccumulator1=
                javaSparkContext.accumulator(new ArrayList<>(),new SessionDetailAccumulator1());
        sessionDetailRDD.foreach((Tuple2<String, Tuple2<String, Row>> tuple)->{

            Row row = tuple._2._2;

            SessionDetail sessionDetail = new SessionDetail();
            sessionDetail.setTaskid(taskid);
            sessionDetail.setUserid(row.isNullAt(1) ? 0L : row.getLong(1));
            sessionDetail.setSessionid(row.isNullAt(2) ? null : row.getString(2));
            sessionDetail.setPageid(row.isNullAt(3) ? 0L : row.getLong(3));
            sessionDetail.setActionTime(row.isNullAt(4) ? null : row.getString(4));
            sessionDetail.setSearchKeyword(row.isNullAt(5) ? null : row.getString(5));
            sessionDetail.setClickCategoryId(row.isNullAt(6) ? 0L : row.getLong(6));
            sessionDetail.setClickProductId(row.isNullAt(7) ? 0L : row.getLong(7));
            sessionDetail.setOrderCategoryIds(row.isNullAt(8) ? null : row.getString(8));
            sessionDetail.setOrderProductIds(row.isNullAt(9) ? null : row.getString(9));
            sessionDetail.setPayCategoryIds(row.isNullAt(10) ? null : row.getString(10));
            sessionDetail.setPayProductIds(row.isNullAt(11) ? null : row.getString(11));
            //sessionDetailService.saveSessionDetail(sessionDetailRDD);
            List<SessionDetail> sessionDetailList = new ArrayList<>();
            sessionDetailList.add(sessionDetail);
            sessionDetailAccumulator1.add(sessionDetailList);

        });

        sessionDetailService.saveAllSessionDetail(sessionDetailAccumulator1.value());



    }


}
