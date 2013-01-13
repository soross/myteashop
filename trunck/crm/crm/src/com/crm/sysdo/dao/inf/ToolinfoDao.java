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
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 删除
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 更新
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TToolinfo Toolinfo);
	/**
	 * 取得列表
	 * @return
	 */
	public List getToolinfoList(PageUtil pageUtil ,TToolinfo Toolinfo);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TToolinfo getToolinfoById(Long id);
}
