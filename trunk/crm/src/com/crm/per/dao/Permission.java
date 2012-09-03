package com.crm.per.dao;

import java.util.List;

public interface Permission {
	
	//验证是否具备权限
	public boolean checkPermission(String userid,String id);
	
	//取得子权限列表
	public List getSonPerList(String id);
	
}
