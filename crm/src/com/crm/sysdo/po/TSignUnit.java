package com.crm.sysdo.po;

import java.util.Date;

/**
 * TSignUnit entity. @author MyEclipse Persistence Tools
 */
public class TSignUnit implements java.io.Serializable  {

	// Constructors
	private Long id;
	private String signunitname; 
	private String remark;
	private String wubi;
	private String linkman;
	private String mobile; 
	private String tel;
	private Date createDate;
	private String address; 
	private String signunitFlag;
	private String pinyin; 
	private String fax;
	private String zip;
	private String legal;
	private String bankname;
	private String bankcode;
	private String state;

	/** default constructor */
	public TSignUnit() {
	}

	/** full constructor */
	public TSignUnit(String signunitname, String remark, String wubi,
			String linkman, String mobile, String tel, Date createDate,
			String address, String signunitFlag, String pinyin, String fax,
			String zip, String legal, String bankname, String bankcode,
			String state) {
		this.signunitname=signunitname; 
		this.remark=remark;
		this.wubi=wubi;
		this.linkman=linkman; 
		this.mobile=mobile;
		this.tel=tel; 
		this.createDate=createDate;
		this.address=address; 
		this.signunitFlag=signunitFlag; 
		this.pinyin=pinyin;
		this.fax=fax;
		this.zip=zip; 
		this.legal=legal; 
		this.bankname=bankname; 
		this.bankcode=bankcode;
		this.state=state;

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSignunitname() {
		return signunitname;
	}

	public void setSignunitname(String signunitname) {
		this.signunitname = signunitname;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getWubi() {
		return wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
	}

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSignunitFlag() {
		return signunitFlag;
	}

	public void setSignunitFlag(String signunitFlag) {
		this.signunitFlag = signunitFlag;
	}

	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getLegal() {
		return legal;
	}

	public void setLegal(String legal) {
		this.legal = legal;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getBankcode() {
		return bankcode;
	}

	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
