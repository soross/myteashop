package com.crm.client.dao.inf;

import java.util.List;

import com.crm.client.po.TClient;
import com.crm.client.po.TClientinfo;

public interface ClientInfoDao {
	
	
	/**
	 * �����������������пͻ���������
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(TClient client);
	/**
	 * ������excel������List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(TClient client,String str[]);
	/**
	 * �޸ÿͻ���������
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo);
	/**
	 * �ж��Ƿ��и�����Ϣ
	 * @param 
	 * @return
	 */
	public Integer getCountByPhone(String phone );
	
	/**
	 * ɾ���ͻ�������Ϣ
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo);
	
	/**
	 * ��ӿͻ�������Ϣ
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo);
}
