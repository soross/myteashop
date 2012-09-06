package com.crm.sysdo.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DeptDao;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.service.inf.DeptServiceDao;

public class DeptServiceDaoImpl implements DeptServiceDao{
	private DeptDao deptDao ;

	public Boolean addDept(TDept dept) {
		// TODO Auto-generated method stub
		return this.deptDao.addDept(dept);
	}

	public Boolean deleteDept(Long id) {
		// TODO Auto-generated method stub
		return this.deptDao.deleteDept(id);
	}

	public Integer getDeptCount() {
		// TODO Auto-generated method stub
		return this.deptDao.getDeptCount();
	}

	public List getDeptList(PageUtil pageUtil) {
		// TODO Auto-generated method stub
		return this.deptDao.getDeptList(pageUtil);
	}

	public List getDeptList(String type) {		
		return this.deptDao.getDeptList(type);
	}
	
	public TDept getDeptByID(Long id){
		return this.deptDao.getDeptByID(id);		
	}
	
	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return this.deptDao.getSeqNextValue();
	}

	public Boolean updateDept(TDept dept) {
		// TODO Auto-generated method stub
		return this.deptDao.updateDept(dept);
	}

	public DeptDao getDeptDao() {
		return deptDao;
	}

	public void setDeptDao(DeptDao deptDao) {
		this.deptDao = deptDao;
	}

}
