package com.crm.ddt.po;

import java.util.Date;

/**
 * TProve entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TProve implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickid;
	private String sickname;
	private String idcard;
	private String garden;
	private Date createDate;
	private String createstaff;

	// Constructors

	/** default constructor */
	public TProve() {
	}

	/** full constructor */
	public TProve(String sickid, String sickname, String idcard, String garden,
			Date createDate, String createstaff) {
		this.sickid = sickid;
		this.sickname = sickname;
		this.idcard = idcard;
		this.garden = garden;
		this.createDate = createDate;
		this.createstaff = createstaff;
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

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getGarden() {
		return this.garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreatestaff() {
		return this.createstaff;
	}

	public void setCreatestaff(String createstaff) {
		this.createstaff = createstaff;
	}

}