package com.crm.sysdo.struts.form;



import java.util.Date;

import org.apache.struts.action.ActionForm;

public class FeeItemForm extends ActionForm{
	
	private String id;
	private String feeitemname;
	private String remark;
	private String createDate;
	private String code;
	private String pinyin;
	private String wubi;
	private String spec;
	private String unit;
	private String pricemz;
	private String pricezy;
	private String collectid;
	private String obj;
	private String deptid;
	private String printnamemz;
	private String state;
	private String printnamezy;
	private String ybtype;
	private String ybcode;
	private String ybname;
	private String nbtype;
	private String nbcode;
	private String nbname;
	private String payself;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
}
