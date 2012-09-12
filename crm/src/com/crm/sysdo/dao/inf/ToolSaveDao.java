package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TToolSave;
import com.crm.sysdo.po.TToolinfo;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ToolSaveDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave);
	
	/**
	 * ɾ��
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave);
	
	/**
	 * ����
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TToolSave ToolSave);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getToolSaveList(PageUtil pageUtil ,TToolSave ToolSave);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TToolSave getToolSaveById(Long id);
}
