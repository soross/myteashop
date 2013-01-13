package com.crm.stafffee.po;

import java.util.Date;

/**
 * TStaffGetfee entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TStaffGetfee implements java.io.Serializable {

	// Fields

	private Long id;
	private String staffid;
	private String ratio;
	private String state;
	private Date createDate;
	private String createStaff;
	private String staffname;

	// Constructors

	/** default constructor */
	public TStaffGetfee() {
	}

	/** full constructor */
	public TStaffGetfee(String staffid, String ratio, String state,
			Date createDate, String createStaff, String staffname) {
		this.staffid = staffid;
		this.ratio = ratio;
		this.state = state;
		this.createDate = createDate;
		this.createStaff = createStaff;
		this.staffname = staffname;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStaffid() {
		return this.staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

	public String getRatio() {
		return this.ratio;
	}

	public void setRatio(String ratio) {
		this.ratio = ratio;
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

	public String getCreateStaff() {
		return this.createStaff;
	}

	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

	public String getStaffname() {
		return this.staffname;
	}

	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}

}