package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface CollectDao {
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
	public Boolean addCollect(TCollect Collect);
	
	/**
	 * 删除数据字典
	 * @param Collect
	 * @return
	 */
	public Boolean deleteCollect(TCollect Collect);
	
	/**
	 * 更新数据字典
	 * @param Collect
	 * @return
	 */
	public Boolean updateCollect(TCollect Collect);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchCollect(TCollect Collect);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TCollect seachCollect(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonCollect(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentCollect(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageCollect(Long pid);
}
