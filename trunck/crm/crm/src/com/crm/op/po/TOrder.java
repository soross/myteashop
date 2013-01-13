package com.crm.op.po;

import java.util.Date;

/**
 * TOrder entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TOrder implements java.io.Serializable {

	// Fields
	private Long id;
	private Long custId;
	private Date orderTime;
	private Long doctor;
	private String mobile;
	private String state;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TOrder() {
	}

	/** full constructor */
	public TOrder(Long id, Long custId, Date orderTime, Long doctor,
			String mobile, String state, Date createDate) {
		this.id = id;
		this.custId = custId;
		this.orderTime = orderTime;
		this.doctor = doctor;
		this.mobile = mobile;
		this.state = state;
		this.createDate = createDate;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCustId() {
		return this.custId;
	}

	public void setCustId(Long custId) {
		this.custId = custId;
	}

	public Date getOrderTime() {
		return this.orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Long getDoctor() {
		return this.doctor;
	}

	public void setDoctor(Long doctor) {
		this.doctor = doctor;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}