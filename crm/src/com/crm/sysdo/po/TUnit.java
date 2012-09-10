package com.crm.sysdo.po;

import java.util.Date;

/**
 * TUnit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TUnit implements java.io.Serializable {

	// Fields

	private Long id;
	private String unitname;
	private String remark;
	private String wubi;
	private String linkman;
	private String mobile;
	private String tel;
	private Date createDate;
	private String address;
	private String unitFlag;
	private String pinyin;
	private String fax;
	private String zip;
	private String legal;
	private String bankname;
	private String bankcode;
	private String state;

	// Constructors

	/** default constructor */
	public TUnit() {
	}

	/** full constructor */
	public TUnit(String unitname, String remark, String wubi, String linkman,
			String mobile, String tel, Date createDate, String address,
			String unitFlag, String pinyin, String fax, String zip,
			String legal, String bankname, String bankcode, String state) {
		this.unitname = unitname;
		this.remark = remark;
		this.wubi = wubi;
		this.linkman = linkman;
		this.mobile = mobile;
		this.tel = tel;
		this.createDate = createDate;
		this.address = address;
		this.unitFlag = unitFlag;
		this.pinyin = pinyin;
		this.fax = fax;
		this.zip = zip;
		this.legal = legal;
		this.bankname = bankname;
		this.bankcode = bankcode;
		this.state = state;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUnitname() {
		return this.unitname;
	}

	public void setUnitname(String unitname) {
		this.unitname = unitname;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getWubi() {
		return this.wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
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

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUnitFlag() {
		return this.unitFlag;
	}

	public void setUnitFlag(String unitFlag) {
		this.unitFlag = unitFlag;
	}

	public String getPinyin() {
		return this.pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getLegal() {
		return this.legal;
	}

	public void setLegal(String legal) {
		this.legal = legal;
	}

	public String getBankname() {
		return this.bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getBankcode() {
		return this.bankcode;
	}

	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}