package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.SessionDetailDao;
import com.xiu.fastsparkdev.model.SessionDetail;
import com.xiu.fastsparkdev.service.SessionDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;

@Service
public class SessionDetailServiceImpl implements SessionDetailService{

    @Autowired
    SessionDetailDao sessionDetailDao;

    @Override
    public SessionDetail saveSessionDetail(SessionDetail sessionDetail) {

        return sessionDetailDao.save(sessionDetail);
    }
}
