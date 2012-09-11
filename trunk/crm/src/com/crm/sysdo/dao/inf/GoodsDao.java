package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsDao {
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
	public Boolean addGoods(TGoods Goods);
	
	/**
	 * 删除数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(TGoods Goods);
	
	/**
	 * 更新数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchGoods(TGoods Goods);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TGoods seachGoods(Long id);
	
	
}
