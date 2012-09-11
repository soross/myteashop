package com.crm.sysdo.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.ToolinfoDao;
import com.crm.sysdo.po.TToolinfo;
import com.crm.sysdo.service.inf.ToolinfoServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class ToolinfoServiceDaoImpl implements ToolinfoServiceDao {

	private ToolinfoDao ToolinfoDao;

	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCount() {
		return ToolinfoDao.getCount();
	}

	/**
	 * ��������ֵ�
	 * 
	 * @param data
	 * @return
	 */
	public Boolean addToolinfo(TToolinfo Toolinfo) {
		return ToolinfoDao.addToolinfo(Toolinfo);
	}

	/**
	 * ɾ�������ֵ�
	 * 
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo) {
		return ToolinfoDao.deleteToolinfo(Toolinfo);
	}

	/**
	 * ���������ֵ�
	 * 
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo) {
		return ToolinfoDao.updateToolinfo(Toolinfo);
	}

	/**
	 * ȡ�������ֵ��б�
	 * 
	 * @return
	 */
	public List searchToolinfo(TToolinfo Toolinfo) {

		return ToolinfoDao.searchToolinfo(Toolinfo);
	}

	/**
	 * ��ѯ�����ֵ����
	 * 
	 * @param id
	 * @return
	 */
	public TToolinfo seachToolinfo(Long id) {
		return ToolinfoDao.seachToolinfo(id);
	}

	/**
	 * ���ݸ���ID��ѯС��
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonToolinfo(Long pid) {
		return null;
	}

	/**
	 * ����С���ѯ�������
	 * 
	 * @return
	 */
	public List searchParentToolinfo(PageUtil pageUtil) {

		return ToolinfoDao.searchParentToolinfo(pageUtil);
	}

	public ToolinfoDao getToolinfoDao() {
		return ToolinfoDao;
	}

	public void setToolinfoDao(ToolinfoDao ToolinfoDao) {
		this.ToolinfoDao = ToolinfoDao;
	}

	/**
	 * ����Pid��ҳ
	 * 
	 * @param pid
	 * @return
	 */
	public List searchPageToolinfo(Long pid) {
		return this.ToolinfoDao.searchPageToolinfo(pid);
	}

}
