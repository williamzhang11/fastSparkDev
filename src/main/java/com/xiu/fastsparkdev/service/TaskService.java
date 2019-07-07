package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.Task;

import java.io.Serializable;
import java.util.Optional;

public interface TaskService extends Serializable{

    Optional<Task> findById(Long aLong);

}
