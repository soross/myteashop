package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TToolSave;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ToolSaveDao {
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount();
	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave);
	
	/**
	 * 删除数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(TToolSave ToolSave);
	
	/**
	 * 更新数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchToolSave(TToolSave ToolSave);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TToolSave seachToolSave(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonToolSave(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentToolSave(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageToolSave(Long pid);
}
