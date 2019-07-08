package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.SessionDetail;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.sql.Row;
import scala.Tuple2;

import java.io.Serializable;

public interface SessionDetailService extends Serializable {

    SessionDetail saveSessionDetail(JavaPairRDD<String,Tuple2<String,Row>> extractSessionDetailRDD);

    SessionDetail saveSessionDetail(SessionDetail sessionDetail);
}
