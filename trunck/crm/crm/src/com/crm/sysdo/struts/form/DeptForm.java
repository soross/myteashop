package com.crm.sysdo.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class DeptForm extends ActionForm {

	/**
	 * πÊ‘Ú±Ì
	 */
	private Long id;
	private String deptName;
	private String pinyin;
	private String wubi;
	private String isreg;
	private String ismz;
	private String iszy;
	private String isxz;
	private String ishq;
	private String isother;
	private Double regfee;
	private String state;
	private String remark;
	private Date createDate;

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
		this.isreg="0";
		this.ismz="0";
		this.iszy="0";
		this.isxz="0";
		this.ishq="0";
		this.isother="0";
		this.state="0";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getWubi() {
		return wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
	}

	public String getIsreg() {
		return isreg;
	}

	public void setIsreg(String isreg) {
		this.isreg = isreg;
	}

	public String getIsmz() {
		return ismz;
	}

	public void setIsmz(String ismz) {
		this.ismz = ismz;
	}

	public String getIszy() {
		return iszy;
	}

	public void setIszy(String iszy) {
		this.iszy = iszy;
	}

	public String getIsxz() {
		return isxz;
	}

	public void setIsxz(String isxz) {
		this.isxz = isxz;
	}

	public String getIshq() {
		return ishq;
	}

	public void setIshq(String ishq) {
		this.ishq = ishq;
	}

	public String getIsother() {
		return isother;
	}

	public void setIsother(String isother) {
		this.isother = isother;
	}

	public Double getRegfee() {
		return regfee;
	}

	public void setRegfee(Double regfee) {
		this.regfee = regfee;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}
