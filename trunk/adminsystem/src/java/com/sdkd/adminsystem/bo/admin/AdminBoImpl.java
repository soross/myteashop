package com.sdkd.adminsystem.bo.admin;

import java.util.List;

import com.sdkd.adminsystem.dao.admin.AdminDao;
import com.sdkd.adminsystem.entity.Admin;


public class AdminBoImpl implements AdminBo{

	private AdminDao adminDao;
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		
		 adminDao.addAdmin(admin);
	}

	public void deleteAdmin(Integer adminId) {
		// TODO Auto-generated method stub
 
		adminDao.deleteAdmin(adminId);
	}

	public List getAdminList(){
		return adminDao.getAdminList();
	}
 

	public void updateAdmin(Admin admin) {
		 adminDao.updateAdmin(admin);
	}

	public Admin getAdmin(Integer adminId) {
		      
		return adminDao.getAdmin(adminId);
	}

 
 

 
	
}
