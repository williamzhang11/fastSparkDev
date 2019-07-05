package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.Task;

import java.util.Optional;

public interface TaskService {

    Optional<Task> findById(Long aLong);

}
