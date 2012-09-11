package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ToolSaveDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TToolSave;
import com.crm.sysdo.service.inf.ToolSaveServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ToolSaveServiceDaoImpl implements ToolSaveServiceDao {
	
	private ToolSaveDao ToolSaveDao;
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		return ToolSaveDao.getCount();
	}

	/**
	 * ��������ֵ�
	 * @param ToolSave
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave){		
		return ToolSaveDao.addToolSave(ToolSave);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave){		
		return ToolSaveDao.deleteToolSave(ToolSave);
	}
	
	/**
	 * ���������ֵ�
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave){
		return ToolSaveDao.updateToolSave(ToolSave);
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchToolSave(TToolSave ToolSave){
		
		return ToolSaveDao.searchToolSave(ToolSave);
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TToolSave seachToolSave(Long id){
		return ToolSaveDao.seachToolSave(id);
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonToolSave(Long pid){
		return null;
	}
	
	/**
	 * ����С���ѯ�������
	 * 
	 * @return
	 */
	public List searchParentToolSave(PageUtil pageUtil){
		
		return ToolSaveDao.searchParentToolSave(pageUtil);
	}

	public ToolSaveDao getToolSaveDao() {
		return ToolSaveDao;
	}

	public void setToolSaveDao(ToolSaveDao ToolSaveDao) {
		this.ToolSaveDao = ToolSaveDao;
	}
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageToolSave(Long pid){
		return this.ToolSaveDao.searchPageToolSave(pid);
	}

}
