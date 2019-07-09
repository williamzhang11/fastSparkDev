package com.xiu.fastsparkdev.util;

import com.xiu.fastsparkdev.model.SessionDetail;
import com.xiu.fastsparkdev.model.Top10Session;
import org.apache.spark.AccumulatorParam;

import java.util.ArrayList;
import java.util.List;

public class Top10SessionAccumulator implements AccumulatorParam<List<Top10Session>> {

    @Override
    public List<Top10Session> addInPlace(List<Top10Session> r1, List<Top10Session> r2) {

         r1.addAll(r2);
         return r1;

    }

    @Override
    public List<Top10Session> zero(List<Top10Session> initialValue) {
        return new ArrayList<>();
    }

    @Override
    public List<Top10Session> addAccumulator(List<Top10Session> t1, List<Top10Session> t2) {
        t1.addAll(t2);
        return t1;
    }
}
