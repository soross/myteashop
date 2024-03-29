package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TToolSave;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ToolSaveServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave);
	
	/**
	 * 删除
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave);
	
	/**
	 * 更新
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TToolSave ToolSave);
	/**
	 * 取得列表
	 * @return
	 */
	public List getToolSaveList(PageUtil pageUtil ,TToolSave ToolSave);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TToolSave getToolSaveById(Long id);

}
