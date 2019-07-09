package com.xiu.fastsparkdev.service;

import com.alibaba.fastjson.JSONObject;
import com.xiu.fastsparkdev.model.Task;
import com.xiu.fastsparkdev.util.CategorySortKey;
import org.apache.spark.Accumulator;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SQLContext;
import scala.Tuple2;

import java.io.Serializable;
import java.util.List;

public interface SessionAggregationService extends Serializable{

    /**
     * function:模拟hive查询，返回结果RDD
     * @param sqlContex/t
     * @param task
     * @return JavaRDD<Row>
     * @throws Exception
     */
    JavaRDD<Row> getActionRDDByDateRange(SQLContext sqlContext, Task task)throws Exception;

    /**
     *从user_info和user_visit_action中根据userid聚合session所需信息
     * @param sqlContext
     * @param actionRDD
     * @return
     */
    JavaPairRDD<String,String> aggregateBySession(SQLContext sqlContext, JavaPairRDD<String, Row> sessionid2actionRDD);

    JavaPairRDD<String,String> filterSessionAndAggrStat(JavaPairRDD<String,String> sessionid2AggrInfoRDD,
                                                        JSONObject taskParam, Accumulator<String> sessionAggrStatAccumulator);

    /**
     * 随机抽取session
     * @param taskid
     * @param sessionid2AggrInfoRDD
     * @param sessionid2actionRDD
     */
    JavaPairRDD<String, Tuple2<String,Row>> randomExtractSession(Task task, JavaPairRDD<String,String> sessionid2AggrInfoRDD,
                                                                 JavaPairRDD<String,Row> sessionid2actionRDD);

    void getTop10Category(Task task,JavaPairRDD<String, String> filteredSessionid2AggrInfoRDD,
            JavaPairRDD<String, Row> sessionid2actionRDD);

     JavaPairRDD<Long, Long> getClickCategoryId2CountRDD(JavaPairRDD<String, Row> sessionid2detailRDD);

     JavaPairRDD<Long, Long> getOrderCategoryId2CountRDD(JavaPairRDD<String, Row> sessionid2detailRDD);

     JavaPairRDD<Long, Long> getPayCategoryId2CountRDD(JavaPairRDD<String, Row> sessionid2detailRDD);


    JavaPairRDD<Long, String> joinCategoryAndData(
            JavaPairRDD<Long, Long> categoryidRDD,
            JavaPairRDD<Long, Long> clickCategoryId2CountRDD,
            JavaPairRDD<Long, Long> orderCategoryId2CountRDD,
            JavaPairRDD<Long, Long> payCategoryId2CountRDD);

    void getTop10Session(
            JavaSparkContext sc,
            final long taskid,
            List<Tuple2<CategorySortKey, String>> top10CategoryList,
            JavaPairRDD<String, Row> sessionid2detailRDD);


}
