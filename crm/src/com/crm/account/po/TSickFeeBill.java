package com.crm.account.po;

import java.util.Date;

/**
 * TSickFeeBill entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TSickFeeBill implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickid;
	private String billtype;
	private Double totlefee;
	private Double fee;
	private String feeremark;
	private Date createDate;
	private String flag;
	private String remark;
	private String staffid;

	// Constructors

	/** default constructor */
	public TSickFeeBill() {
	}

	/** full constructor */
	public TSickFeeBill(String sickid, String billtype, Double totlefee,
			Double fee, String feeremark, Date createDate, String flag,
			String remark, String staffid) {
		this.sickid = sickid;
		this.billtype = billtype;
		this.totlefee = totlefee;
		this.fee = fee;
		this.feeremark = feeremark;
		this.createDate = createDate;
		this.flag = flag;
		this.remark = remark;
		this.staffid = staffid;
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

	public String getBilltype() {
		return this.billtype;
	}

	public void setBilltype(String billtype) {
		this.billtype = billtype;
	}

	public Double getTotlefee() {
		return this.totlefee;
	}

	public void setTotlefee(Double totlefee) {
		this.totlefee = totlefee;
	}

	public Double getFee() {
		return this.fee;
	}

	public void setFee(Double fee) {
		this.fee = fee;
	}

	public String getFeeremark() {
		return this.feeremark;
	}

	public void setFeeremark(String feeremark) {
		this.feeremark = feeremark;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getFlag() {
		return this.flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getStaffid() {
		return this.staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

}