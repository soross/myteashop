package com.crm.per.dao;

import java.util.List;

import com.crm.per.po.TLog;

public interface Permission {
	
	//验证是否具备权限
	public boolean checkPermission(String userid,String id);
	
	//取得子权限列表
	public List getSonPerList(String id);
	
	//日志
	public void addLog(TLog log);
	
}
