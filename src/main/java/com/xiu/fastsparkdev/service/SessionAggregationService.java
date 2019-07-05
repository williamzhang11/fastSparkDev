package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.Task;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;

public interface SessionAggregationService {

    JavaRDD<Row> getActionRDDByDateRange(SQLContext sqlContext, Task task)throws Exception;
}
