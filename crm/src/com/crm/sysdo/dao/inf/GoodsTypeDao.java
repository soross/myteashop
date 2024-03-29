package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TToolinfo;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsTypeDao {
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType);
	
	/**
	 * 删除
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType);
	
	/**
	 * 更新
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TGoodsType GoodsType);
	/**
	 * 取得列表
	 * @return
	 */
	public List getGoodsTypeList(PageUtil pageUtil ,TGoodsType GoodsType);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TGoodsType getGoodsTypeById(Long id);
}
