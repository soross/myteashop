package com.crm.sysdo.po;

import java.util.Date;

/**
 * TToolSave entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TToolSave implements java.io.Serializable {

	// Fields

	private Long id;
	private String toolname;
	private String pinyin;
	private String wubi;
	private String code;
	private String tooltype;
	private String savetype;
	private String obj;
	private String state;
	private String outmz;
	private String outzy;
	private String item;
	private String isneg;
	private String remark;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TToolSave() {
	}

	/** full constructor */
	public TToolSave(String toolname, String pinyin, String wubi, String code,
			String tooltype, String savetype, String obj, String state,
			String outmz, String outzy, String item, String isneg,
			String remark, Date createDate) {
		this.toolname = toolname;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.code = code;
		this.tooltype = tooltype;
		this.savetype = savetype;
		this.obj = obj;
		this.state = state;
		this.outmz = outmz;
		this.outzy = outzy;
		this.item = item;
		this.isneg = isneg;
		this.remark = remark;
		this.createDate = createDate;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getToolname() {
		return this.toolname;
	}

	public void setToolname(String toolname) {
		this.toolname = toolname;
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

	public String getTooltype() {
		return this.tooltype;
	}

	public void setTooltype(String tooltype) {
		this.tooltype = tooltype;
	}

	public String getSavetype() {
		return this.savetype;
	}

	public void setSavetype(String savetype) {
		this.savetype = savetype;
	}

	public String getObj() {
		return this.obj;
	}

	public void setObj(String obj) {
		this.obj = obj;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getOutmz() {
		return this.outmz;
	}

	public void setOutmz(String outmz) {
		this.outmz = outmz;
	}

	public String getOutzy() {
		return this.outzy;
	}

	public void setOutzy(String outzy) {
		this.outzy = outzy;
	}

	public String getItem() {
		return this.item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getIsneg() {
		return this.isneg;
	}

	public void setIsneg(String isneg) {
		this.isneg = isneg;
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

}