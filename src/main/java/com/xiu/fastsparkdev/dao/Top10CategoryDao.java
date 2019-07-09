package com.xiu.fastsparkdev.dao;

import com.xiu.fastsparkdev.model.Top10Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Top10CategoryDao extends JpaRepository<Top10Category,Long>{
}
