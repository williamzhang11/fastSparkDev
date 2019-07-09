package com.xiu.fastsparkdev.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "TOP10_SESSION")
public class Top10Session implements Serializable{

    private Long id;
    private Long taskid;
    private Long categoryid;
    private String sessionid;
    private Long clickCount;

    @Id
    @Column(name = "id")
    @GeneratedValue( strategy= GenerationType.AUTO)
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    @Column(name = "TASK_ID")
    public Long getTaskid() {
        return taskid;
    }

    public void setTaskid(Long taskid) {
        this.taskid = taskid;
    }
    @Column(name = "CATEGORY_ID")
    public Long getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Long categoryid) {
        this.categoryid = categoryid;
    }
    @Column(name = "SESSION_ID")
    public String getSessionid() {
        return sessionid;
    }

    public void setSessionid(String sessionid) {
        this.sessionid = sessionid;
    }
    @Column(name = "CLICK_COUNT")
    public Long getClickCount() {
        return clickCount;
    }

    public void setClickCount(Long clickCount) {
        this.clickCount = clickCount;
    }
}
