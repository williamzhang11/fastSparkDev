package com.xiu.fastsparkdev.util;

import com.xiu.fastsparkdev.constant.Constants;
import org.apache.spark.util.AccumulatorV2;

public class SessionAggrStatAccumulator extends AccumulatorV2<String,String> {
        String v1 = Constants.SESSION_COUNT + "=0|"
                + Constants.TIME_PERIOD_1s_3s + "=0|"
                + Constants.TIME_PERIOD_4s_6s + "=0|"
                + Constants.TIME_PERIOD_7s_9s + "=0|"
                + Constants.TIME_PERIOD_10s_30s + "=0|"
                + Constants.TIME_PERIOD_30s_60s + "=0|"
                + Constants.TIME_PERIOD_1m_3m + "=0|"
                + Constants.TIME_PERIOD_3m_10m + "=0|"
                + Constants.TIME_PERIOD_10m_30m + "=0|"
                + Constants.TIME_PERIOD_30m + "=0|"
                + Constants.STEP_PERIOD_1_3 + "=0|"
                + Constants.STEP_PERIOD_4_6 + "=0|"
                + Constants.STEP_PERIOD_7_9 + "=0|"
                + Constants.STEP_PERIOD_10_30 + "=0|"
                + Constants.STEP_PERIOD_30_60 + "=0|"
                + Constants.STEP_PERIOD_60 + "=0";

    @Override
    public boolean isZero() {
        return false;
    }

    @Override
    public AccumulatorV2<String, String> copy() {
        return null;
    }

    @Override
    public void reset() {

    }

    @Override
    public void add(String v) {
        if(!StringUtils.isEmpty(v)){
            String oldValue = StringUtils.getFieldFromConcatString(v1, "\\|", v);
            if(oldValue != null) {
                // 将范围区间原有的值，累加1
                int newValue = Integer.valueOf(oldValue) + 1;
                // 使用StringUtils工具类，将v1中，v2对应的值，设置成新的累加后的值
                 v1=StringUtils.setFieldInConcatString(v1, "\\|", v, String.valueOf(newValue));
            }
        }
    }

    @Override
    public void merge(AccumulatorV2<String, String> other) {

    }

    @Override
    public String value() {

        return v1;
    }
}
