package com.xiu.fastsparkdev.config;

import com.xiu.fastsparkdev.constant.Constants;
import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.sql.SQLContext;
import org.apache.spark.sql.hive.HiveContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SparkConfig {

   private  static SparkConf sparkConf = new SparkConf().setMaster("local").setAppName(Constants.SPARK_APP_NAME_SESSION);
   private  static JavaSparkContext javaSparkContext = new JavaSparkContext(sparkConf);

   @Autowired
   private MyLocalConfig myConfig;

    @Bean
    public JavaSparkContext javaSparkContext(){
        javaSparkContext.setLogLevel("ERROR");
        return javaSparkContext;
    }
    @Bean
    public SQLContext sqlContext(){

        System.out.println(myConfig.getSparkLocal());

        if("true".equals(myConfig.getSparkLocal())){
            return new SQLContext(javaSparkContext);
        }else {
            return new HiveContext(javaSparkContext);
        }
    }

}
