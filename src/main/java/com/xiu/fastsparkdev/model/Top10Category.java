package com.xiu.fastsparkdev.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 *存储按点击、下单和支付排序出来的top10品类数据
 */
@Entity
@Table(name = "top10_category")
public class Top10Category implements Serializable {
	private long id;
	private long taskid;
	private long categoryid;
	private long clickCount;
	private long orderCount;
	private long payCount;

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

	@Column(name = "category_id")
	public long getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(long categoryid) {
		this.categoryid = categoryid;
	}

	@Column(name = "click_count")
	public long getClickCount() {
		return clickCount;
	}

	public void setClickCount(long clickCount) {
		this.clickCount = clickCount;
	}

	@Column(name = "order_count")
	public long getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(long orderCount) {
		this.orderCount = orderCount;
	}

	@Column(name = "pay_count")
	public long getPayCount() {
		return payCount;
	}

	public void setPayCount(long payCount) {
		this.payCount = payCount;
	}
	
	
}
