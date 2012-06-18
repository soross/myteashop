package com.crm.pub.service.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DataServiceDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount();
	/**
	 * ���������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addData(TData data);
	
	/**
	 * ɾ�������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean deleteData(TData data);
	
	/**
	 * ���������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean updateData(TData data);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchData(TData data);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TData seachData(Long id);
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid);
	
	/**
	 * ����С���ѯ�������
	 * 
	 * @return
	 */
	public List searchParentData(PageUtil pageUtil);
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageData(Long pid);

}