# 基于spring boot spark框架的大数据分析
## 需求：
    1.根据条件筛选出符合条件的session
    2.统计出符合条件的session中，访问时长在1s~3s、4s~6s、7s~9s、10s~30s、
        30s~60s、1m~3m、3m~10m、10m~30m、30m以上各个范围内的session占比；
        访问步长在1~3、4~6、7~9、10~30、30~60、60以上各个范围内的session占比
    3.在符合条件的session中，按照时间比例随机抽取1000个session    
    
    
## 实现
需求1，2 对应  包路径：com.xiu.fastsparkdev.controller.SessionAggregationController


