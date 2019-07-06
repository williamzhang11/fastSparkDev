package com.xiu.fastsparkdev.dao;

import com.xiu.fastsparkdev.model.SessionAggrStat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SessionAggrStatDao extends JpaRepository<SessionAggrStat,Long>{

}
