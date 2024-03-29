package com.crm.sysdo.po;

/**
 * TPreTpl entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TPreTpl implements java.io.Serializable {

	// Fields

	private Long id;
	private String templatename;
	private String staffid;
	private String content;

	// Constructors

	/** default constructor */
	public TPreTpl() {
	}

	/** full constructor */
	public TPreTpl(String templatename, String staffid, String content) {
		this.templatename = templatename;
		this.staffid = staffid;
		this.content = content;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTemplatename() {
		return this.templatename;
	}

	public void setTemplatename(String templatename) {
		this.templatename = templatename;
	}

	public String getStaffid() {
		return this.staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}