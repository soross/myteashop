package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ToolSaveDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TToolSave;
import com.crm.sysdo.service.inf.ToolSaveServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ToolSaveServiceDaoImpl implements ToolSaveServiceDao {
	
	private ToolSaveDao ToolSaveDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return ToolSaveDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave){		
		return ToolSaveDao.addToolSave(ToolSave);
	}
	
	/**
	 * 删除数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave){		
		return ToolSaveDao.deleteToolSave(ToolSave);
	}
	
	/**
	 * 更新数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave){
		return ToolSaveDao.updateToolSave(ToolSave);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchToolSave(TToolSave ToolSave){
		
		return ToolSaveDao.searchToolSave(ToolSave);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TToolSave seachToolSave(Long id){
		return ToolSaveDao.seachToolSave(id);
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonToolSave(Long pid){
		return null;
	}
	
	/**
	 * 根据小类查询父类对象
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
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageToolSave(Long pid){
		return this.ToolSaveDao.searchPageToolSave(pid);
	}

}
