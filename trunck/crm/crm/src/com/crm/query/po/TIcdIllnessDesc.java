package com.crm.query.po;

import java.util.Date;

/**
 * TIcdIllnessDesc entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TIcdIllnessDesc implements java.io.Serializable {

	// Fields

	private Long id;
	private String icdcode;
	private String icdname;
	private String pinyin;
	private String wubi;
	private String code;
	private String state;
	private Date createDate;
	private String remark;

	// Constructors

	/** default constructor */
	public TIcdIllnessDesc() {
	}

	/** full constructor */
	public TIcdIllnessDesc(String icdcode, String icdname, String pinyin,
			String wubi, String code, String state, Date createDate,
			String remark) {
		this.icdcode = icdcode;
		this.icdname = icdname;
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

	public String getIcdcode() {
		return this.icdcode;
	}

	public void setIcdcode(String icdcode) {
		this.icdcode = icdcode;
	}

	public String getIcdname() {
		return this.icdname;
	}

	public void setIcdname(String icdname) {
		this.icdname = icdname;
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