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

public class RegForm  extends ActionForm implements java.io.Serializable {

	// Fields
	private Long id;
	private String custName;
	private String doctor;
	private Date createDate;
	private Long staff;
	private Long old;
	private String garden;

	// Constructors

	/** default constructor */
	public RegForm() {
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}





	public String getCustName() {
		return custName;
	}





	public void setCustName(String custName) {
		this.custName = custName;
	}





	public String getDoctor() {
		return doctor;
	}





	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}





	public Date getCreateDate() {
		return createDate;
	}





	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}





	public Long getStaff() {
		return staff;
	}





	public void setStaff(Long staff) {
		this.staff = staff;
	}





	public Long getOld() {
		return old;
	}





	public void setOld(Long old) {
		this.old = old;
	}





	public String getGarden() {
		return garden;
	}





	public void setGarden(String garden) {
		this.garden = garden;
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