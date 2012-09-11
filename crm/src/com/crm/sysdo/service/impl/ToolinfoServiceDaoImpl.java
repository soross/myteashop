package com.crm.sysdo.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.ToolinfoDao;
import com.crm.sysdo.po.TToolinfo;
import com.crm.sysdo.service.inf.ToolinfoServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class ToolinfoServiceDaoImpl implements ToolinfoServiceDao {

	private ToolinfoDao ToolinfoDao;

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount() {
		return ToolinfoDao.getCount();
	}

	/**
	 * 添加数据字典
	 * 
	 * @param data
	 * @return
	 */
	public Boolean addToolinfo(TToolinfo Toolinfo) {
		return ToolinfoDao.addToolinfo(Toolinfo);
	}

	/**
	 * 删除数据字典
	 * 
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo) {
		return ToolinfoDao.deleteToolinfo(Toolinfo);
	}

	/**
	 * 更新数据字典
	 * 
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo) {
		return ToolinfoDao.updateToolinfo(Toolinfo);
	}

	/**
	 * 取得数据字典列表
	 * 
	 * @return
	 */
	public List searchToolinfo(TToolinfo Toolinfo) {

		return ToolinfoDao.searchToolinfo(Toolinfo);
	}

	/**
	 * 查询数据字典对象
	 * 
	 * @param id
	 * @return
	 */
	public TToolinfo seachToolinfo(Long id) {
		return ToolinfoDao.seachToolinfo(id);
	}

	/**
	 * 根据父类ID查询小类
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonToolinfo(Long pid) {
		return null;
	}

	/**
	 * 根据小类查询父类对象
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
	 * 根据Pid分页
	 * 
	 * @param pid
	 * @return
	 */
	public List searchPageToolinfo(Long pid) {
		return this.ToolinfoDao.searchPageToolinfo(pid);
	}

}
