package com.crm.query.po;

import java.util.Date;

/**
 * THarm entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class THarm implements java.io.Serializable {

	// Fields

	private Long id;
	private String harmcode;
	private String harmname;
	private String pinyin;
	private String wubi;
	private String code;
	private String state;
	private Date createDate;
	private String remark;

	// Constructors

	/** default constructor */
	public THarm() {
	}

	/** full constructor */
	public THarm(String harmcode, String harmname, String pinyin, String wubi,
			String code, String state, Date createDate, String remark) {
		this.harmcode = harmcode;
		this.harmname = harmname;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.code = code;
		this.state = state;
		this.createDate = createDate;
		this.remark = remark;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHarmcode() {
		return this.harmcode;
	}

	public void setHarmcode(String harmcode) {
		this.harmcode = harmcode;
	}

	public String getHarmname() {
		return this.harmname;
	}

	public void setHarmname(String harmname) {
		this.harmname = harmname;
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

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}