package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TToolSave;

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
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount();
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave);
	
	/**
	 * ɾ�������ֵ�
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave);
	
	/**
	 * ���������ֵ�
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchToolSave(TToolSave ToolSave);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TToolSave seachToolSave(Long id);
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonToolSave(Long pid);
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentToolSave(PageUtil pageUtil);
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageToolSave(Long pid);
}
