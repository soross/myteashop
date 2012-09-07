package com.crm.sysdo.po;

import java.util.Date;

/**
 * TStaff entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TStaff implements java.io.Serializable {

	// Fields

	private Long id;
	private String staffname;
	private String sex;
	private String pinyin;
	private String wubi;
	private String deptid;
	private String nation;
	private String birthadd;
	private String idcode;
	private String remark;
	private String state;
	private Date createDate;
	private String isdoctor;
	private String isnurse;
	private String ismt;
	private String isop;
	private String ispre;
	private String isapp;
	private Date birthday;
	private Long age;
	private String ismarry;
	private String polstate;
	private String email;
	private String tel;
	private String mobile;
	private Date workdate;
	private Long workage;
	private Date indate;
	private Long inage;
	private String collage;
	private String major;
	private String job;
	private String jobtitle;
	private String address;

	// Constructors

	/** default constructor */
	public TStaff() {
	}

	/** full constructor */
	public TStaff(String staffname, String sex, String pinyin, String wubi,
			String deptid, String nation, String birthadd, String idcode,
			String remark, String state, Date createDate, String isdoctor,
			String isnurse, String ismt, String isop, String ispre,
			Date birthday, Long age, String ismarry, String polstate,
			String email, String tel, String mobile, Date workdate,
			Long workage, Date indate, Long inage, String collage,
			String major, String job, String jobtitle, String address,String isapp) {
		this.staffname = staffname;
		this.sex = sex;
		this.pinyin = pinyin;
		this.wubi = wubi;
		this.deptid = deptid;
		this.nation = nation;
		this.birthadd = birthadd;
		this.idcode = idcode;
		this.remark = remark;
		this.state = state;
		this.createDate = createDate;
		this.isdoctor = isdoctor;
		this.isnurse = isnurse;
		this.ismt = ismt;
		this.isop = isop;
		this.ispre = ispre;
		this.birthday = birthday;
		this.age = age;
		this.ismarry = ismarry;
		this.polstate = polstate;
		this.email = email;
		this.tel = tel;
		this.mobile = mobile;
		this.workdate = workdate;
		this.workage = workage;
		this.indate = indate;
		this.inage = inage;
		this.collage = collage;
		this.major = major;
		this.job = job;
		this.jobtitle = jobtitle;
		this.address = address;
		this.isapp = isapp;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStaffname() {
		return this.staffname;
	}

	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPinyin() {
		return this.pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getWubi() {
		return this.wubi;
	}

	public void setWubi(String wubi) {
		this.wubi = wubi;
	}

	public String getDeptid() {
		return this.deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getBirthadd() {
		return this.birthadd;
	}

	public void setBirthadd(String birthadd) {
		this.birthadd = birthadd;
	}

	public String getIdcode() {
		return this.idcode;
	}

	public void setIdcode(String idcode) {
		this.idcode = idcode;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getIsdoctor() {
		return this.isdoctor;
	}

	public void setIsdoctor(String isdoctor) {
		this.isdoctor = isdoctor;
	}

	public String getIsnurse() {
		return this.isnurse;
	}

	public void setIsnurse(String isnurse) {
		this.isnurse = isnurse;
	}

	public String getIsmt() {
		return this.ismt;
	}

	public void setIsmt(String ismt) {
		this.ismt = ismt;
	}

	public String getIsop() {
		return this.isop;
	}

	public void setIsop(String isop) {
		this.isop = isop;
	}

	public String getIspre() {
		return this.ispre;
	}

	public void setIspre(String ispre) {
		this.ispre = ispre;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Long getAge() {
		return this.age;
	}

	public void setAge(Long age) {
		this.age = age;
	}

	public String getIsmarry() {
		return this.ismarry;
	}

	public void setIsmarry(String ismarry) {
		this.ismarry = ismarry;
	}

	public String getPolstate() {
		return this.polstate;
	}

	public void setPolstate(String polstate) {
		this.polstate = polstate;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Date getWorkdate() {
		return this.workdate;
	}

	public void setWorkdate(Date workdate) {
		this.workdate = workdate;
	}

	public Long getWorkage() {
		return this.workage;
	}

	public void setWorkage(Long workage) {
		this.workage = workage;
	}

	public Date getIndate() {
		return this.indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	public Long getInage() {
		return this.inage;
	}

	public void setInage(Long inage) {
		this.inage = inage;
	}

	public String getCollage() {
		return this.collage;
	}

	public void setCollage(String collage) {
		this.collage = collage;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getJobtitle() {
		return this.jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIsapp() {
		return isapp;
	}

	public void setIsapp(String isapp) {
		this.isapp = isapp;
	}

}