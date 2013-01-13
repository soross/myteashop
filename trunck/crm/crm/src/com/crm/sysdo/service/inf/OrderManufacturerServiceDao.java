package com.crm.sysdo.service.inf;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TOrderManufacturer;

public interface OrderManufacturerServiceDao {
	
	/**
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addOrderManufacturer(TOrderManufacturer tOrderManufacturer);
	
	/**
	 * 删除
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteOrderManufacturer(TOrderManufacturer tOrderManufacturer);
	
	/**
	 * 更新
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateOrderManufacturer(TOrderManufacturer tOrderManufacturer);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TOrderManufacturer tOrderManufacturer,Map map);
	/**
	 * 取得列表
	 * @return
	 */
	public List getOrderManufacturerList(PageUtil pageUtil ,TOrderManufacturer tOrderManufacturer,Map map);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TOrderManufacturer getOrderManufacturerById(Long id);
	

}
