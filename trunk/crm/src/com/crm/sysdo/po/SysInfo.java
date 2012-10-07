package com.crm.sysdo.po;

/**
 * SysInfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class SysInfo implements java.io.Serializable {

	// Fields
	private Long id;
	private String infoName;
	private String infoContent;
	private String infoClob;

	// Constructors

	/** default constructor */
	public SysInfo() {
	}

	/** full constructor */
	public SysInfo(Long id,String infoContent, String infoClob) {
		this.id = id;
		this.infoContent = infoContent;
		this.infoClob = infoClob;
	}

	// Property accessors

	public String getInfoName() {
		return this.infoName;
	}

	public void setInfoName(String infoName) {
		this.infoName = infoName;
	}

	public String getInfoContent() {
		return this.infoContent;
	}

	public void setInfoContent(String infoContent) {
		this.infoContent = infoContent;
	}

	public String getInfoClob() {
		return this.infoClob;
	}

	public void setInfoClob(String infoClob) {
		this.infoClob = infoClob;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}