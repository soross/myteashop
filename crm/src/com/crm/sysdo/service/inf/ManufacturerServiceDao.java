package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TManufacturer;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ManufacturerServiceDao {
	
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
	public Boolean addManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 删除数据字典
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 更新数据字典
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TManufacturer seachManufacturer(Long id);
	
}
