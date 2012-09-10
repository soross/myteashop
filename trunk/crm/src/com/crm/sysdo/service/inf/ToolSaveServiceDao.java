package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;

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
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount();
	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addData(TData data);
	
	/**
	 * 删除数据字典
	 * @param data
	 * @return
	 */
	public Boolean deleteData(TData data);
	
	/**
	 * 更新数据字典
	 * @param data
	 * @return
	 */
	public Boolean updateData(TData data);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchData(TData data);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TData seachData(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentData(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageData(Long pid);

}
