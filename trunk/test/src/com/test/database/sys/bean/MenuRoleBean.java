package com.test.database.sys.bean;

import java.io.Serializable;

public class MenuRoleBean implements Serializable
{
	private String MR_MenuId;
	
	private String MR_RoleId;

	public String getMR_MenuId() {
		return MR_MenuId;
	}

	public void setMR_MenuId(String menuId) {
		MR_MenuId = menuId;
	}

	public String getMR_RoleId() {
		return MR_RoleId;
	}

	public void setMR_RoleId(String roleId) {
		MR_RoleId = roleId;
	}

}
