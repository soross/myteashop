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

public class SickForm extends ActionForm implements java.io.Serializable {

	// Fields

	private Long id;
	private String code;
	private String sickname;
	private String garden;
	private String old;
	private String mobile;
	private String staff;
	private String icCardCode;
	private String state;
	private Date createDate;

	// Constructors

	/** default constructor */
	public SickForm() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getSickname() {
		return sickname;
	}

	public void setSickname(String sickname) {
		this.sickname = sickname;
	}

	public String getGarden() {
		return garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public String getOld() {
		return old;
	}

	public void setOld(String old) {
		this.old = old;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getStaff() {
		return staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}

	public String getIcCardCode() {
		return icCardCode;
	}

	public void setIcCardCode(String icCardCode) {
		this.icCardCode = icCardCode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
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
		this.state="0";
	}
}