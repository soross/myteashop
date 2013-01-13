package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TSickbed;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface CollectServiceDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TCollect collect);
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
	
	public List getCollectList(final PageUtil pageUtil,final TCollect collect);
	
	

}
