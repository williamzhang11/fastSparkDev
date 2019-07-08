package com.xiu.fastsparkdev.util;

import com.xiu.fastsparkdev.model.SessionDetail;
import org.apache.spark.AccumulatorParam;
import org.apache.spark.util.AccumulatorV2;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class SessionDetailAccumulator1  implements AccumulatorParam<List<SessionDetail>> {

    @Override
    public List<SessionDetail> addInPlace(List<SessionDetail> r1, List<SessionDetail> r2) {

         r1.addAll(r2);
         return r1;

    }

    @Override
    public List<SessionDetail> zero(List<SessionDetail> initialValue) {
        return new ArrayList<>();
    }

    @Override
    public List<SessionDetail> addAccumulator(List<SessionDetail> t1, List<SessionDetail> t2) {
        t1.addAll(t2);
        return t1;
    }
}
