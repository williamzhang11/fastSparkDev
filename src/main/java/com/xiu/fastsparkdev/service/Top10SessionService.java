package com.xiu.fastsparkdev.service;

import com.xiu.fastsparkdev.model.Top10Session;

import java.util.List;

public interface Top10SessionService {

    List<Top10Session> saveAllTop10Session(List<Top10Session> top10Session);
}
