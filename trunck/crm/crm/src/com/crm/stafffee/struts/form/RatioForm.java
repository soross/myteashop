package com.crm.stafffee.struts.form;

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

public class RatioForm extends ActionForm implements java.io.Serializable {

	// Fields

	private Long id;
	private String staffid;
	private String ratio;
	private String state;
	private String createDates;
	private String createStaff;
	private String staffname;

	// Constructors

	/** default constructor */
	public RatioForm() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStaffid() {
		return staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

	public String getCreateStaff() {
		return createStaff;
	}

	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

	public String getRatio() {
		return ratio;
	}

	public void setRatio(String ratio) {
		this.ratio = ratio;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCreateDates() {
		return this.createDates;
	}

	public void setCreateDates(String createDates) {
		this.createDates = createDates;
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
		this.state = "0";
	}

	public String getStaffname() {
		return staffname;
	}

	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}
}
