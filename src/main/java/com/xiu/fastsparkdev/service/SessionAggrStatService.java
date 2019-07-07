package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.SessionAggrStat;
import com.xiu.fastsparkdev.model.Task;
import org.apache.spark.Accumulator;

import java.io.Serializable;

public interface SessionAggrStatService extends Serializable {

    SessionAggrStat saveSessionAggrStat(Accumulator<String> sessionAgrStatAccumulator, Task task);
}
