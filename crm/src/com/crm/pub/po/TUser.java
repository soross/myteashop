package com.crm.pub.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TUser generated by MyEclipse Persistence Tools
 */

public class TUser implements java.io.Serializable {

	// Fields

	private String userid;//�û�ID

	private String username;//�û���

	private String password;//����

	private String sex;//�Ա�

	private String homeplace;//����

	private String code;//����֤����

	private String tel;//�绰����

	private String email;//E����MAIL

	private String phone;//�ֻ�

	private String address;//��ַ

	private String jobno;//����

	private Date opendate;//��������

	private String slock;//�Ƿ񶳽�

	//���ý�ɫ
	private Set<TRole>  roles = new HashSet<TRole>();

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** full constructor */
	public TUser(String username, String password, String sex,
			String homeplace, String code, String tel, String email,
			String phone, String address, String jobno, Date opendate,
			String slock) {
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.homeplace = homeplace;
		this.code = code;
		this.tel = tel;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.jobno = jobno;
		this.opendate = opendate;
		this.slock = slock;
	}

	// Property accessors

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getHomeplace() {
		return this.homeplace;
	}

	public void setHomeplace(String homeplace) {
		this.homeplace = homeplace;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJobno() {
		return this.jobno;
	}

	public void setJobno(String jobno) {
		this.jobno = jobno;
	}

	public Date getOpendate() {
		return this.opendate;
	}

	public void setOpendate(Date opendate) {
		this.opendate = opendate;
	}

	public String getSlock() {
		return this.slock;
	}

	public void setSlock(String slock) {
		this.slock = slock;
	}

	public Set<TRole> getRoles() {
		return roles;
	}

	public void setRoles(Set<TRole> roles) {
		this.roles = roles;
	}

}