package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.SessionDetailDao;
import com.xiu.fastsparkdev.model.SessionDetail;
import com.xiu.fastsparkdev.service.SessionDetailService;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.sql.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import scala.Tuple2;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class SessionDetailServiceImpl implements SessionDetailService{

    @Autowired
    SessionDetailDao sessionDetailDao;

    @Override
    public SessionDetail saveSessionDetail(JavaPairRDD<String,Tuple2<String,Row>> extractSessionDetailRDD) {

        System.err.println("extractSessionDetailRDD count:"+extractSessionDetailRDD.count());

        //List<SessionDetail> sessionDetailList = new ArrayList<>();
        SessionDetail[] sessionDetailArrayList = new SessionDetail[(int)extractSessionDetailRDD.count()];
        AtomicInteger atomicInteger = new AtomicInteger(0);
        extractSessionDetailRDD.foreach((Tuple2<String,Tuple2<String,Row>> tuple)->{
            Row row = tuple._2._2;
            int i = 0;
            if(row !=null) {
                SessionDetail sessionDetail = new SessionDetail();
                sessionDetail.setTaskid(2);
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
                //sessionDetailList.add(sessionDetail);
                sessionDetailArrayList[atomicInteger.get()] = sessionDetail;
                atomicInteger.addAndGet(1);
            }
        }
        );
        System.err.println("sessionDetailList size is"+sessionDetailArrayList.length);
        System.err.println("sessionDetailList size is"+sessionDetailArrayList.toString());

        Arrays.asList(sessionDetailArrayList).forEach(v->System.err.println(v));

        sessionDetailDao.saveAll(Arrays.asList(sessionDetailArrayList));
        return null;

    }
}
