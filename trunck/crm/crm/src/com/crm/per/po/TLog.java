package com.crm.per.po;

import java.util.Date;

/**
 * TLog entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TLog implements java.io.Serializable {

	// Fields

	private Long id;
	private String action;
	private String result;
	private String content;
	private Date createDate;
	private String startCreateDate;
	private String endCreateDate;
	private String userid;
	private String username;

	// Constructors

	/** default constructor */
	public TLog() {
	}

	/** full constructor */
	public TLog(String action, String result, String content, Date createDate,
			String userid, String username) {
		this.action = action;
		this.result = result;
		this.content = content;
		this.createDate = createDate;
		this.userid = userid;
		this.username = username;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return this.createDate;
	}


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

	public String getEndCreateDate() {
		return endCreateDate;
	}

	public void setEndCreateDate(String endCreateDate) {
		this.endCreateDate = endCreateDate;
	}

	public String getStartCreateDate() {
		return startCreateDate;
	}

	public void setStartCreateDate(String startCreateDate) {
		this.startCreateDate = startCreateDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}