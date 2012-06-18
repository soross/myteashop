/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.group.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 11-03-2009
 * 
 * XDoclet definition:
 * @struts.form name="activityForm"
 */
public class ActivityForm extends ActionForm {
	private Long actId;

	private String actTime;
	private String startTime;
	private String endTime;

	private String actAddr;

	private String actContent;

	private String organizer;

	private Long intendCount;

	private Long factCount;

	private Long budgFees;

	private Long factFees;

	private String ischeck;
	
	private Long feesId;

	
	private String feesName;

	private String budgFee;

	private String factFee;
    private String[] sel;
	/** 
	 * Method validate
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
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	public String getActAddr() {
		return actAddr;
	}

	public void setActAddr(String actAddr) {
		this.actAddr = actAddr;
	}

	public String getActContent() {
		return actContent;
	}

	public void setActContent(String actContent) {
		this.actContent = actContent;
	}

	public Long getActId() {
		return actId;
	}

	public void setActId(Long actId) {
		this.actId = actId;
	}

	

	

	public String getActTime() {
		return actTime;
	}

	public void setActTime(String actTime) {
		this.actTime = actTime;
	}

	public Long getBudgFees() {
		return budgFees;
	}

	public void setBudgFees(Long budgFees) {
		this.budgFees = budgFees;
	}

	public Long getFactCount() {
		return factCount;
	}

	public void setFactCount(Long factCount) {
		this.factCount = factCount;
	}

	

	public Long getFactFees() {
		return factFees;
	}

	public void setFactFees(Long factFees) {
		this.factFees = factFees;
	}

	public Long getFeesId() {
		return feesId;
	}

	public void setFeesId(Long feesId) {
		this.feesId = feesId;
	}

	

	public Long getIntendCount() {
		return intendCount;
	}

	public void setIntendCount(Long intendCount) {
		this.intendCount = intendCount;
	}

	

	public String getIscheck() {
		return ischeck;
	}

	public void setIscheck(String ischeck) {
		this.ischeck = ischeck;
	}

	public String getOrganizer() {
		return organizer;
	}

	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String[] getSel() {
		return sel;
	}

	public void setSel(String[] sel) {
		this.sel = sel;
	}

	public String getBudgFee() {
		return budgFee;
	}

	public void setBudgFee(String budgFee) {
		this.budgFee = budgFee;
	}

	public String getFactFee() {
		return factFee;
	}

	public void setFactFee(String factFee) {
		this.factFee = factFee;
	}

	public String getFeesName() {
		return feesName;
	}

	public void setFeesName(String feesName) {
		this.feesName = feesName;
	}

	
}