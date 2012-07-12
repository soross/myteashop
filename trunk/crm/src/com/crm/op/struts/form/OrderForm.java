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

public class OrderForm  extends ActionForm implements java.io.Serializable {

	// Fields
	private Long id;
	private Long custId;
	private Date orderTime;
	private Long doctor;
	private String mobile;
	private String state;
	private Date createDate;
	// Constructors

	/** default constructor */
	public OrderForm() {
	}

	
	
	
	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public Long getCustId() {
		return custId;
	}




	public void setCustId(Long custId) {
		this.custId = custId;
	}




	public Date getOrderTime() {
		return orderTime;
	}




	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}




	public Long getDoctor() {
		return doctor;
	}




	public void setDoctor(Long doctor) {
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




	public Date getCreateDate() {
		return createDate;
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
	}
}