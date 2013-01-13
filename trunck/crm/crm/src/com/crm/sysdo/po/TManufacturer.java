package com.crm.sysdo.po;

import java.util.Date;

/**
 * TManufacturer entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TManufacturer implements java.io.Serializable {

	// Fields

	private Long id;
	private String mfname;
	private String pinyin;
	private String wubi;
	private String linkman;
	private String tel;
	private String fax;
	private String address;
	private String zip;
	private String remark;
	private String state;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TManufacturer() {
	}

	/** full constructor */
	public TManufacturer(String mfname, String pinyin, String wubi,
			String linkman, String tel, String fax, String address, String zip,
			String remark, String state, Date createDate) {
		this.mfname = mfname;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.linkman = linkman;
		this.tel = tel;
		this.fax = fax;
		this.address = address;
		this.zip = zip;
		this.remark = remark;
		this.state = state;
		this.createDate = createDate;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMfname() {
		return this.mfname;
	}

	public void setMfname(String mfname) {
		this.mfname = mfname;
	}

	public String getPinyin() {
		return this.pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
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

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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

}