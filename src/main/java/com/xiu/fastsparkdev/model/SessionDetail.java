package com.xiu.fastsparkdev.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

/**
 * 存储随机抽取出来的session的明细数据、top10品类的session的明细数据

 */
@Entity
@Table(name = "session_detail")
public class SessionDetail implements Serializable {
	private Long id;
	private Long taskid;
	private Long userid;
	private String sessionid;
	private Long pageid;
	private String actionTime;
	private String searchKeyword;
	private Long clickCategoryId;
	private Long clickProductId;
	private String orderCategoryIds;
	private String orderProductIds;
	private String payCategoryIds;
	private String payProductIds;

	@Id
	@Column(name = "id")
	@GeneratedValue( strategy= GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	@Column(name = "task_id")
	public Long getTaskid() {
		return taskid;
	}
	public void setTaskid(Long taskid) {
		this.taskid = taskid;
	}
	@Column(name = "user_id")
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
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
	public Long getPageid() {
		return pageid;
	}
	public void setPageid(Long pageid) {
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
	public Long getClickCategoryId() {
		return clickCategoryId;
	}
	public void setClickCategoryId(Long clickCategoryId) {
		this.clickCategoryId = clickCategoryId;
	}
	@Column(name = "click_product_id")
	public Long getClickProductId() {
		return clickProductId;
	}
	public void setClickProductId(Long clickProductId) {
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

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof SessionDetail)) return false;
		SessionDetail that = (SessionDetail) o;
		return getId() == that.getId() &&
				getTaskid() == that.getTaskid() &&
				getUserid() == that.getUserid() &&
				getPageid() == that.getPageid() &&
				getClickCategoryId() == that.getClickCategoryId() &&
				getClickProductId() == that.getClickProductId() &&
				Objects.equals(getSessionid(), that.getSessionid()) &&
				Objects.equals(getActionTime(), that.getActionTime()) &&
				Objects.equals(getSearchKeyword(), that.getSearchKeyword()) &&
				Objects.equals(getOrderCategoryIds(), that.getOrderCategoryIds()) &&
				Objects.equals(getOrderProductIds(), that.getOrderProductIds()) &&
				Objects.equals(getPayCategoryIds(), that.getPayCategoryIds()) &&
				Objects.equals(getPayProductIds(), that.getPayProductIds());
	}

	@Override
	public int hashCode() {

		return Objects.hash(getId(), getTaskid(), getUserid(), getSessionid(), getPageid(), getActionTime(), getSearchKeyword(), getClickCategoryId(), getClickProductId(), getOrderCategoryIds(), getOrderProductIds(), getPayCategoryIds(), getPayProductIds());
	}

	@Override
	public String toString() {
		return "SessionDetail{" +
				"id=" + id +
				", taskid=" + taskid +
				", userid=" + userid +
				", sessionid='" + sessionid + '\'' +
				", pageid=" + pageid +
				", actionTime='" + actionTime + '\'' +
				", searchKeyword='" + searchKeyword + '\'' +
				", clickCategoryId=" + clickCategoryId +
				", clickProductId=" + clickProductId +
				", orderCategoryIds='" + orderCategoryIds + '\'' +
				", orderProductIds='" + orderProductIds + '\'' +
				", payCategoryIds='" + payCategoryIds + '\'' +
				", payProductIds='" + payProductIds + '\'' +
				'}';
	}
}
