package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.SessionAggrStat;
import com.xiu.fastsparkdev.model.Task;
import org.apache.spark.Accumulator;

public interface SessionAggrStatService {

    public SessionAggrStat saveSessionAggrStat(Accumulator<String> sessionAgrStatAccumulator, Task task);
}
