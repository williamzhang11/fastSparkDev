package com.xiu.fastsparkdev.service.impl;

import com.xiu.fastsparkdev.dao.SessionRandomExtractDao;
import com.xiu.fastsparkdev.model.SessionRandomExtract;
import com.xiu.fastsparkdev.service.SessionRandomExtractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SessionRandomExtractServiceImpl implements SessionRandomExtractService{

    @Autowired
    SessionRandomExtractDao sessionRandomExtractDao;

    @Override
    public SessionRandomExtract saveSessionRandomExtract(SessionRandomExtract sessionRandomExtract) {
        return sessionRandomExtractDao.save(sessionRandomExtract);
    }
}
