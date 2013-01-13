package com.crm.per.dao;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.per.po.TLog;

public interface Permission {
	
	//验证是否具备权限
	public boolean checkPermission(String userid,String id);
	
	//取得子权限列表
	public List getSonPerList(String id);
	
	//日志
	public void addLog(TLog log);
	
	//登入日志
	public List<TLog> queryLoginLog(TLog log, final PageUtil pageutil);
	
	//登入日志统计
	public int queryLoginLogCount(TLog log);
	
	//删除登入日志
	public Boolean deleteLoginLog(TLog log);
	
	//删除登入日志
	public Boolean deleteLoginLogByMonth(String mon);
	
}
