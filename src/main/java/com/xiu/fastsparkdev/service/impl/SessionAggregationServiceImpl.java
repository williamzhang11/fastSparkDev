package com.xiu.fastsparkdev.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.xiu.fastsparkdev.constant.Constants;
import com.xiu.fastsparkdev.exception.SessionAggregationException;
import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.service.SessionAggregationService;
import com.xiu.fastsparkdev.util.ParamUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import org.springframework.stereotype.Service;

@Service
public class SessionAggregationServiceImpl implements SessionAggregationService{

    @Override
    public JavaRDD<Row> getActionRDDByDateRange(SQLContext sqlContext, Task task) throws Exception {
        if(task == null){
            throw new SessionAggregationException("task is null");
        }
        JSONObject jsonObject = JSONObject.parseObject(task.getStartTime());
        String startDate = ParamUtils.getParam(jsonObject, Constants.PARAM_START_DATE);
        String endDate = ParamUtils.getParam(jsonObject, Constants.PARAM_END_DATE);
        StringBuffer sql = new StringBuffer("select * from user_visit_action where 1=1");

        if(StringUtils.isNoneEmpty(startDate)){
            sql.append(" and date >=" + startDate);
        }

        if(StringUtils.isNoneEmpty(endDate)){
            sql.append(" and date <=" + endDate);
        }

        Dataset<Row> dataset = sqlContext.sql(sql.toString());
        return dataset.javaRDD();
    }
}
