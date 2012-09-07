package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.StaffDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TStaff;
import com.crm.sysdo.service.inf.StaffServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class StaffServiceDaoImpl implements StaffServiceDao {
	
	private StaffDao staffDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TStaff staff){
		return staffDao.getCount(staff);
	}

	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addStaff(TStaff staff){		
		return staffDao.addStaff(staff);
	}
	
	/**
	 * 删除数据字典
	 * @param data
	 * @return
	 */
	public Boolean deleteStaff(TStaff staff){		
		return staffDao.deleteStaff(staff);
	}
	
	/**
	 * 更新数据字典
	 * @param Staff
	 * @return
	 */
	public Boolean updateStaff(TStaff staff){
		return staffDao.updateStaff(staff);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchStaff(PageUtil pageUtil,TStaff staff){
		
		return staffDao.searchStaff(pageUtil,staff);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TStaff seachStaff(Long id){
		return staffDao.seachStaff(id);
	}
	
	
	
	public StaffDao getStaffDao() {
		return staffDao;
	}

	public void setStaffDao(StaffDao staffDao) {
		this.staffDao = staffDao;
	}
	
}
