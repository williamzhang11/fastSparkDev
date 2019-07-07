package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.SessionDetail;

import java.io.Serializable;

public interface SessionDetailService extends Serializable {

    SessionDetail saveSessionDetail(SessionDetail sessionDetail);
}
