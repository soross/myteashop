package com.crm.client.dao.inf;

import java.util.List;

import com.crm.client.po.TClient;
import com.crm.client.po.TClientinfo;

public interface ClientInfoDao {
	
	
	/**
	 * 导出满足条件的所有客户个性资料
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(TClient client);
	/**
	 * 导出到excel的数据List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(TClient client,String str[]);
	/**
	 * 修该客户个性资料
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo);
	/**
	 * 判断是否有个性信息
	 * @param 
	 * @return
	 */
	public Integer getCountByPhone(String phone );
	
	/**
	 * 删除客户个性信息
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo);
	
	/**
	 * 添加客户个性信息
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo);
}
