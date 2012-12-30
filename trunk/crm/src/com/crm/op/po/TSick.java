package com.crm.op.po;

import java.util.Date;

/**
 * TSick entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TSick implements java.io.Serializable {

	// Fields

	private Long id;
	private String code;
	private String sickname;
	private String garden;
	private String old;
	private String mobile;
	private String staff;
	private String icCardCode;
	private String state;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TSick() {
	}

	/** full constructor */
	public TSick(String code, String sickname, String garden, String old,
			String mobile, String staff, String icCardCode, String state,
			Date createDate) {
		this.code = code;
		this.sickname = sickname;
		this.garden = garden;
		this.old = old;
		this.mobile = mobile;
		this.staff = staff;
		this.icCardCode = icCardCode;
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

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getSickname() {
		return this.sickname;
	}

	public void setSickname(String sickname) {
		this.sickname = sickname;
	}

	public String getGarden() {
		return this.garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public String getOld() {
		return this.old;
	}

	public void setOld(String old) {
		this.old = old;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getStaff() {
		return this.staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}

	public String getIcCardCode() {
		return this.icCardCode;
	}

	public void setIcCardCode(String icCardCode) {
		this.icCardCode = icCardCode;
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