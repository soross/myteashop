package com.crm.client.service.inf;

import java.util.List;

import org.jboss.logging.filter.TCLFilter;

import com.crm.client.po.TClient;
import com.crm.client.po.TOperation;
import com.crm.client.po.TOperlog;
import com.crm.page.PageUtil;

public interface BusinessServiceDao {	
	
	/**
	 * 查询业务下的所有操作日志
	 * 
	 * @param operlog
	 * @return
	 */
	public List searchBusinessStateLog(TOperlog operlog);
	
	/**
	 * 取得一个业务
	 * @param operation
	 * @return
	 */
	public List getBusiness(TOperation operation);
	
	/**
	 * 更新状态 处理业务
	 * @param operation
	 * @return
	 */
	public Boolean updateBusinessState(TOperation operation);
	
	/**
	 * 根据手机号取得客户信息
	 * @return
	 */
	public TClient getClient(String phone);
	/**
	 * 根据主键取得对象
	 * @param id
	 * @return
	 */
	public TOperation getBusiness(Long id);
	
	/**
	 * 取得业务类型
	 * @return
	 */
	public List searchBusinessTypeList();
	
	/**
	 * 取得业务列表
	 * @param operation
	 * @param pageUtil
	 * @return
	 */
	public List searchBusinessList(TOperation operation,PageUtil pageUtil);
	
	/**
	 * 取得记录数
	 * @param operation
	 * @return
	 */
	public Integer getCount(TOperation operation);
	/**
	 * 根据父类ID取得子类
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonBusiness(Long pid);
	
	/**
	 * 检查手机号是否存在
	 * @param phone
	 * @return
	 */
	public TClient getPhoneCheck(String phone);
	
	/**
	 * 业务登记
	 * @param operation
	 * @return
	 */
	public Boolean addBusiness(TOperation operation);
}
