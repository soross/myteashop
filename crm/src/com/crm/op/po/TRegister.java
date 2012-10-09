package com.crm.op.po;

import java.util.Date;

/**
 * TRegister entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TRegister implements java.io.Serializable {

	// Fields

	private Long id;
	private String custName;
	private String doctor;
	private Date createDate;
	private String staff;
	private Long old;
	private String garden;

	// Constructors

	/** default constructor */
	public TRegister() {
	}

	/** full constructor */
	public TRegister(String custName, String doctor, Date createDate,
			String staff, Long old, String garden) {
		this.custName = custName;
		this.doctor = doctor;
		this.createDate = createDate;
		this.staff = staff;
		this.old = old;
		this.garden = garden;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustName() {
		return this.custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getDoctor() {
		return this.doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getStaff() {
		return this.staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}

	public Long getOld() {
		return this.old;
	}

	public void setOld(Long old) {
		this.old = old;
	}

	public String getGarden() {
		return this.garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

}