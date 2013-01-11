package com.crm.account.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.account.dao.intf.BillDao;
import com.crm.account.po.TSickFeeBill;
import com.crm.page.PageUtil;

public class BillDaoImpl extends HibernateDaoSupport implements BillDao {

	public Boolean addBill(TSickFeeBill Bill) {
		this.getHibernateTemplate().save(Bill);
		return true;
	}

	public Boolean deleteBill(Long id) {
		TSickFeeBill depte = (TSickFeeBill) this.getHibernateTemplate().get(
				TSickFeeBill.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getBillCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TSickFeeBill";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getBillCount(final TSickFeeBill Bill) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TSickFeeBill Bill where Bill.billtype=:bt ");
						if (null != Bill.getSickid()
								&& !"".equals(Bill.getSickid())) {
							sbf.append(" and Bill.sickid=:username");
						}

						Query query = session.createQuery(sbf.toString());
						
						query.setString("bt", Bill.getBilltype());
						
						if (null != Bill.getSickid()
								&& !"".equals(Bill.getSickid())) {
							query.setString("username", Bill.getSickid());
						}

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getBillList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TSickFeeBill";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getBillList(final TSickFeeBill Bill, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TSickFeeBill Bill where where Bill.billtype=:bt ");
						if (null != Bill.getSickid()
								&& !"".equals(Bill.getSickid())) {
							sbf.append(" and Bill.sickid=:username");
						}

						Query query = session.createQuery(sbf.toString());
						
						query.setString("bt", Bill.getBilltype());
						
						if (null != Bill.getSickid()
								&& !"".equals(Bill.getSickid())) {
							query.setString("username", Bill.getSickid());
						}

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getBillList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TSickFeeBill";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TSickFeeBill getBillByID(Long id) {
		return (TSickFeeBill) this.getHibernateTemplate().get(
				TSickFeeBill.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateBill(TSickFeeBill Bill) {
		this.getHibernateTemplate().update(Bill);
		return true;
	}
}
