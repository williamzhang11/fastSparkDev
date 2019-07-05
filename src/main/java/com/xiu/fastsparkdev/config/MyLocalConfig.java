package com.xiu.fastsparkdev.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:myconfig.properties")
public class MyLocalConfig {

    @Value("spring.spark.local")
    private String sparkLocal;

    @Bean
    public MyLocalConfig myConfig(){
        return new MyLocalConfig();
    }

    public String getSparkLocal() {
        return sparkLocal;
    }

    public void setSparkLocal(String sparkLocal) {
        this.sparkLocal = sparkLocal;
    }
}
