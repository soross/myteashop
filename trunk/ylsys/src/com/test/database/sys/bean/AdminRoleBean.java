package com.test.database.sys.bean;

import java.io.Serializable;

public class AdminRoleBean implements Serializable 
{
	
	private String AR_AdminId;
	
	private String AR_RoleId;

	public String getAR_AdminId() {
		return AR_AdminId;
	}

	public void setAR_AdminId(String adminId) {
		AR_AdminId = adminId;
	}

	public String getAR_RoleId() {
		return AR_RoleId;
	}

	public void setAR_RoleId(String roleId) {
		AR_RoleId = roleId;
	}
	
	

}
