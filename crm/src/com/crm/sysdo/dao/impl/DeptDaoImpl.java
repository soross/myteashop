package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DeptDao;
import com.crm.sysdo.po.TDept;

public class DeptDaoImpl extends HibernateDaoSupport implements DeptDao {

	public Boolean addDept(TDept dept) {
		this.getHibernateTemplate().save(dept);		
		return true;
	}

	public Boolean deleteDept(Long id) {
		TDept depte = (TDept)this.getHibernateTemplate().get(TDept.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getDeptCount() {
		return (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TDept";
				Query query =session.createQuery(hql);
				return query.uniqueResult();
			}			
		});
	}

	public List getDeptList(final PageUtil pageUtil) {
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TDept";
				Query query =session.createQuery(hql);
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}			
		});
	}
	
	public List getDeptList() {
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TDept";
				Query query =session.createQuery(hql);
				return query.list();
			}			
		});
	}
	
	public TDept getDeptByID(Long id){
		return (TDept)this.getHibernateTemplate().get(TDept.class, id);
	}
	
	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateDept(TDept dept) {
		this.getHibernateTemplate().update(dept);
		return true;
	}

}
