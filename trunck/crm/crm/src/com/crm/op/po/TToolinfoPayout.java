package com.crm.op.po;

/**
 * TToolinfoPayout entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TToolinfoPayout implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickid;
	private String toolinfoid;
	private String staffid;
	private String payoutnum;
	private String chargingprice;
	private String chargingstaff;
	private String payprice;
	private String paystaff;
	private String returnnum;

	// Constructors

	public String getChargingprice() {
		return chargingprice;
	}

	public void setChargingprice(String chargingprice) {
		this.chargingprice = chargingprice;
	}

	public String getChargingstaff() {
		return chargingstaff;
	}

	public void setChargingstaff(String chargingstaff) {
		this.chargingstaff = chargingstaff;
	}

	public String getPayprice() {
		return payprice;
	}

	public void setPayprice(String payprice) {
		this.payprice = payprice;
	}

	public String getPaystaff() {
		return paystaff;
	}

	public void setPaystaff(String paystaff) {
		this.paystaff = paystaff;
	}

	public String getReturnnum() {
		return returnnum;
	}

	public void setReturnnum(String returnnum) {
		this.returnnum = returnnum;
	}

	/** default constructor */
	public TToolinfoPayout() {
	}

	/** full constructor */
	public TToolinfoPayout(String sickid, String toolinfoid, String staffid,
			String payoutnum) {
		this.sickid = sickid;
		this.toolinfoid = toolinfoid;
		this.staffid = staffid;
		this.payoutnum = payoutnum;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSickid() {
		return this.sickid;
	}

	public void setSickid(String sickid) {
		this.sickid = sickid;
	}

	public String getToolinfoid() {
		return this.toolinfoid;
	}

	public void setToolinfoid(String toolinfoid) {
		this.toolinfoid = toolinfoid;
	}

	public String getStaffid() {
		return this.staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

	public String getPayoutnum() {
		return this.payoutnum;
	}

	public void setPayoutnum(String payoutnum) {
		this.payoutnum = payoutnum;
	}

}