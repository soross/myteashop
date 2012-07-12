package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.RegDao;
import com.crm.op.po.TCustomer;
import com.crm.op.po.TRegister;
import com.crm.page.PageUtil;

public class RegDaoImpl extends HibernateDaoSupport implements RegDao {

	public Boolean addReg(TRegister reg) {
		this.getHibernateTemplate().save(reg);
		return true;
	}

	public Boolean deleteReg(Long id) {
		TRegister obj = (TRegister) this.getHibernateTemplate().get(
				TRegister.class, id);
		this.getHibernateTemplate().delete(obj);
		return true;
	}

	public Integer getRegCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TRegister";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getRegCount(final TRegister obj) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TRegister reg where 1=1");
						if (null != obj.getCustName()
								&& !"".equals(obj.getCustName())) {
							sbf.append(" and reg.custname=:custname");
						}
						if (null != obj.getDoctor()
								&& !"".equals(obj.getDoctor())) {
							sbf.append(" and reg.doctor = :doctor");
						}
						
						Query query = session.createQuery(sbf.toString());

						if (null != obj.getCustName()
								&& !"".equals(obj.getCustName())) {
							query.setString("custname", obj.getCustName());
						}
						if (null != obj.getDoctor()
								&& !"".equals(obj.getDoctor())) {
							query.setString("doctor", obj.getDoctor());
						}
						return query.uniqueResult();
					}
				});
	}

	public List getRegList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TRegister";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getRegList(final TRegister obj, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
			new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					StringBuffer sbf = new StringBuffer(
					"select count(*) from TRegister reg where 1=1");
					if (null != obj.getCustName()
							&& !"".equals(obj.getCustName())) {
						sbf.append(" and reg.custname=:custname");
					}
					if (null != obj.getDoctor()
							&& !"".equals(obj.getDoctor())) {
						sbf.append(" and reg.doctor = :doctor");
					}
					
					Query query = session.createQuery(sbf.toString());
		
					if (null != obj.getCustName()
							&& !"".equals(obj.getCustName())) {
						query.setString("custname", obj.getCustName());
					}
					if (null != obj.getDoctor()
							&& !"".equals(obj.getDoctor())) {
						query.setString("doctor", obj.getDoctor());
					}
					query.setFirstResult(pageUtil.pastart());
					query.setMaxResults(pageUtil.getPagesize());
					return query.list();
				}
			});
	}

	public List getRegList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TRegister";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TRegister getRegByID(Long id) {
		return (TRegister) this.getHibernateTemplate().get(TRegister.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateReg(TRegister reg) {
		this.getHibernateTemplate().update(reg);
		return true;
	}

	
}
