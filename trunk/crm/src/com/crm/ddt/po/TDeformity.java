package com.crm.ddt.po;

import java.util.Date;

/**
 * TDeformity entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TDeformity implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickid;
	private String sickname;
	private String linkman;
	private String mobile;
	private Date createDate;
	private String state;
	private String createStaff;

	// Constructors

	/** default constructor */
	public TDeformity() {
	}

	/** full constructor */
	public TDeformity(String sickid, String sickname, String linkman,
			String mobile, Date createDate, String state,String createStaff) {
		this.sickid = sickid;
		this.sickname = sickname;
		this.linkman = linkman;
		this.mobile = mobile;
		this.createDate = createDate;
		this.state = state;
		this.createStaff = createStaff;
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

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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

	public String getCreateStaff() {
		return createStaff;
	}

	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

}