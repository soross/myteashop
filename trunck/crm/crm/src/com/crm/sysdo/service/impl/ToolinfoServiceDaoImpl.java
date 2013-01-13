package com.crm.sysdo.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.ToolinfoDao;
import com.crm.sysdo.po.TGoodsType;
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
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addToolinfo(TToolinfo Toolinfo){		
		return ToolinfoDao.addToolinfo(Toolinfo);
	}
	
	/**
	 * 删除
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo){		
		return ToolinfoDao.deleteToolinfo(Toolinfo);
	}
	
	/**
	 * 更新
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo){
		return ToolinfoDao.updateToolinfo(Toolinfo);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TToolinfo Toolinfo){
		return ToolinfoDao.getCount(Toolinfo);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getToolinfoList(PageUtil pageUtil,TToolinfo Toolinfo){
		
		return ToolinfoDao.getToolinfoList(pageUtil,Toolinfo);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TToolinfo getToolinfoById(Long id){
		return ToolinfoDao.getToolinfoById(id);
	}
	
	public ToolinfoDao getToolinfoDao() {
		return ToolinfoDao;
	}

	public void setToolinfoDao(ToolinfoDao ToolinfoDao) {
		this.ToolinfoDao = ToolinfoDao;
	}

	

}
