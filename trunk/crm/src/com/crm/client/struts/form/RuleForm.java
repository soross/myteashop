/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.client.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/**
 * MyEclipse Struts Creation date: 10-29-2009
 * 
 * XDoclet definition:
 * 
 * @struts.form name="ruleForm"
 */
public class RuleForm extends ActionForm {
	/*
	 * Generated Methods
	 */

	/**
	 * �����
	 */
	private Long id;

	private String rulename;

	private Long brand;

	private Long base;

	private String description;

	private String islock;

	private Long pri;

	/**
	 * �������ʽ
	 */
	private Long expid;

	private String type[];

	private Long startvalue[];

	private Long endvalue[];

	private String expression[];

	/**
	 * ������־
	 */
	private Long logid;

	private String creater;

	private Date createdate;

	private String operator;

	private Date operdate;

	private String opertype;
	
	

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

	public Long getBase() {
		return base;
	}

	public void setBase(Long base) {
		this.base = base;
	}

	public Long getBrand() {
		return brand;
	}

	public void setBrand(Long brand) {
		this.brand = brand;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getExpid() {
		return expid;
	}

	public void setExpid(Long expid) {
		this.expid = expid;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIslock() {
		return islock;
	}

	public void setIslock(String islock) {
		this.islock = islock;
	}

	public Long getLogid() {
		return logid;
	}

	public void setLogid(Long logid) {
		this.logid = logid;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public Date getOperdate() {
		return operdate;
	}

	public void setOperdate(Date operdate) {
		this.operdate = operdate;
	}

	public String getOpertype() {
		return opertype;
	}

	public void setOpertype(String opertype) {
		this.opertype = opertype;
	}



	public String getRulename() {
		return rulename;
	}

	public void setRulename(String rulename) {
		this.rulename = rulename;
	}

	public Long[] getEndvalue() {
		return endvalue;
	}

	public void setEndvalue(Long[] endvalue) {
		this.endvalue = endvalue;
	}

	public String[] getExpression() {
		return expression;
	}

	public void setExpression(String[] expression) {
		this.expression = expression;
	}

	public Long[] getStartvalue() {
		return startvalue;
	}

	public void setStartvalue(Long[] startvalue) {
		this.startvalue = startvalue;
	}

	public String[] getType() {
		return type;
	}

	public void setType(String[] type) {
		this.type = type;
	}

	public Long getPri() {
		return pri;
	}

	public void setPri(Long pri) {
		this.pri = pri;
	}
}