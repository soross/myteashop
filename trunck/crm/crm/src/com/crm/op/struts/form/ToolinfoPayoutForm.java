package com.crm.op.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/**
 * TCustomer entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class ToolinfoPayoutForm extends ActionForm implements
		java.io.Serializable {

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

	/** default constructor */
	public ToolinfoPayoutForm() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSickid() {
		return sickid;
	}

	public void setSickid(String sickid) {
		this.sickid = sickid;
	}

	public String getToolinfoid() {
		return toolinfoid;
	}

	public void setToolinfoid(String toolinfoid) {
		this.toolinfoid = toolinfoid;
	}

	public String getStaffid() {
		return staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

	public String getPayoutnum() {
		return payoutnum;
	}

	public void setPayoutnum(String payoutnum) {
		this.payoutnum = payoutnum;
	}

	/**
	 * Method validate
	 * 
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * Method reset
	 * 
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

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
}