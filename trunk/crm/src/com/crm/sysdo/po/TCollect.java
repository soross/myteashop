package com.crm.sysdo.po;

import java.util.Date;

/**
 * TCollect entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TCollect implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String collectname;
	private String code;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TCollect() {
	}

	/** full constructor */
	public TCollect(String collectname, String code, Date createDate) {
		this.collectname = collectname;
		this.code = code;
		this.createDate = createDate;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCollectname() {
		return this.collectname;
	}

	public void setCollectname(String collectname) {
		this.collectname = collectname;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}