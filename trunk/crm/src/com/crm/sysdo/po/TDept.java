package com.crm.sysdo.po;

import java.util.Date;

/**
 * TPresent generated by MyEclipse Persistence Tools
 */

public class TDept implements java.io.Serializable {

	// Fields

	private Long id;

	private String deptName;
	
	private Long pid;


	// Constructors

	/** default constructor */
	public TDept() {
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getDeptName() {
		return deptName;
	}


	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}


	public Long getPid() {
		return pid;
	}


	public void setPid(Long pid) {
		this.pid = pid;
	}

	

}