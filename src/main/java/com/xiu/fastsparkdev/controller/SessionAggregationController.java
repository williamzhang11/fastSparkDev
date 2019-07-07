package com.xiu.fastsparkdev.controller;

import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.SessionAnalyseFacadeService;
import com.xiu.fastsparkdev.service.TaskService;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.sql.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController()
@RequestMapping("/session")
public class SessionAggregationController implements java.io.Serializable{

    @Autowired
    SessionAnalyseFacadeService sessionAnalyseFacadeService;
    @Autowired
    TaskService taskService;

    /**
     * 返回根据条件过滤的信息
     * @param taskid
     * @return
     * @throws Exception
     */
    @RequestMapping("/aggregation")
    public String aggregation(Long taskid)throws Exception{
        Optional<Task> taskOptional = taskService.findById(taskid);
        Task task = null;
        if (taskOptional!=null){
            task  = taskOptional.get();
        }

        JavaPairRDD<String, Row> session= sessionAnalyseFacadeService.aggregationByCondition(task);

        return sessionAnalyseFacadeService.aggregationSession(task,session).toString();
    }
    @RequestMapping("/sessionrandomextract")
    public String sessionRandomExtract(Long taskid) throws Exception{
        Optional<Task> taskOptional = taskService.findById(taskid);
        Task task = null;
        if (taskOptional!=null){
            task  = taskOptional.get();
        }
        sessionAnalyseFacadeService.sessionRandomExtract(task);

        return null;
    }

    @RequestMapping("/top")
    public String top10(Long taskid) throws Exception{
        Optional<Task> taskOptional = taskService.findById(taskid);
        Task task = null;
        if (taskOptional!=null){
            task  = taskOptional.get();
        }
        sessionAnalyseFacadeService.top10(task);

        return null;
    }



}
