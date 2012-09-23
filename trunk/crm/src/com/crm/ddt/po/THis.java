package com.crm.ddt.po;

import java.util.Date;

/**
 * THis entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class THis implements java.io.Serializable {

	// Fields

	private Long id;
	private String sufferer;
	private Date createDate;
	private String hisno;
	private String name;
	private String garden;
	private Long old;
	private String ismarry;
	private Long height;
	private Long weight;
	private String job;
	private String linkman;
	private String relation;
	private String linktel;
	private Date gatherDate;
	private String address;
	private String tel;
	private String linkadd;
	private String linkaddrel;
	private Long deptid;
	private String hisstate;
	private String cycle;
	private String hislevel;
	private String xregctno;
	private String allergy;
	private String remark;
	private String state;
	private String hisNow;
	private String hisSelf;
	private String hisMarry;
	private String hisFamily;
	private String helpCheckup;
	private String hisSetup;
	private String result;
	private String dispose;
	private String photo;
	private String doctor;
	private Date hisDate;
	private Long page;

	// Constructors

	/** default constructor */
	public THis() {
	}

	/** minimal constructor */
	public THis(String job) {
		this.job = job;
	}

	/** full constructor */
	public THis(String sufferer, Date createDate, String hisno, String name,
			String garden, Long old, String ismarry, Long height, Long weight,
			String job, String linkman, String relation, String linktel,
			Date gatherDate, String address, String tel, String linkadd,
			String linkaddrel, Long deptid, String hisstate, String cycle,
			String hislevel, String xregctno, String allergy, String remark,
			String state, String hisNow, String hisSelf, String hisMarry,
			String hisFamily, String helpCheckup, String hisSetup,
			String result, String dispose, String photo, String doctor,
			Date hisDate, Long page) {
		this.sufferer = sufferer;
		this.createDate = createDate;
		this.hisno = hisno;
		this.name = name;
		this.garden = garden;
		this.old = old;
		this.ismarry = ismarry;
		this.height = height;
		this.weight = weight;
		this.job = job;
		this.linkman = linkman;
		this.relation = relation;
		this.linktel = linktel;
		this.gatherDate = gatherDate;
		this.address = address;
		this.tel = tel;
		this.linkadd = linkadd;
		this.linkaddrel = linkaddrel;
		this.deptid = deptid;
		this.hisstate = hisstate;
		this.cycle = cycle;
		this.hislevel = hislevel;
		this.xregctno = xregctno;
		this.allergy = allergy;
		this.remark = remark;
		this.state = state;
		this.hisNow = hisNow;
		this.hisSelf = hisSelf;
		this.hisMarry = hisMarry;
		this.hisFamily = hisFamily;
		this.helpCheckup = helpCheckup;
		this.hisSetup = hisSetup;
		this.result = result;
		this.dispose = dispose;
		this.photo = photo;
		this.doctor = doctor;
		this.hisDate = hisDate;
		this.page = page;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSufferer() {
		return this.sufferer;
	}

	public void setSufferer(String sufferer) {
		this.sufferer = sufferer;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getHisno() {
		return this.hisno;
	}

	public void setHisno(String hisno) {
		this.hisno = hisno;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGarden() {
		return this.garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public Long getOld() {
		return this.old;
	}

	public void setOld(Long old) {
		this.old = old;
	}

	public String getIsmarry() {
		return this.ismarry;
	}

	public void setIsmarry(String ismarry) {
		this.ismarry = ismarry;
	}

	public Long getHeight() {
		return this.height;
	}

	public void setHeight(Long height) {
		this.height = height;
	}

	public Long getWeight() {
		return this.weight;
	}

	public void setWeight(Long weight) {
		this.weight = weight;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getRelation() {
		return this.relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getLinktel() {
		return this.linktel;
	}

	public void setLinktel(String linktel) {
		this.linktel = linktel;
	}

	public Date getGatherDate() {
		return this.gatherDate;
	}

	public void setGatherDate(Date gatherDate) {
		this.gatherDate = gatherDate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLinkadd() {
		return this.linkadd;
	}

	public void setLinkadd(String linkadd) {
		this.linkadd = linkadd;
	}

	public String getLinkaddrel() {
		return this.linkaddrel;
	}

	public void setLinkaddrel(String linkaddrel) {
		this.linkaddrel = linkaddrel;
	}

	public Long getDeptid() {
		return this.deptid;
	}

	public void setDeptid(Long deptid) {
		this.deptid = deptid;
	}

	public String getHisstate() {
		return this.hisstate;
	}

	public void setHisstate(String hisstate) {
		this.hisstate = hisstate;
	}

	public String getCycle() {
		return this.cycle;
	}

	public void setCycle(String cycle) {
		this.cycle = cycle;
	}

	public String getHislevel() {
		return this.hislevel;
	}

	public void setHislevel(String hislevel) {
		this.hislevel = hislevel;
	}

	public String getXregctno() {
		return this.xregctno;
	}

	public void setXregctno(String xregctno) {
		this.xregctno = xregctno;
	}

	public String getAllergy() {
		return this.allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
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

	public String getHisNow() {
		return this.hisNow;
	}

	public void setHisNow(String hisNow) {
		this.hisNow = hisNow;
	}

	public String getHisSelf() {
		return this.hisSelf;
	}

	public void setHisSelf(String hisSelf) {
		this.hisSelf = hisSelf;
	}

	public String getHisMarry() {
		return this.hisMarry;
	}

	public void setHisMarry(String hisMarry) {
		this.hisMarry = hisMarry;
	}

	public String getHisFamily() {
		return this.hisFamily;
	}

	public void setHisFamily(String hisFamily) {
		this.hisFamily = hisFamily;
	}

	public String getHelpCheckup() {
		return this.helpCheckup;
	}

	public void setHelpCheckup(String helpCheckup) {
		this.helpCheckup = helpCheckup;
	}

	public String getHisSetup() {
		return this.hisSetup;
	}

	public void setHisSetup(String hisSetup) {
		this.hisSetup = hisSetup;
	}

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getDispose() {
		return this.dispose;
	}

	public void setDispose(String dispose) {
		this.dispose = dispose;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDoctor() {
		return this.doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public Date getHisDate() {
		return this.hisDate;
	}

	public void setHisDate(Date hisDate) {
		this.hisDate = hisDate;
	}

	public Long getPage() {
		return this.page;
	}

	public void setPage(Long page) {
		this.page = page;
	}

}