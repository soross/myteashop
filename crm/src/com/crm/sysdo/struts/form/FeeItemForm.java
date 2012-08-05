package com.crm.sysdo.struts.form;



import org.apache.struts.action.ActionForm;

public class FeeItemForm extends ActionForm{
	
	private Long id;
	private String feeItemName;
	private Double feeItemPrice;
	private String remark;
	private String createDate;
	private String createStaff;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFeeItemName() {
		return feeItemName;
	}
	public void setFeeItemName(String feeItemName) {
		this.feeItemName = feeItemName;
	}
	public Double getFeeItemPrice() {
		return feeItemPrice;
	}
	public void setFeeItemPrice(Double feeItemPrice) {
		this.feeItemPrice = feeItemPrice;
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
	public String getCreateStaff() {
		return createStaff;
	}
	public void setCreateStaff(String createStaff) {
		this.createStaff = createStaff;
	}

}
