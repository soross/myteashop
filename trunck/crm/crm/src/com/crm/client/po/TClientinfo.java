package com.crm.client.po;

import java.util.Date;

/**
 * TClientinfo generated by MyEclipse Persistence Tools
 */

public class TClientinfo implements java.io.Serializable {

	// Fields

	private String phone;

	private String sex;

	private Date birthday;

	private Long age;

	private String loves;

	private String familyphone;

	private String officephone;

	private String fax;

	private String email;

	private String officeaddress;

	private String trade;

	private String iscar;

	private Date marrdate;

	private String nation;

	private String country;
	
	private String num;
	
	private TClient client;

	// Constructors

	/** default constructor */
	public TClientinfo() {
	}

	/** full constructor */
	public TClientinfo(String sex, Date birthday, Long age, String loves,
			String familyphone, String officephone, String fax, String email,
			String officeaddress, String trade, String iscar,
			Date marriagedate, String nation, String country) {
		this.sex = sex;
		this.birthday = birthday;
		this.age = age;
		this.loves = loves;
		this.familyphone = familyphone;
		this.officephone = officephone;
		this.fax = fax;
		this.email = email;
		this.officeaddress = officeaddress;
		this.trade = trade;
		this.iscar = iscar;
		this.marrdate = marriagedate;
		this.nation = nation;
		this.country = country;
	}

	// Property accessors

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
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

	public String getLoves() {
		return this.loves;
	}

	public void setLoves(String loves) {
		this.loves = loves;
	}

	public String getFamilyphone() {
		return this.familyphone;
	}

	public void setFamilyphone(String familyphone) {
		this.familyphone = familyphone;
	}

	public String getOfficephone() {
		return this.officephone;
	}

	public void setOfficephone(String officephone) {
		this.officephone = officephone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOfficeaddress() {
		return this.officeaddress;
	}

	public void setOfficeaddress(String officeaddress) {
		this.officeaddress = officeaddress;
	}

	public String getTrade() {
		return this.trade;
	}

	public void setTrade(String trade) {
		this.trade = trade;
	}

	public String getIscar() {
		return this.iscar;
	}

	public void setIscar(String iscar) {
		this.iscar = iscar;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Date getMarrdate() {
		return marrdate;
	}

	public void setMarrdate(Date marrdate) {
		this.marrdate = marrdate;
	}

	public TClient getClient() {
		return client;
	}

	public void setClient(TClient client) {
		this.client = client;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

}