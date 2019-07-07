package com.xiu.fastsparkdev.dao;

import com.xiu.fastsparkdev.model.SessionRandomExtract;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public interface SessionRandomExtractDao extends JpaRepository<SessionRandomExtract,Long>,Serializable{
}
