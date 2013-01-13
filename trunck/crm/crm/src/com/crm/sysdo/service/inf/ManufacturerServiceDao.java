package com.crm.sysdo.service.inf;


import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
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
	 * 添加
	 * @param data
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 删除
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 更新
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer);
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TManufacturer Manufacturer,Map map);
	/**
	 * 取得列表
	 * @return
	 */
	public List getManufacturerList(PageUtil pageUtil ,TManufacturer Manufacturer,Map map);
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TManufacturer getManufacturerById(Long id);
	
}
