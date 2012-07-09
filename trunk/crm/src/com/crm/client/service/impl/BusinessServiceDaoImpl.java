package com.crm.client.service.impl;

import java.util.List;

import com.crm.client.dao.inf.BusinessDao;
import com.crm.client.dao.inf.ClientDao;
import com.crm.client.po.TClient;
import com.crm.client.po.TOperation;
import com.crm.client.po.TOperlog;
import com.crm.client.service.inf.BusinessServiceDao;
import com.crm.page.PageUtil;
import com.crm.pub.dao.inf.DataDao;

public class BusinessServiceDaoImpl implements BusinessServiceDao {
	
	private BusinessDao businessDao;
	
	private ClientDao clientDao;	
	
	
	/**
	 * ��ѯҵ���µ����в�����־
	 * 
	 * @param operlog
	 * @return
	 */
	public List searchBusinessStateLog(TOperlog operlog){
		return businessDao.searchBusinessStateLog(operlog);
		
	}
	
	/**
	 * ȡ��һ��ҵ��
	 * @param operation
	 * @return
	 */
	public List getBusiness(TOperation operation){
		return this.businessDao.getBusiness(operation);
		
	}
	
	/**
	 * ����״̬ ����ҵ��
	 * @param operation
	 * @return
	 */
	public Boolean updateBusinessState(TOperation operation){
		return this.businessDao.updateBusinessState(operation);
	}
	
	
	
	/**
	 * �����ֻ���ȡ�ÿͻ���Ϣ
	 * @return
	 */
	public TClient getClient(String phone){
		return this.clientDao.getClient(phone);
	}
	
	/**
	 * ��������ȡ�ö���
	 * @param id
	 * @return
	 */
	public TOperation getBusiness(Long id){
		return this.businessDao.getBusiness(id);
	}
	
	
	/**
	 * ȡ��ҵ������
	 * @return
	 */
	public List searchBusinessTypeList(){
		return this.businessDao.searchBusinessTypeList();		
	}
	
	/**
	 * ȡ��ҵ���б�
	 * @param operation
	 * @param pageUtil
	 * @return
	 */
	public List searchBusinessList(TOperation operation,PageUtil pageUtil){
		return this.businessDao.searchBusinessList(operation,pageUtil);
	}
	/**
	 * ȡ�ü�¼��
	 * @param operation
	 * @return
	 */
	public Integer getCount(TOperation operation){
		return this.businessDao.getCount(operation);
	}
	
	
	/**
	 * ���ݸ���IDȡ������
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonBusiness(Long pid){
		return this.businessDao.searchSonBusiness(pid);
	}
	/**
	 * ����ֻ����Ƿ����
	 * @param phone
	 * @return
	 */
	public TClient getPhoneCheck(String phone){
		return this.businessDao.getPhoneCheck(phone);
		
	}
	/**
	 * ҵ��Ǽ�
	 * @param operation
	 * @return
	 */
	public Boolean addBusiness(TOperation operation){
		return this.businessDao.addBusiness(operation);
	}
	
	
	
	
	public BusinessDao getBusinessDao() {
		return businessDao;
	}
	public void setBusinessDao(BusinessDao businessDao) {
		this.businessDao = businessDao;
	}

	public ClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}	
}
