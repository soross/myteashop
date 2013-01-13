package com.crm.sysdo.po;

import java.util.Date;

/**
 * TSickbed entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TSickbed implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickbed;
	private String code;
	private String deptid;
	private String showindex;
	private String area;
	private String leveltype;
	private Double price;
	private String pinyin;
	private String wubi;
	private String hospno;
	private String remark;
	private String state;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TSickbed() {
	}

	/** full constructor */
	public TSickbed(String sickbed, String code, String deptid,
			String showindex, String area, String leveltype, Double price,
			String pinyin, String wubi, String hospno, String remark,
			String state, Date createDate) {
		this.sickbed = sickbed;
		this.code = code;
		this.deptid = deptid;
		this.showindex = showindex;
		this.area = area;
		this.leveltype = leveltype;
		this.price = price;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.hospno = hospno;
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

	public String getSickbed() {
		return this.sickbed;
	}

	public void setSickbed(String sickbed) {
		this.sickbed = sickbed;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDeptid() {
		return this.deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getShowindex() {
		return this.showindex;
	}

	public void setShowindex(String showindex) {
		this.showindex = showindex;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getLeveltype() {
		return this.leveltype;
	}

	public void setLeveltype(String leveltype) {
		this.leveltype = leveltype;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
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

	public String getHospno() {
		return this.hospno;
	}

	public void setHospno(String hospno) {
		this.hospno = hospno;
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