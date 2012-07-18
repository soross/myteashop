package com.crm.op.po;

import java.util.Date;

/**
 * TRegisterFee entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TRegisterFee implements java.io.Serializable {

	// Fields

	private Long id;
	private Long orderId;
	private Double fee;
	private Date createDate;
	private Date feeDate;
	private String createStaff;
	private String feeStaff;

	// Constructors

	/** default constructor */
	public TRegisterFee() {
	}

	/** full constructor */
	public TRegisterFee(Long orderId, Double fee, Date createDate,
			Date feeDate, String createStaff, String feeStaff) {
		this.orderId = orderId;
		this.fee = fee;
		this.createDate = createDate;
		this.feeDate = feeDate;
		this.createStaff = createStaff;
		this.feeStaff = feeStaff;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Double getFee() {
		return this.fee;
	}

	public void setFee(Double fee) {
		this.fee = fee;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getFeeDate() {
		return this.feeDate;
	}

	public void setFeeDate(Date feeDate) {
		this.feeDate = feeDate;
	}

	public String getCreateStaff() {
		return this.createStaff;
	}

	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

	public String getFeeStaff() {
		return this.feeStaff;
	}

	public void setFeeStaff(String feeStaff) {
		this.feeStaff = feeStaff;
	}

}