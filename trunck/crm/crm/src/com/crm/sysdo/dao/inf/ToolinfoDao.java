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
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ɾ��
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ����
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TToolinfo Toolinfo);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getToolinfoList(PageUtil pageUtil ,TToolinfo Toolinfo);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TToolinfo getToolinfoById(Long id);
}
