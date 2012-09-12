package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ToolSaveDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoodsType;
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
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave){		
		return ToolSaveDao.addToolSave(ToolSave);
	}
	
	/**
	 * 删除
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave){		
		return ToolSaveDao.deleteToolSave(ToolSave);
	}
	
	/**
	 * 更新
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave){
		return ToolSaveDao.updateToolSave(ToolSave);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TToolSave ToolSave){
		return ToolSaveDao.getCount(ToolSave);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getToolSaveList(PageUtil pageUtil,TToolSave ToolSave){
		
		return ToolSaveDao.getToolSaveList(pageUtil,ToolSave);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TToolSave getToolSaveById(Long id){
		return ToolSaveDao.getToolSaveById(id);
	}

	public ToolSaveDao getToolSaveDao() {
		return ToolSaveDao;
	}

	public void setToolSaveDao(ToolSaveDao ToolSaveDao) {
		this.ToolSaveDao = ToolSaveDao;
	}
	
	

}
