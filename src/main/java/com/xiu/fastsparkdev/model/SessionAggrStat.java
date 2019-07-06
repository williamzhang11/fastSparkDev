package com.xiu.fastsparkdev.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * session聚合统计的结果

 */
@Entity
@Table(name = "session_aggr_stat")
public class SessionAggrStat implements Serializable{

	private long id;//主键
	private long taskid;//任务id
	private long session_count;//session数量
	private double visit_length_1s_3s_ratio;
	private double visit_length_4s_6s_ratio;
	private double visit_length_7s_9s_ratio;
	private double visit_length_10s_30s_ratio;
	private double visit_length_30s_60s_ratio;
	private double visit_length_1m_3m_ratio;
	private double visit_length_3m_10m_ratio;
	private double visit_length_10m_30m_ratio;
	private double visit_length_30m_ratio;
	private double step_length_1_3_ratio;
	private double step_length_4_6_ratio;
	private double step_length_7_9_ratio;
	private double step_length_10_30_ratio;
	private double step_length_30_60_ratio;
	private double step_length_60_ratio;

	@Id
	@Column(name = "id")
	@GeneratedValue( strategy= GenerationType.AUTO)
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Column(name = "TASK_ID")
	public long getTaskid() {
		return taskid;
	}

	public void setTaskid(long taskid) {
		this.taskid = taskid;
	}
	@Column(name = "session_count")
	public long getSession_count() {
		return session_count;
	}

	public void setSession_count(long session_count) {
		this.session_count = session_count;
	}
	@Column(name = "1s_3s")
	public double getVisit_length_1s_3s_ratio() {
		return visit_length_1s_3s_ratio;
	}

	public void setVisit_length_1s_3s_ratio(double visit_length_1s_3s_ratio) {
		this.visit_length_1s_3s_ratio = visit_length_1s_3s_ratio;
	}
	@Column(name = "4s_6s")
	public double getVisit_length_4s_6s_ratio() {
		return visit_length_4s_6s_ratio;
	}

	public void setVisit_length_4s_6s_ratio(double visit_length_4s_6s_ratio) {
		this.visit_length_4s_6s_ratio = visit_length_4s_6s_ratio;
	}
	@Column(name = "7s_9s")
	public double getVisit_length_7s_9s_ratio() {
		return visit_length_7s_9s_ratio;
	}

	public void setVisit_length_7s_9s_ratio(double visit_length_7s_9s_ratio) {
		this.visit_length_7s_9s_ratio = visit_length_7s_9s_ratio;
	}
	@Column(name = "10s_30s")
	public double getVisit_length_10s_30s_ratio() {
		return visit_length_10s_30s_ratio;
	}

	public void setVisit_length_10s_30s_ratio(double visit_length_10s_30s_ratio) {
		this.visit_length_10s_30s_ratio = visit_length_10s_30s_ratio;
	}
	@Column(name = "30s_60s")
	public double getVisit_length_30s_60s_ratio() {
		return visit_length_30s_60s_ratio;
	}

	public void setVisit_length_30s_60s_ratio(double visit_length_30s_60s_ratio) {
		this.visit_length_30s_60s_ratio = visit_length_30s_60s_ratio;
	}
	@Column(name = "1m_3m")
	public double getVisit_length_1m_3m_ratio() {
		return visit_length_1m_3m_ratio;
	}

	public void setVisit_length_1m_3m_ratio(double visit_length_1m_3m_ratio) {
		this.visit_length_1m_3m_ratio = visit_length_1m_3m_ratio;
	}
	@Column(name = "3m_10m")
	public double getVisit_length_3m_10m_ratio() {
		return visit_length_3m_10m_ratio;
	}

	public void setVisit_length_3m_10m_ratio(double visit_length_3m_10m_ratio) {
		this.visit_length_3m_10m_ratio = visit_length_3m_10m_ratio;
	}
	@Column(name = "10m_30m")
	public double getVisit_length_10m_30m_ratio() {
		return visit_length_10m_30m_ratio;
	}

	public void setVisit_length_10m_30m_ratio(double visit_length_10m_30m_ratio) {
		this.visit_length_10m_30m_ratio = visit_length_10m_30m_ratio;
	}
	@Column(name = "30m")
	public double getVisit_length_30m_ratio() {
		return visit_length_30m_ratio;
	}

	public void setVisit_length_30m_ratio(double visit_length_30m_ratio) {
		this.visit_length_30m_ratio = visit_length_30m_ratio;
	}
	@Column(name = "1_3")
	public double getStep_length_1_3_ratio() {
		return step_length_1_3_ratio;
	}

	public void setStep_length_1_3_ratio(double step_length_1_3_ratio) {
		this.step_length_1_3_ratio = step_length_1_3_ratio;
	}
	@Column(name = "4_6")
	public double getStep_length_4_6_ratio() {
		return step_length_4_6_ratio;
	}

	public void setStep_length_4_6_ratio(double step_length_4_6_ratio) {
		this.step_length_4_6_ratio = step_length_4_6_ratio;
	}
	@Column(name = "7_9")
	public double getStep_length_7_9_ratio() {
		return step_length_7_9_ratio;
	}

	public void setStep_length_7_9_ratio(double step_length_7_9_ratio) {
		this.step_length_7_9_ratio = step_length_7_9_ratio;
	}
	@Column(name = "10_30")
	public double getStep_length_10_30_ratio() {
		return step_length_10_30_ratio;
	}

	public void setStep_length_10_30_ratio(double step_length_10_30_ratio) {
		this.step_length_10_30_ratio = step_length_10_30_ratio;
	}
	@Column(name = "30_60")
	public double getStep_length_30_60_ratio() {
		return step_length_30_60_ratio;
	}

	public void setStep_length_30_60_ratio(double step_length_30_60_ratio) {
		this.step_length_30_60_ratio = step_length_30_60_ratio;
	}
	@Column(name = "60_")
	public double getStep_length_60_ratio() {
		return step_length_60_ratio;
	}

	public void setStep_length_60_ratio(double step_length_60_ratio) {
		this.step_length_60_ratio = step_length_60_ratio;
	}


}
