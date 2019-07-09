package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.Top10CategoryDao;
import com.xiu.fastsparkdev.model.Top10Category;
import com.xiu.fastsparkdev.service.Top10CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Top10CategoryServiceImpl implements Top10CategoryService{

    @Autowired
    Top10CategoryDao top10CategoryDao;

    @Override
    public Top10Category saveTop10Category(Top10Category top10Category) {


        return top10CategoryDao.save(top10Category);
    }
}
