package com.xiu.fastsparkdev.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 *存储按时间比例随机抽取功能抽取出来的1000个session

 */
@Entity
@Table(name = "session_random_extract")
public class SessionRandomExtract implements Serializable {
	private  long id;
	private  long taskid;
	private String sessionid; 
	private String startTime; 
	private String searchKeywords; 
	private String clickCategoryIds;
	@Id
	@Column(name = "id")
	@GeneratedValue( strategy= GenerationType.AUTO)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Column(name = "task_id")
	public long getTaskid() {
		return taskid;
	}
	public void setTaskid(long taskid) {
		this.taskid = taskid;
	}
	@Column(name = "session_id")
	public String getSessionid() {
		return sessionid;
	}
	public void setSessionid(String sessionid) {
		this.sessionid = sessionid;
	}
	@Column(name = "start_time")
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	@Column(name = "search_keywords")
	public String getSearchKeywords() {
		return searchKeywords;
	}
	public void setSearchKeywords(String searchKeywords) {
		this.searchKeywords = searchKeywords;
	}
	@Column(name = "click_category_ids")
	public String getClickCategoryIds() {
		return clickCategoryIds;
	}
	public void setClickCategoryIds(String clickCategoryIds) {
		this.clickCategoryIds = clickCategoryIds;
	}
	
	
}
