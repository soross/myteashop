package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.StaffDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TStaff;
import com.crm.sysdo.service.inf.StaffServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class StaffServiceDaoImpl implements StaffServiceDao {
	
	private StaffDao staffDao;
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TStaff staff){
		return staffDao.getCount(staff);
	}

	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addStaff(TStaff staff){		
		return staffDao.addStaff(staff);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean deleteStaff(TStaff staff){		
		return staffDao.deleteStaff(staff);
	}
	
	/**
	 * ���������ֵ�
	 * @param Staff
	 * @return
	 */
	public Boolean updateStaff(TStaff staff){
		return staffDao.updateStaff(staff);
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchStaff(PageUtil pageUtil,TStaff staff){
		
		return staffDao.searchStaff(pageUtil,staff);
	}
	
	/**
	 * ��ѯ�����ֵ����
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
