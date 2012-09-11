package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TManufacturer;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ManufacturerDao {
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
	public Boolean addManufacturer(TManufacturer Manufacturing);
	
	/**
	 * 删除数据字典
	 * @param Manufacturing
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturing);
	
	/**
	 * 更新数据字典
	 * @param Manufacturing
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturing);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchManufacturer(TManufacturer Manufacturing);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TManufacturer seachManufacturer(Long id);
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonManufacturer(Long pid);
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentManufacturer(PageUtil pageUtil);
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageManufacturer(Long pid);
}
