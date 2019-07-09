package com.xiu.fastsparkdev.service.impl;


import com.alibaba.fastjson.JSONObject;
import com.xiu.fastsparkdev.mock.MockData;
import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.*;
import com.xiu.fastsparkdev.util.CategorySortKey;
import com.xiu.fastsparkdev.util.SessionAggrStatAccumulator1;
import org.apache.spark.Accumulator;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import org.codehaus.janino.Java;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scala.Tuple2;

import java.util.List;

@Service
public class SessionAnalyseFacadeServiceImpl implements SessionAnalyseFacadeService{

    @Autowired
    TaskService taskService;
    @Autowired
    SessionAggregationService sessionAggregationService;
    @Autowired
    SQLContext sqlContext;

    @Autowired
    SessionAggrStatService sessionAggrStatService;

    @Autowired
    private JavaSparkContext javaSparkContext;

    @Autowired
    SessionRandomExtractService sessionRandomExtractService;

    @Autowired
    SessionDetailService sessionDetailService;

    @Override
    public JavaPairRDD<String, Row> aggregationByCondition(Task task) throws Exception{

        MockData.mock(javaSparkContext,sqlContext);
        //获取actionRDD
        JavaRDD<Row> actionRDD = sessionAggregationService.getActionRDDByDateRange(sqlContext,task);
        //<session_id,actionrow>
        return actionRDD.mapToPair( row ->{
            return new Tuple2<String,Row>(row.getString(2),row);
        });


    }

    @Override
    public JavaPairRDD<String, String> aggregationSession(Task task, JavaPairRDD<String, Row> sessionid2actionRDD) {

        JavaPairRDD<String,String> sessionid2AggrInfoRDD =
                sessionAggregationService.aggregateBySession(sqlContext,sessionid2actionRDD);

        Accumulator<String> sessionAgrStatAccumulator =
                javaSparkContext.accumulator("",new SessionAggrStatAccumulator1());

        JSONObject taskParam = JSONObject.parseObject(task.getTaskParam());
        //根据过滤条件进行筛选，并用累加器统计访问步长与时间
        JavaPairRDD<String, String> filteredSessionid2AggrInfoRDD = sessionAggregationService.filterSessionAndAggrStat(
                sessionid2AggrInfoRDD, taskParam, sessionAgrStatAccumulator);
        System.err.println("count="+filteredSessionid2AggrInfoRDD.count());
        sessionAggrStatService.saveSessionAggrStat(sessionAgrStatAccumulator,task);

        return  filteredSessionid2AggrInfoRDD;

    }

    @Override
    public JavaPairRDD<String, String> sessionRandomExtract(Task task) throws Exception {

        JavaPairRDD<String,Row>  sessionid2actionRDD = aggregationByCondition(task);
        //根据条件筛选出符合的<sessionid,AggrInfo>
         JavaPairRDD<String, String> sessionid2AggrInfoRDD =aggregationSession(task, sessionid2actionRDD);
         System.err.println("sessionRandomExtract count:"+sessionid2actionRDD.count());
        JavaPairRDD<String,Tuple2<String,Row>> extractSessionDetailRDD =sessionAggregationService.
                randomExtractSession(task,sessionid2AggrInfoRDD,sessionid2actionRDD);
        sessionDetailService.saveSessionDetail(extractSessionDetailRDD);

        return null;
    }


    @Override
    public JavaPairRDD<String, String> top10(Task task) throws Exception {
        JavaPairRDD<String,Row>  sessionid2actionRDD = aggregationByCondition(task);
        JavaPairRDD<String, String> sessionid2AggrInfoRDD =aggregationSession(task, sessionid2actionRDD);
        sessionAggregationService.randomExtractSession(task,sessionid2AggrInfoRDD,sessionid2actionRDD);
        sessionAggregationService.getTop10Category(task,sessionid2AggrInfoRDD,sessionid2actionRDD);

        return null;
    }

}
