/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.pub.struts.form;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import com.crm.pub.po.TRole;

/**
 * MyEclipse Struts Creation date: 10-22-2009
 * 
 * XDoclet definition:
 * 
 * @struts.form name="userForm"
 */
/**
 * 用于系统用户管理的UserForm
 */
public class UserForm extends ActionForm {
	private String userid;// 用户ID

	private String username;// 用户名

	private String password;// 密码

	private String password2;// 密码

	private String sex;// 性别

	private String homeplace;// 籍贯

	private String code;// 身份证号码

	private String tel;// 电话号码

	private String email;// E——MAIL

	private String phone;// 手机

	private String address;// 地址

	private String jobno;// 工号

	private Date opentime;// 开户日期

	private String isslock;// 是否冻结

	private String[] trole;// 角色
	private String cuserid;// 查询的用户ID
	private String cusername;// 查询的用户名
	private String chome;// 查询的籍贯
	private String newpass;// 新密码
	private String chpass;// 确认密码

	public String getChome() {
		return chome;
	}

	public void setChome(String chome) {
		this.chome = chome;
	}

	public String getCuserid() {
		return cuserid;
	}

	public void setCuserid(String cuserid) {
		this.cuserid = cuserid;
	}

	public String getCusername() {
		return cusername;
	}

	public void setCusername(String cusername) {
		this.cusername = cusername;
	}

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;
	}

	/**
	 * Method reset
	 * 
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.sex = "0";

	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHomeplace() {
		return homeplace;
	}

	public void setHomeplace(String homeplace) {
		this.homeplace = homeplace;
	}

	public String getJobno() {
		return jobno;
	}

	public void setJobno(String jobno) {
		this.jobno = jobno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getIsslock() {
		return isslock;
	}

	public void setIsslock(String isslock) {
		this.isslock = isslock;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String[] getTrole() {
		return trole;
	}

	public void setTrole(String[] trole) {
		this.trole = trole;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getOpentime() {
		return opentime;
	}

	public void setOpentime(Date opentime) {
		this.opentime = opentime;
	}

	public String getChpass() {
		return chpass;
	}

	public void setChpass(String chpass) {
		this.chpass = chpass;
	}

	public String getNewpass() {
		return newpass;
	}

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}
}