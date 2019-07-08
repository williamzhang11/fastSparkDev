package com.xiu.fastsparkdev.util;

import com.xiu.fastsparkdev.model.SessionDetail;
import org.apache.spark.util.AccumulatorV2;

import java.util.ArrayList;
import java.util.List;

public class SessionDetailAccumulator extends AccumulatorV2<SessionDetail, List<SessionDetail>>{

    List<SessionDetail> sessionDetailList = new ArrayList<>();
    @Override
    public boolean isZero() {
        return false;
    }

    public SessionDetailAccumulator(List<SessionDetail> sessionDetailList) {
        this.sessionDetailList = sessionDetailList;
    }

    @Override
    public AccumulatorV2<SessionDetail, List<SessionDetail>> copy() {
        new SessionDetailAccumulator(sessionDetailList);

        return null;
    }

    @Override
    public void reset() {
        sessionDetailList = null;
    }

    @Override
    public void add(SessionDetail v) {
        sessionDetailList.add(v);
    }

    @Override
    public void merge(AccumulatorV2<SessionDetail, List<SessionDetail>> other) {
        sessionDetailList.addAll(other.value());
    }

    @Override
    public List<SessionDetail> value() {
        return sessionDetailList;
    }
}
