package com.crm.sysdo.po;

import java.util.Date;

/**
 * TRegisterType entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TRegisterType implements java.io.Serializable {

	// Fields

	private Long id;
	private String regtypename;
	private String remark;
	private Date createDate;
	private String state;
	private Double price;

	// Constructors

	/** default constructor */
	public TRegisterType() {
	}

	/** full constructor */
	public TRegisterType(String regtypename, String remark, Date createDate,
			String state, Double price) {
		this.regtypename = regtypename;
		this.remark = remark;
		this.createDate = createDate;
		this.state = state;
		this.price = price;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRegtypename() {
		return this.regtypename;
	}

	public void setRegtypename(String regtypename) {
		this.regtypename = regtypename;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

}