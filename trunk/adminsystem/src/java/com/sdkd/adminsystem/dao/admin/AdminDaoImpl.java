package com.sdkd.adminsystem.dao.admin;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.sdkd.adminsystem.entity.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(admin);
	}

	public void deleteAdmin(Integer adminId) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(this.getAdmin(adminId));
	}

	public List getAdminList() {
		// TODO Auto-generated method stub
		String hql="from Admin as admin"; 
		return this.getHibernateTemplate().find(hql);
	}

	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(admin);
	}

	public Admin getAdmin(Integer adminId){
		return (Admin)this.getHibernateTemplate().get(Admin.class,adminId);
	}

	 
}
