package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TToolinfo;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ToolinfoDao {
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
	public Boolean addToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 删除数据字典
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 更新数据字典
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TToolinfo seachToolinfo(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonToolinfo(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentToolinfo(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageToolinfo(Long pid);
}
