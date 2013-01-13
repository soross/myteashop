package com.crm.sysdo.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class SickbedForm extends ActionForm {

	/**
	 * πÊ‘Ú±Ì
	 */
	private Long id;
	private String sickbed;
	private String code;
	private String deptid;
	private String showindex;
	private String area;
	private String leveltype;
	private Double price;
	private String pinyin;
	private String wubi;
	private String hospno;
	private String remark;
	private String state;
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
		this.state="0";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSickbed() {
		return sickbed;
	}

	public void setSickbed(String sickbed) {
		this.sickbed = sickbed;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDeptid() {
		return deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getShowindex() {
		return showindex;
	}

	public void setShowindex(String showindex) {
		this.showindex = showindex;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getLeveltype() {
		return leveltype;
	}

	public void setLeveltype(String leveltype) {
		this.leveltype = leveltype;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
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

	public String getHospno() {
		return hospno;
	}

	public void setHospno(String hospno) {
		this.hospno = hospno;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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

	

}
