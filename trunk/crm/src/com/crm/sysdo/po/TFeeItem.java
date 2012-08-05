package com.crm.sysdo.po;

import java.math.BigDecimal;
import java.util.Date;

/**
 * TFeeItem entity. @author MyEclipse Persistence Tools
 */

public class TFeeItem implements java.io.Serializable {

	// Field

	private Long id;
	private String feeItemName;
	private Double feeItemPrice;
	private String remark;
	private Date createDate;
	private String createStaff;

	// Constructors

	/** default constructor */
	public TFeeItem() {
	}

	/** full constructor */
	public TFeeItem(String feeItemName, Double feeItemPrice, String remark,
			Date createDate, String createStaff) {
		this.feeItemName = feeItemName;
		this.feeItemPrice = feeItemPrice;
		this.remark = remark;
		this.createDate = createDate;
		this.createStaff = createStaff;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFeeItemName() {
		return this.feeItemName;
	}

	public void setFeeItemName(String feeItemName) {
		this.feeItemName = feeItemName;
	}

	public Double getFeeItemPrice() {
		return this.feeItemPrice;
	}

	public void setFeeItemPrice(Double feeItemPrice) {
		this.feeItemPrice = feeItemPrice;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreateStaff() {
		return this.createStaff;
	}

	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

}