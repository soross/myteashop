package com.crm.group.po;

/**
 * VipCity generated by MyEclipse Persistence Tools
 */

public class VipCity implements java.io.Serializable {

	// Fields

	private Long NId;

	private String VCode;

	private String VName;

	private String VProvince;

	// Constructors

	/** default constructor */
	public VipCity() {
	}

	/** full constructor */
	public VipCity(String VCode, String VName, String VProvince) {
		this.VCode = VCode;
		this.VName = VName;
		this.VProvince = VProvince;
	}

	// Property accessors

	public Long getNId() {
		return this.NId;
	}

	public void setNId(Long NId) {
		this.NId = NId;
	}

	public String getVCode() {
		return this.VCode;
	}

	public void setVCode(String VCode) {
		this.VCode = VCode;
	}

	public String getVName() {
		return this.VName;
	}

	public void setVName(String VName) {
		this.VName = VName;
	}

	public String getVProvince() {
		return this.VProvince;
	}

	public void setVProvince(String VProvince) {
		this.VProvince = VProvince;
	}

}