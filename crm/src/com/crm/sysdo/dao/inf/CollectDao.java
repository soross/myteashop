package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface CollectDao {
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount();
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addCollect(TCollect Collect);
	
	/**
	 * ɾ�������ֵ�
	 * @param Collect
	 * @return
	 */
	public Boolean deleteCollect(TCollect Collect);
	
	/**
	 * ���������ֵ�
	 * @param Collect
	 * @return
	 */
	public Boolean updateCollect(TCollect Collect);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchCollect(TCollect Collect);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TCollect seachCollect(Long id);
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonCollect(Long pid);
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentCollect(PageUtil pageUtil);
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageCollect(Long pid);
}
