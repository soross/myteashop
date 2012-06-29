package com.crm.client.po;

import java.util.Date;

/**
 * TGradelog generated by MyEclipse Persistence Tools
 */

public class TGradelog implements java.io.Serializable {

	// Fields

	private Long id;

	private String phone;

	private String checkuser;

	private Date checkdate;

	private String checkno;
	
	private Long oldgrade;
	
	private Long newgrade;
	// Constructors

	/** default constructor */
	public TGradelog() {
	}

	/** full constructor */
	public TGradelog(String phone, String checkuser, Date checkdate,
			String checkno,Long oldgrade,Long newgrade) {
		this.phone = phone;
		this.checkuser = checkuser;
		this.checkdate = checkdate;
		this.checkno = checkno;
		this.oldgrade = oldgrade;
		this.newgrade = newgrade;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCheckuser() {
		return this.checkuser;
	}

	public void setCheckuser(String checkuser) {
		this.checkuser = checkuser;
	}

	public Date getCheckdate() {
		return this.checkdate;
	}

	public void setCheckdate(Date checkdate) {
		this.checkdate = checkdate;
	}

	public String getCheckno() {
		return this.checkno;
	}

	public void setCheckno(String checkno) {
		this.checkno = checkno;
	}

	public Long getNewgrade() {
		return newgrade;
	}

	public void setNewgrade(Long newgrade) {
		this.newgrade = newgrade;
	}

	public Long getOldgrade() {
		return oldgrade;
	}

	public void setOldgrade(Long oldgrade) {
		this.oldgrade = oldgrade;
	}

}