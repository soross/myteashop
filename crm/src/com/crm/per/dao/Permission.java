package com.crm.per.dao;

import java.util.List;

import com.crm.per.po.TLog;

public interface Permission {
	
	//��֤�Ƿ�߱�Ȩ��
	public boolean checkPermission(String userid,String id);
	
	//ȡ����Ȩ���б�
	public List getSonPerList(String id);
	
	//��־
	public void addLog(TLog log);
	
}
