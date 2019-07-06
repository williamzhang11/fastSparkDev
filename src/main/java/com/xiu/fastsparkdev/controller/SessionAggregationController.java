package com.xiu.fastsparkdev.controller;

import com.alibaba.fastjson.JSONObject;
import com.xiu.fastsparkdev.mock.MockData;
import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.SessionAggrStatService;
import com.xiu.fastsparkdev.service.SessionAggregationService;
import com.xiu.fastsparkdev.service.TaskService;
import com.xiu.fastsparkdev.util.SessionAggrStatAccumulator;
import com.xiu.fastsparkdev.util.SessionAggrStatAccumulator1;
import org.apache.spark.Accumulator;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import org.apache.spark.util.AccumulatorV2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import scala.Tuple2;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

@RestController()
@RequestMapping("/session")
public class SessionAggregationController {
    @Autowired
    TaskService taskService;
    @Autowired
    SessionAggregationService sessionAggregationService;
    @Autowired
    SQLContext sqlContext;

    @Autowired
    SessionAggrStatService sessionAggrStatService;

    @Autowired
    JavaSparkContext javaSparkContext;

    /**
     * 返回根据条件过滤的信息
     * @param taskid
     * @return
     * @throws Exception
     */
    @RequestMapping("/aggregation")
    public String aggregation(Long taskid)throws Exception{

        Optional<Task>  taskOptional = taskService.findById(taskid);
        Task task = null;
        if (taskOptional!=null){
            task  = taskOptional.get();
        }
        MockData.mock(javaSparkContext,sqlContext);
        JavaRDD<Row> actionRDD = sessionAggregationService.getActionRDDByDateRange(sqlContext,task);

        //session相关的信息聚合<session,session的action信息以及用户信息>

        JavaPairRDD<String,String> sessionid2AggrInfoRDD =
                sessionAggregationService.aggregateBySession(sqlContext,actionRDD);

        Accumulator<String>  sessionAgrStatAccumulator =
                javaSparkContext.accumulator("",new SessionAggrStatAccumulator1());

        JSONObject taskParam = JSONObject.parseObject(task.getTaskParam());
        //根据过滤条件进行筛选，并用累加器统计访问步长与时间
        JavaPairRDD<String, String> filteredSessionid2AggrInfoRDD = sessionAggregationService.filterSessionAndAggrStat(
                sessionid2AggrInfoRDD, taskParam, sessionAgrStatAccumulator);
        sessionAggrStatService.saveSessionAggrStat(sessionAgrStatAccumulator,task);
        return  filteredSessionid2AggrInfoRDD.toString();

    }

    


}
