package com.xiu.fastsparkdev.dao;

import com.xiu.fastsparkdev.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TaskDao extends JpaRepository<Task,Long> {

    @Override
    Optional<Task> findById(Long aLong);
}
