package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.Task;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.sql.Row;

import java.io.Serializable;

public interface SessionAnalyseFacadeService extends Serializable {

    JavaPairRDD<String, Row> aggregationByCondition(Task task)throws Exception;

    JavaPairRDD<String,String> aggregationSession(Task task, final JavaPairRDD<String, Row>sessionid2actionRDD);

    JavaPairRDD<String,String> sessionRandomExtract(Task task)throws Exception;

    JavaPairRDD<String,String> top10(Task task)throws Exception;

}
