package com.xiu.fastsparkdev.dao;

import com.xiu.fastsparkdev.model.Top10Session;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Top10SessionDao extends JpaRepository<Top10Session,Long>{


}
