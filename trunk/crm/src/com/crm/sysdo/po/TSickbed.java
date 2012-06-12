package com.crm.sysdo.po;

/**
 * TSickbed entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TSickbed implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickbed;
	private String spec;

	// Constructors

	/** default constructor */
	public TSickbed() {
	}

	/** full constructor */
	public TSickbed(String sickbed, String spec) {
		this.sickbed = sickbed;
		this.spec = spec;
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

	public String getSpec() {
		return this.spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

}