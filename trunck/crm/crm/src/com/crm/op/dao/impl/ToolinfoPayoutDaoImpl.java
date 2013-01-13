package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.ToolinfoPayoutDao;
import com.crm.op.po.TToolinfoPayout;
import com.crm.page.PageUtil;

public class ToolinfoPayoutDaoImpl extends HibernateDaoSupport implements
		ToolinfoPayoutDao {

	public Boolean addToolinfoPayout(TToolinfoPayout ToolinfoPayout) {
		this.getHibernateTemplate().save(ToolinfoPayout);
		return true;
	}

	public Boolean deleteToolinfoPayout(Long id) {
		TToolinfoPayout depte = (TToolinfoPayout) this.getHibernateTemplate()
				.get(TToolinfoPayout.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getToolinfoPayoutCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TToolinfoPayout";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getToolinfoPayoutCount(final TToolinfoPayout ToolinfoPayout) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TToolinfoPayout ToolinfoPayout where 1=1");

						Query query = session.createQuery(sbf.toString());

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getToolinfoPayoutList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TToolinfoPayout";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getToolinfoPayoutList(final TToolinfoPayout ToolinfoPayout,
			final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TToolinfoPayout ToolinfoPayout where 1=1");

						Query query = session.createQuery(sbf.toString());

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getToolinfoPayoutList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TToolinfoPayout";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TToolinfoPayout getToolinfoPayoutByID(Long id) {
		return (TToolinfoPayout) this.getHibernateTemplate().get(
				TToolinfoPayout.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateToolinfoPayout(TToolinfoPayout ToolinfoPayout) {
		this.getHibernateTemplate().update(ToolinfoPayout);
		return true;
	}

	public Integer getToolinfoChargingPriceCount(TToolinfoPayout ToolinfoPayout) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TToolinfoPayout ToolinfoPayout where chargingprice is not null");

						Query query = session.createQuery(sbf.toString());

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getToolinfoChargingPriceList(TToolinfoPayout ToolinfoPayout,
			final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TToolinfoPayout ToolinfoPayout where chargingprice is not null");

						Query query = session.createQuery(sbf.toString());

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public Integer getToolinfoPayPriceCount(TToolinfoPayout ToolinfoPayout) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TToolinfoPayout ToolinfoPayout where payprice is not null");

						Query query = session.createQuery(sbf.toString());

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getToolinfoPayPriceList(TToolinfoPayout ToolinfoPayout,
			final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TToolinfoPayout ToolinfoPayout where payprice is not null");

						Query query = session.createQuery(sbf.toString());

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}
}
