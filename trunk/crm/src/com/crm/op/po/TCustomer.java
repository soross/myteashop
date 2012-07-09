package com.crm.op.po;

import java.util.Date;

/**
 * TCustomer entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TCustomer implements java.io.Serializable {

	// Fields

	private Long id;
	private String code;
	private String username;
	private String nameCode;
	private String country;
	private String nation;
	private String marry;
	private String garden;
	private Date birthday;
	private Long old;
	private Long weight;
	private Long height;
	private String college;
	private String work;
	private String workUnit;
	private String workCode;
	private String allergyInfo;
	private String birthAdd;
	private String birthZip;
	private String idCode;
	private String idAdd;
	private String idZip;
	private String mobile;
	private String liveAdd;
	private String liveZip;
	private String linkman;
	private String linkAdd;
	private String linkTell;
	private String payType;
	private String sickType;
	private String staff;
	private String srcInfo;
	private String icCardCode;
	private String vipType;
	private String vipCardCode;
	private String photoPath;
	private String state;
	private String safeCode;
	private String remark;
	private String cardUser;
	private Long balance;
	private Date createDate;

	// Constructors

	/** default constructor */
	public TCustomer() {
	}

	/** full constructor */
	public TCustomer(String code, String username, String nameCode,
			String country, String nation, String marry, String garden,
			Date birthday, Long old, Long weight, Long height, String college,
			String work, String workUnit, String workCode, String allergyInfo,
			String birthAdd, String birthZip, String idCode, String idAdd,
			String idZip, String mobile, String liveAdd, String liveZip,
			String linkman, String linkAdd, String linkTell, String payType,
			String sickType, String staff, String srcInfo, String icCardCode,
			String vipType, String vipCardCode, String photoPath, String state,
			String safeCode, String remark, String cardUser, Long balance,
			Date createDate) {
		this.code = code;
		this.username = username;
		this.nameCode = nameCode;
		this.country = country;
		this.nation = nation;
		this.marry = marry;
		this.garden = garden;
		this.birthday = birthday;
		this.old = old;
		this.weight = weight;
		this.height = height;
		this.college = college;
		this.work = work;
		this.workUnit = workUnit;
		this.workCode = workCode;
		this.allergyInfo = allergyInfo;
		this.birthAdd = birthAdd;
		this.birthZip = birthZip;
		this.idCode = idCode;
		this.idAdd = idAdd;
		this.idZip = idZip;
		this.mobile = mobile;
		this.liveAdd = liveAdd;
		this.liveZip = liveZip;
		this.linkman = linkman;
		this.linkAdd = linkAdd;
		this.linkTell = linkTell;
		this.payType = payType;
		this.sickType = sickType;
		this.staff = staff;
		this.srcInfo = srcInfo;
		this.icCardCode = icCardCode;
		this.vipType = vipType;
		this.vipCardCode = vipCardCode;
		this.photoPath = photoPath;
		this.state = state;
		this.safeCode = safeCode;
		this.remark = remark;
		this.cardUser = cardUser;
		this.balance = balance;
		this.createDate = createDate;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNameCode() {
		return this.nameCode;
	}

	public void setNameCode(String nameCode) {
		this.nameCode = nameCode;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getMarry() {
		return this.marry;
	}

	public void setMarry(String marry) {
		this.marry = marry;
	}

	public String getGarden() {
		return this.garden;
	}

	public void setGarden(String garden) {
		this.garden = garden;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Long getOld() {
		return this.old;
	}

	public void setOld(Long old) {
		this.old = old;
	}

	public Long getWeight() {
		return this.weight;
	}

	public void setWeight(Long weight) {
		this.weight = weight;
	}

	public Long getHeight() {
		return this.height;
	}

	public void setHeight(Long height) {
		this.height = height;
	}

	public String getCollege() {
		return this.college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getWork() {
		return this.work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public String getWorkUnit() {
		return this.workUnit;
	}

	public void setWorkUnit(String workUnit) {
		this.workUnit = workUnit;
	}

	public String getWorkCode() {
		return this.workCode;
	}

	public void setWorkCode(String workCode) {
		this.workCode = workCode;
	}

	public String getAllergyInfo() {
		return this.allergyInfo;
	}

	public void setAllergyInfo(String allergyInfo) {
		this.allergyInfo = allergyInfo;
	}

	public String getBirthAdd() {
		return this.birthAdd;
	}

	public void setBirthAdd(String birthAdd) {
		this.birthAdd = birthAdd;
	}

	public String getBirthZip() {
		return this.birthZip;
	}

	public void setBirthZip(String birthZip) {
		this.birthZip = birthZip;
	}

	public String getIdCode() {
		return this.idCode;
	}

	public void setIdCode(String idCode) {
		this.idCode = idCode;
	}

	public String getIdAdd() {
		return this.idAdd;
	}

	public void setIdAdd(String idAdd) {
		this.idAdd = idAdd;
	}

	public String getIdZip() {
		return this.idZip;
	}

	public void setIdZip(String idZip) {
		this.idZip = idZip;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getLiveAdd() {
		return this.liveAdd;
	}

	public void setLiveAdd(String liveAdd) {
		this.liveAdd = liveAdd;
	}

	public String getLiveZip() {
		return this.liveZip;
	}

	public void setLiveZip(String liveZip) {
		this.liveZip = liveZip;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getLinkAdd() {
		return this.linkAdd;
	}

	public void setLinkAdd(String linkAdd) {
		this.linkAdd = linkAdd;
	}

	public String getLinkTell() {
		return this.linkTell;
	}

	public void setLinkTell(String linkTell) {
		this.linkTell = linkTell;
	}

	public String getPayType() {
		return this.payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public String getSickType() {
		return this.sickType;
	}

	public void setSickType(String sickType) {
		this.sickType = sickType;
	}

	public String getStaff() {
		return this.staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}

	public String getSrcInfo() {
		return this.srcInfo;
	}

	public void setSrcInfo(String srcInfo) {
		this.srcInfo = srcInfo;
	}

	public String getIcCardCode() {
		return this.icCardCode;
	}

	public void setIcCardCode(String icCardCode) {
		this.icCardCode = icCardCode;
	}

	public String getVipType() {
		return this.vipType;
	}

	public void setVipType(String vipType) {
		this.vipType = vipType;
	}

	public String getVipCardCode() {
		return this.vipCardCode;
	}

	public void setVipCardCode(String vipCardCode) {
		this.vipCardCode = vipCardCode;
	}

	public String getPhotoPath() {
		return this.photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSafeCode() {
		return this.safeCode;
	}

	public void setSafeCode(String safeCode) {
		this.safeCode = safeCode;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCardUser() {
		return this.cardUser;
	}

	public void setCardUser(String cardUser) {
		this.cardUser = cardUser;
	}

	public Long getBalance() {
		return this.balance;
	}

	public void setBalance(Long balance) {
		this.balance = balance;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}