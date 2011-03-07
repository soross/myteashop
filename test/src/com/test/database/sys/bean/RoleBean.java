package com.test.database.sys.bean;

import java.io.Serializable;

public class RoleBean implements Serializable
{
	private String R_RoleId;
	
	private String R_RoleName;

	public String getR_RoleId() {
		return R_RoleId;
	}

	public void setR_RoleId(String roleId) {
		R_RoleId = roleId;
	}

	public String getR_RoleName() {
		return R_RoleName;
	}

	public void setR_RoleName(String roleName) {
		R_RoleName = roleName;
	}
	
	

}
