package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TSickbed;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface CollectServiceDao {
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TCollect collect);
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
	
	public List getCollectList(final PageUtil pageUtil,final TCollect collect);
	
	

}
