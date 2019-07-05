package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.TaskDao;
import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class TaskServiceImpl implements TaskService{
    @Autowired
    private TaskDao taskDao;

    @Override
    public Optional<Task> findById(Long aLong) {
        return taskDao.findById(aLong);
    }
}
