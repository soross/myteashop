package com.crm.report.struts.bean;

import java.util.Date;

public class RegisterAmountBean {
	
	private int id;
	private String beginDate;
	private String endDate;
	private String staffid;
	private String staffname;
	private String income;
	private double feeSum;
	private int custSum;
	
	
	public RegisterAmountBean() {
		super();
	}
	public RegisterAmountBean(int id, String beginDate, String endDate,
			double feeSum, int custSum) {
		super();
		this.id = id;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.feeSum = feeSum;
		this.custSum = custSum;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(String beginDate) {
		this.beginDate = beginDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public double getFeeSum() {
		return feeSum;
	}
	public void setFeeSum(double feeSum) {
		this.feeSum = feeSum;
	}
	public int getCustSum() {
		return custSum;
	}
	public void setCustSum(int custSum) {
		this.custSum = custSum;
	}
	public String getStaffid() {
		return staffid;
	}
	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}
	public String getStaffname() {
		return staffname;
	}
	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	

}
