package com.crm.per.dao;

import java.util.List;

public interface Permission {
	
	//��֤�Ƿ�߱�Ȩ��
	public boolean checkPermission(String userid,String id);
	
	//ȡ����Ȩ���б�
	public List getSonPerList(String id);
	
}
