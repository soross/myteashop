package com.sdkd.adminsystem.entity;

import java.io.Serializable;

/**
 * Admin entity.
 * 
 * @author 尹相兵
 */

@SuppressWarnings("serial")
public class Admin implements Serializable {

	private Integer adminId;
	private String adminName;
	private String adminPassword;

 

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(String adminName, String adminPassword) {
		this.adminName = adminName;
		this.adminPassword = adminPassword;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
 
}