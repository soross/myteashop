package com.crm.score.po;

/**
 * TYearScore generated by MyEclipse Persistence Tools
 */

public class TYearScore implements java.io.Serializable {

	// Fields

	private Long id;

	private String phone;

	private Long total;

	private Long change;

	private String year;

	private String vest;

	private Long balance;

	private String validtag;
	
	private String sdate;
	
	private String edate;

	// Constructors

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	/** default constructor */
	public TYearScore() {
	}

	/** full constructor */
	public TYearScore(String phone, Long total, Long change, String year,
			String vest, Long balance, String validtag) {
		this.phone = phone;
		this.total = total;
		this.change = change;
		this.year = year;
		this.vest = vest;
		this.balance = balance;
		this.validtag = validtag;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getTotal() {
		return this.total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public Long getChange() {
		return this.change;
	}

	public void setChange(Long change) {
		this.change = change;
	}

	public String getVest() {
		return this.vest;
	}

	public void setVest(String vest) {
		this.vest = vest;
	}

	public Long getBalance() {
		return this.balance;
	}

	public void setBalance(Long balance) {
		this.balance = balance;
	}

	public String getValidtag() {
		return this.validtag;
	}

	public void setValidtag(String validtag) {
		this.validtag = validtag;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

}