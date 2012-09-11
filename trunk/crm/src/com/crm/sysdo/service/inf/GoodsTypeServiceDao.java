package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoodsType;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface GoodsTypeServiceDao {
	
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
	public Boolean addGoodsType(TGoodsType GoodsType);
	
	/**
	 * 删除数据字典
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType);
	
	/**
	 * 更新数据字典
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchGoodsType(TGoodsType GoodsType);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TGoodsType seachGoodsType(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonGoodsType(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentGoodsType(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageGoodsType(Long pid);

}
