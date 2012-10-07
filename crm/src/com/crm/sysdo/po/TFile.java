package com.crm.sysdo.po;

import java.util.Date;

/**
 * TFile entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TFile implements java.io.Serializable {

	// Fields

	private Long id;
	private String filename;
	private String filepath;
	private Date createDate;
	private String sickid;
	private String filetype;

	// Constructors

	/** default constructor */
	public TFile() {
	}

	/** full constructor */
	public TFile(String filename, String filepath, Date createDate,
			String sickid, String filetype) {
		this.filename = filename;
		this.filepath = filepath;
		this.createDate = createDate;
		this.sickid = sickid;
		this.filetype = filetype;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getSickid() {
		return this.sickid;
	}

	public void setSickid(String sickid) {
		this.sickid = sickid;
	}

	public String getFiletype() {
		return this.filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

}