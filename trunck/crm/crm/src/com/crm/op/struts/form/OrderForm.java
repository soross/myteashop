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

public class OrderForm extends ActionForm implements java.io.Serializable {

	// Fields
	private String id;
	private String custId;
	private String order;
	private String doctor;
	private String mobile;
	private String state;
	private String create;

	// Constructors

	/** default constructor */
	public OrderForm() {
	}

	/** full constructor */
	public OrderForm(String id, String custId, String order, String doctor,
			String mobile, String state, String create) {
		this.id = id;
		this.custId = custId;
		this.order = order;
		this.doctor = doctor;
		this.mobile = mobile;
		this.state = state;
		this.create = create;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	
	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getCreate() {
		return create;
	}

	public void setCreate(String create) {
		this.create = create;
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