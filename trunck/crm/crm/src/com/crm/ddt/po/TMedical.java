package com.crm.ddt.po;

import java.util.Date;

/**
 * TMedical entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TMedical implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickid;
	private String sickname;
	private Date createDate;
	private String state;
	private String mobile;
	private String createStaff;

	// Constructors

	/** default constructor */
	public TMedical() {
	}

	/** full constructor */
	public TMedical(String sickid, String sickname, Date createDate,
			String state, String mobile,String createStaff) {
		this.sickid = sickid;
		this.sickname = sickname;
		this.createDate = createDate;
		this.state = state;
		this.mobile = mobile;
		this.createStaff=createStaff;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSickid() {
		return this.sickid;
	}

	public void setSickid(String sickid) {
		this.sickid = sickid;
	}

	public String getSickname() {
		return this.sickname;
	}

	public void setSickname(String sickname) {
		this.sickname = sickname;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCreateStaff() {
		return createStaff;
	}

	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

}