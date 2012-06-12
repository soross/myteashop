package com.crm.client.dao.inf;

import java.util.List;

import com.crm.client.po.TClient;
import com.crm.client.po.TOperation;
import com.crm.client.po.TOperlog;
import com.crm.page.PageUtil;

public interface BusinessDao {
	
	/**
	 * ��ѯҵ���µ����в�����־
	 * 
	 * @param operlog
	 * @return
	 */
	public List searchBusinessStateLog(TOperlog operlog);
	/**
	 * ����״̬ ����ҵ��
	 * @param operation
	 * @return
	 */
	public Boolean updateBusinessState(TOperation operation);
	/**
	 * ��������ȡ�ö���
	 * @param id
	 * @return
	 */
	public List getBusiness(TOperation operation);
	/**
	 * ��������ȡ�ö���
	 * @param id
	 * @return
	 */
	public TOperation getBusiness(Long id);
	/**
	 * ȡ��ҵ������
	 * @return
	 */
	public List searchBusinessTypeList();
	/**
	 * ȡ��ҵ���б�
	 * @param operation
	 * @param pageUtil
	 * @return
	 */
	public List searchBusinessList(TOperation operation,PageUtil pageUtil);
	
	/**
	 * ȡ�ü�¼��
	 * @param operation
	 * @return
	 */
	public Integer getCount(TOperation operation);
	/**
	 * ���ݸ���IDȡ������
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonBusiness(Long pid);
	/**
	 * ����ֻ����Ƿ����
	 * @param phone
	 * @return
	 */
	public TClient getPhoneCheck(String phone);
	/**
	 * ҵ��Ǽ�
	 * @param operation
	 * @return
	 */
	public Boolean addBusiness(TOperation operation);
}
