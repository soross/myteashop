package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TToolinfo;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ToolinfoDao {
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
	public Boolean addToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ɾ�������ֵ�
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ���������ֵ�
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TToolinfo seachToolinfo(Long id);
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonToolinfo(Long pid);
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentToolinfo(PageUtil pageUtil);
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageToolinfo(Long pid);
}
