package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.OrderDao;
import com.crm.op.po.TCustomer;
import com.crm.op.po.TOrder;
import com.crm.page.PageUtil;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	public Boolean addOrder(TOrder order) {
		this.getHibernateTemplate().save(order);
		return true;
	}

	public Boolean deleteOrder(Long id) {
		TOrder obj = (TOrder) this.getHibernateTemplate().get(TOrder.class, id);
		this.getHibernateTemplate().delete(obj);
		return true;
	}

	public Integer getOrderCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TOrder";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getOrderCount(final TOrder order) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TOrder order where 1=1");
						if (null != order.getCustId()
								&& !"".equals(order.getCustId())
								&& 0 != order.getCustId()) {
							sbf.append(" and order.custId=:custId");
						}

						Query query = session.createQuery(sbf.toString());
						if (null != order.getCustId()
								&& !"".equals(order.getCustId())
								&& 0 != order.getCustId()) {
							query.setLong("custId", order.getCustId());
						}
						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getOrderList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TOrder";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getOrderList(final TOrder order, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TOrder order where 1=1");
						if (null != order.getCustId()
								&& !"".equals(order.getCustId())
								&& 0 != order.getCustId()) {
							sbf.append(" and order.custId=:custId");
						}

						Query query = session.createQuery(sbf.toString());
						if (null != order.getCustId()
								&& !"".equals(order.getCustId())
								&& 0 != order.getCustId()) {
							query.setLong("custId", order.getCustId());
						}
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}


	public TOrder getOrderByID(Long id) {
		return (TOrder) this.getHibernateTemplate().get(TOrder.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateOrder(TOrder order) {
		this.getHibernateTemplate().update(order);
		return true;
	}
}
