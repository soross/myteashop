package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TStaff;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface StaffDao {
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TStaff staff);
	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addStaff(TStaff staff);
	
	/**
	 * 删除数据字典
	 * @param data
	 * @return
	 */
	public Boolean deleteStaff(TStaff staff);
	
	/**
	 * 更新数据字典
	 * @param Staff
	 * @return
	 */
	public Boolean updateStaff(TStaff staff);
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchStaff(PageUtil pageUtil,TStaff staff);
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TStaff seachStaff(Long id);
	
}
