package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.CustDao;
import com.crm.op.po.TCustomer;
import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DeptDao;
import com.crm.sysdo.po.TDept;

public class CustDaoImpl extends HibernateDaoSupport implements CustDao {

	public Boolean addCust(TCustomer cust) {
		this.getHibernateTemplate().save(cust);		
		return true;
	}

	public Boolean deleteCust(Long id) {
		TCustomer depte = (TCustomer)this.getHibernateTemplate().get(TCustomer.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getCustCount() {
		return (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TCustomer";
				Query query =session.createQuery(hql);
				return query.uniqueResult();
			}			
		});
	}

	public List getCustList(final PageUtil pageUtil) {
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TCustomer";
				Query query =session.createQuery(hql);
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}			
		});
	}
	
	public List getCustList() {
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TCustomer";
				Query query =session.createQuery(hql);
				return query.list();
			}			
		});
	}
	
	public TCustomer getCustByID(Long id){
		return (TCustomer)this.getHibernateTemplate().get(TCustomer.class, id);
	}
	
	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateCust(TCustomer cust) {
		this.getHibernateTemplate().update(cust);
		return true;
	}
}
