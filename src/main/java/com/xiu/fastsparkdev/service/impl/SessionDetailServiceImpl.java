package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.SessionDetailDao;
import com.xiu.fastsparkdev.model.SessionDetail;
import com.xiu.fastsparkdev.service.SessionDetailService;
import com.xiu.fastsparkdev.util.SessionDetailAccumulator1;
import org.apache.spark.Accumulator;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.sql.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scala.Tuple2;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Service
public class SessionDetailServiceImpl implements SessionDetailService, Serializable {

    @Autowired
    SessionDetailDao sessionDetailDao;
    @Autowired
    private JavaSparkContext javaSparkContext;



    @Override
    public SessionDetail saveSessionDetail(JavaPairRDD<String,Tuple2<String,Row>> extractSessionDetailRDD) {

        System.err.println("extractSessionDetailRDD count:"+extractSessionDetailRDD.count());

        Accumulator<List<SessionDetail>> sessionDetailAccumulator =javaSparkContext.accumulator(new ArrayList<>(),new SessionDetailAccumulator1());

        extractSessionDetailRDD.foreach((Tuple2<String,Tuple2<String,Row>> tuple)->{
            Row row = tuple._2._2;
            int i = 0;
            if(row !=null) {
                SessionDetail sessionDetail = new SessionDetail();
                sessionDetail.setTaskid(2L);
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
                List<SessionDetail> sessionDetailList = new ArrayList<>();
                sessionDetailList.add(sessionDetail);
                sessionDetailAccumulator.add(sessionDetailList);

            }
        });

        System.err.println("sessionDetailAccumulator.value() size :"+sessionDetailAccumulator.value().size());


        sessionDetailDao.saveAll(sessionDetailAccumulator.value());

        return null;

    }


    @Override
    public SessionDetail saveSessionDetail(SessionDetail sessionDetail) {
        return sessionDetailDao.save(sessionDetail);
    }
}
