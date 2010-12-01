package com.spring25.dao.impl;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.spring25.dao.ILoginDao;

public class LoginDaoImpl extends HibernateDaoSupport implements ILoginDao{

	public boolean login(String userName,String password) {
		Query query = this.getSession(true).createQuery("from Employe where name=:userName and num=:password");
		query.setParameter("userName", userName);
		query.setParameter("password", password);
		return query.list().size() > 0 ? true : false;
	}
	
}
