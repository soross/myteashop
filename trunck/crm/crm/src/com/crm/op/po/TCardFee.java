package com.crm.op.po;

import java.util.Date;

/**
 * TCardFee entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TCardFee implements java.io.Serializable {

	// Fields

	private Long id;
	private String custid;
	private String custcode;
	private Date createDate;
	private Double balance;
	private Double money;
	private String remark;
	private String isprint;
	private String createstaff;

	// Constructors

	/** default constructor */
	public TCardFee() {
	}

	/** full constructor */
	public TCardFee(String custid, Date createDate, Double balance,
			Double money, String remark, String isprint, String createstaff) {
		this.custid = custid;
		this.createDate = createDate;
		this.balance = balance;
		this.money = money;
		this.remark = remark;
		this.isprint = isprint;
		this.createstaff = createstaff;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCustid() {
		return this.custid;
	}

	public void setCustid(String custid) {
		this.custid = custid;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Double getBalance() {
		return this.balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getIsprint() {
		return this.isprint;
	}

	public void setIsprint(String isprint) {
		this.isprint = isprint;
	}

	public String getCreatestaff() {
		return this.createstaff;
	}

	public void setCreatestaff(String createstaff) {
		this.createstaff = createstaff;
	}

	public String getCustcode() {
		return custcode;
	}

	public void setCustcode(String custcode) {
		this.custcode = custcode;
	}

}