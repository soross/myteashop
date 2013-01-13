package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TToolinfo;

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
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addGoods(TGoods Goods);
	
	/**
	 * 删除
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(TGoods Goods);
	
	/**
	 * 更新
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TGoods Goods);
	/**
	 * 取得列表
	 * @return
	 */
	public List getGoodsList(PageUtil pageUtil ,TGoods Goods);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TGoods getGoodsById(Long id);
	
	
}
