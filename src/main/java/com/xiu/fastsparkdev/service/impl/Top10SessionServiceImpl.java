package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.Top10SessionDao;
import com.xiu.fastsparkdev.model.Top10Session;
import com.xiu.fastsparkdev.service.Top10SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Top10SessionServiceImpl implements Top10SessionService{

    @Autowired
    Top10SessionDao top10SessionDao;

    @Override
    public List<Top10Session> saveAllTop10Session(List<Top10Session> top10Session) {


        return top10SessionDao.saveAll(top10Session);
    }
}
