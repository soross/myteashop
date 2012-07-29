package com.crm.sysdo.po;

import java.math.BigDecimal;
import java.util.Date;

import sun.util.logging.resources.logging;

/**
 * TUnit entity. @author MyEclipse Persistence Tools
 */

public class TUnit implements java.io.Serializable {

	// Fields

	private Long id;
	private String unitName;
	private String remark;
	private String linkMan;
	private String phone;
	private String mobile;
	private String code;
	private Date createDate;
	private String createStaff;
	private String unitFlag;

	// Constructors

	/** default constructor */
	public TUnit() {
	}

	/** full constructor */
	public TUnit(String unitName, String remark, String linkMan, String phone,
			String mobile, String code, Date createDate, String createStaff,
			String unitFlag) {
		this.unitName = unitName;
		this.remark = remark;
		this.linkMan = linkMan;
		this.phone = phone;
		this.mobile = mobile;
		this.code = code;
		this.createDate = createDate;
		this.createStaff = createStaff;
		this.unitFlag = unitFlag;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUnitName() {
		return this.unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getLinkMan() {
		return this.linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public String getUnitFlag() {
		return this.unitFlag;
	}

	public void setUnitFlag(String unitFlag) {
		this.unitFlag = unitFlag;
	}

}