/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.club.struts.form;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 11-04-2009
 * 
 * XDoclet definition:
 * @struts.form name="unionForm"
 */
public class UnionForm extends ActionForm {
	private Long unionbId;//商家ID

	private String unionbType;//合作伙伴类型

	private String VLevel;//级别
	private String level;//中间级别(页面)

	private String fullName;//全称

	private String shortName;//简称

	private String property;//性质

	private String unionbAddr;//地址

	private String workstatus;//经营状况

	private String corporation;//法人

	private String corSex;//性别

	private String corJobs;//职位

	private Long empCount;//员工数量

	private Long regmoney;//注册资金

	private String linkman;//联系人

	private String  tel;//联系方式

	private String islogout;//是否注销

	private String ischeck;//审核状况
	
	private Long logid;//日志ID

	private String ulevel;//级别

	private String worker;//操作人

	private Date worktime;//操作时间
	private String starttime;
	private String  endtime;
	private String[] sel;
	public String[] getSel() {
		return sel;
	}

	public void setSel(String[] sel) {
		this.sel = sel;
	}

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
		this.corSex="0";
	}

	

	public String getCorJobs() {
		return corJobs;
	}

	public void setCorJobs(String corJobs) {
		this.corJobs = corJobs;
	}

	public String getCorporation() {
		return corporation;
	}

	public void setCorporation(String corporation) {
		this.corporation = corporation;
	}

	public String getCorSex() {
		return corSex;
	}

	public void setCorSex(String corSex) {
		this.corSex = corSex;
	}

	public Long getEmpCount() {
		return empCount;
	}

	public void setEmpCount(Long empCount) {
		this.empCount = empCount;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getIscheck() {
		return ischeck;
	}

	public void setIscheck(String ischeck) {
		this.ischeck = ischeck;
	}

	public String getIslogout() {
		return islogout;
	}

	public void setIslogout(String islogout) {
		this.islogout = islogout;
	}

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public Long getLogid() {
		return logid;
	}

	public void setLogid(Long logid) {
		this.logid = logid;
	}

	public String getProperty() {
		return property;
	}

	public void setProperty(String property) {
		this.property = property;
	}

	public Long getRegmoney() {
		return regmoney;
	}

	public void setRegmoney(Long regmoney) {
		this.regmoney = regmoney;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getUlevel() {
		return ulevel;
	}

	public void setUlevel(String ulevel) {
		this.ulevel = ulevel;
	}

	public String getUnionbAddr() {
		return unionbAddr;
	}

	public void setUnionbAddr(String unionbAddr) {
		this.unionbAddr = unionbAddr;
	}

	public Long getUnionbId() {
		return unionbId;
	}

	public void setUnionbId(Long unionbId) {
		this.unionbId = unionbId;
	}

	public String getUnionbType() {
		return unionbType;
	}

	public void setUnionbType(String unionbType) {
		this.unionbType = unionbType;
	}

	public String getVLevel() {
		return VLevel;
	}

	public void setVLevel(String level) {
		VLevel = level;
	}

	public String getWorker() {
		return worker;
	}

	public void setWorker(String worker) {
		this.worker = worker;
	}

	public String getWorkstatus() {
		return workstatus;
	}

	public void setWorkstatus(String workstatus) {
		this.workstatus = workstatus;
	}

	public Date getWorktime() {
		return worktime;
	}

	public void setWorktime(Date worktime) {
		this.worktime = worktime;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
}