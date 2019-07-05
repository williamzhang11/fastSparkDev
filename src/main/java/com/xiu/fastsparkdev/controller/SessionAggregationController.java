package com.xiu.fastsparkdev.controller;

import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.SessionAggregationService;
import com.xiu.fastsparkdev.service.TaskService;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @RequestMapping("/aggregation")
    public String aggregation(Long taskid)throws Exception{

        Optional<Task>  taskOptional = taskService.findById(taskid);
        Task task = null;
        if (taskOptional!=null){
            task  = taskOptional.get();
        }

        JavaRDD<Row> actionRDD = sessionAggregationService.getActionRDDByDateRange(sqlContext,task);
        actionRDD.foreach(v->{System.out.println(actionRDD);});
        return  null;

    }
}
