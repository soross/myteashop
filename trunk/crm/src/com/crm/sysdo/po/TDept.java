package com.crm.sysdo.po;

import java.util.Date;

/**
 * TDept entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TDept implements java.io.Serializable {

	// Fields

	private Long id;
	private String deptName;
	private Long pid;
	private String pinyin;
	private String wubi;
	private String isreg;
	private String ismz;
	private String iszy;
	private String isxz;
	private String ishq;
	private String isother;
	private Double regfee;
	private String state;
	private String remark;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TDept() {
	}

	/** full constructor */
	public TDept(String deptName, Long pid, String pinyin, String wubi,
			String isreg, String ismz, String iszy, String isxz, String ishq,
			String isother, Double regfee, String state, String remark,
			Date createDate) {
		this.deptName = deptName;
		this.pid = pid;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.isreg = isreg;
		this.ismz = ismz;
		this.iszy = iszy;
		this.isxz = isxz;
		this.ishq = ishq;
		this.isother = isother;
		this.regfee = regfee;
		this.state = state;
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

	public String getDeptName() {
		return this.deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public Long getPid() {
		return this.pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
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

	public String getIsreg() {
		return this.isreg;
	}

	public void setIsreg(String isreg) {
		this.isreg = isreg;
	}

	public String getIsmz() {
		return this.ismz;
	}

	public void setIsmz(String ismz) {
		this.ismz = ismz;
	}

	public String getIszy() {
		return this.iszy;
	}

	public void setIszy(String iszy) {
		this.iszy = iszy;
	}

	public String getIsxz() {
		return this.isxz;
	}

	public void setIsxz(String isxz) {
		this.isxz = isxz;
	}

	public String getIshq() {
		return this.ishq;
	}

	public void setIshq(String ishq) {
		this.ishq = ishq;
	}

	public String getIsother() {
		return this.isother;
	}

	public void setIsother(String isother) {
		this.isother = isother;
	}

	public Double getRegfee() {
		return this.regfee;
	}

	public void setRegfee(Double regfee) {
		this.regfee = regfee;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
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