package com.xiu.fastsparkdev.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 存储随机抽取出来的session的明细数据、top10品类的session的明细数据

 */
@Entity
@Table(name = "session_detail")
public class SessionDetail implements Serializable {
	private long id;
	private long taskid;
	private long userid;
	private String sessionid;
	private long pageid;
	private String actionTime;
	private String searchKeyword;
	private long clickCategoryId;
	private long clickProductId;
	private String orderCategoryIds;
	private String orderProductIds;
	private String payCategoryIds;
	private String payProductIds;

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
	@Column(name = "user_id")
	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
	}
	@Column(name = "session_id")
	public String getSessionid() {
		return sessionid;
	}
	public void setSessionid(String sessionid) {
		this.sessionid = sessionid;
	}
	@Column(name = "page_id")
	public long getPageid() {
		return pageid;
	}
	public void setPageid(long pageid) {
		this.pageid = pageid;
	}
	@Column(name = "action_time")
	public String getActionTime() {
		return actionTime;
	}
	public void setActionTime(String actionTime) {
		this.actionTime = actionTime;
	}
	@Column(name = "click_category_id")
	public long getClickCategoryId() {
		return clickCategoryId;
	}
	public void setClickCategoryId(long clickCategoryId) {
		this.clickCategoryId = clickCategoryId;
	}
	@Column(name = "click_product_id")
	public long getClickProductId() {
		return clickProductId;
	}
	public void setClickProductId(long clickProductId) {
		this.clickProductId = clickProductId;
	}
	@Column(name = "search_keyword")
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	@Column(name = "order_category_ids")
	public String getOrderCategoryIds() {
		return orderCategoryIds;
	}
	public void setOrderCategoryIds(String orderCategoryIds) {
		this.orderCategoryIds = orderCategoryIds;
	}
	@Column(name = "order_product_ids")
	public String getOrderProductIds() {
		return orderProductIds;
	}
	public void setOrderProductIds(String orderProductIds) {
		this.orderProductIds = orderProductIds;
	}
	@Column(name = "pay_category_ids")
	public String getPayCategoryIds() {
		return payCategoryIds;
	}
	public void setPayCategoryIds(String payCategoryIds) {
		this.payCategoryIds = payCategoryIds;
	}
	@Column(name = "pay_product_ids")
	public String getPayProductIds() {
		return payProductIds;
	}
	public void setPayProductIds(String payProductIds) {
		this.payProductIds = payProductIds;
	}
	

}
