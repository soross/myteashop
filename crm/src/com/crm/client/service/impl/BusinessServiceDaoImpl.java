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
	 * 查询业务下的所有操作日志
	 * 
	 * @param operlog
	 * @return
	 */
	public List searchBusinessStateLog(TOperlog operlog){
		return businessDao.searchBusinessStateLog(operlog);
		
	}
	
	/**
	 * 取得一个业务
	 * @param operation
	 * @return
	 */
	public List getBusiness(TOperation operation){
		return this.businessDao.getBusiness(operation);
		
	}
	
	/**
	 * 更新状态 处理业务
	 * @param operation
	 * @return
	 */
	public Boolean updateBusinessState(TOperation operation){
		return this.businessDao.updateBusinessState(operation);
	}
	
	
	
	/**
	 * 根据手机号取得客户信息
	 * @return
	 */
	public TClient getClient(String phone){
		return this.clientDao.getClient(phone);
	}
	
	/**
	 * 根据主键取得对象
	 * @param id
	 * @return
	 */
	public TOperation getBusiness(Long id){
		return this.businessDao.getBusiness(id);
	}
	
	
	/**
	 * 取得业务类型
	 * @return
	 */
	public List searchBusinessTypeList(){
		return this.businessDao.searchBusinessTypeList();		
	}
	
	/**
	 * 取得业务列表
	 * @param operation
	 * @param pageUtil
	 * @return
	 */
	public List searchBusinessList(TOperation operation,PageUtil pageUtil){
		return this.businessDao.searchBusinessList(operation,pageUtil);
	}
	/**
	 * 取得记录数
	 * @param operation
	 * @return
	 */
	public Integer getCount(TOperation operation){
		return this.businessDao.getCount(operation);
	}
	
	
	/**
	 * 根据父类ID取得子类
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonBusiness(Long pid){
		return this.businessDao.searchSonBusiness(pid);
	}
	/**
	 * 检查手机号是否存在
	 * @param phone
	 * @return
	 */
	public TClient getPhoneCheck(String phone){
		return this.businessDao.getPhoneCheck(phone);
		
	}
	/**
	 * 业务登记
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
