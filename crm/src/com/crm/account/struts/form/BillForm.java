package com.crm.account.struts.form;

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

public class BillForm extends ActionForm implements java.io.Serializable {

	// Fields

	private Long id;
	private String sickid;
	private String billtype;
	private String totlefee;
	private String fee;
	private String feeremark;
	private String createDates;
	private String flag;
	private String remark;
	private String staffid;

	// Constructors

	/** default constructor */
	public BillForm() {
	}

	public Long getId() {
		return id;
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

	public String getBilltype() {
		return billtype;
	}

	public void setBilltype(String billtype) {
		this.billtype = billtype;
	}

	public String getTotlefee() {
		return totlefee;
	}

	public void setTotlefee(String totlefee) {
		this.totlefee = totlefee;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}

	public String getFeeremark() {
		return feeremark;
	}

	public void setFeeremark(String feeremark) {
		this.feeremark = feeremark;
	}

	public String getCreateDates() {
		return createDates;
	}

	public void setCreateDates(String createDate) {
		this.createDates = createDate;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getStaffid() {
		return staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
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
}