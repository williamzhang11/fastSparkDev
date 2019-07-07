package com.xiu.fastsparkdev.dao;

import com.xiu.fastsparkdev.model.SessionDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface SessionDetailDao extends JpaRepository<SessionDetail,Long>{

}
