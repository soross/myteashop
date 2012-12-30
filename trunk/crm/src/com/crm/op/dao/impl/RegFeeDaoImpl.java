package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.RegFeeDao;
import com.crm.op.po.TRegisterFee;
import com.crm.page.PageUtil;
import com.crm.pub.PowerKey;

public class RegFeeDaoImpl extends HibernateDaoSupport implements RegFeeDao {

	public Boolean addRegFee(TRegisterFee of) {
		this.getHibernateTemplate().save(of);
		return true;
	}

	public Boolean deleteRegFee(Long id) {
		TRegisterFee obj = (TRegisterFee) this.getHibernateTemplate().get(
				TRegisterFee.class, id);
		this.getHibernateTemplate().delete(obj);
		return true;
	}

	public Integer getRegFeeCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TRegisterFee";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getRegFeeCount(final TRegisterFee rf) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TRegisterFee rf where fee_Type='"
										+ rf.getFeeType() + "' ");
						if (null != rf.getCreateStaff()
								&& !"".equals(rf.getCreateStaff())) {
							sbf.append(" and rf.createStaff=:custStaff");
						}

						Query query = session.createQuery(sbf.toString());
						if (null != rf.getCreateStaff()
								&& !"".equals(rf.getCreateStaff())) {
							query.setString("custStaff", rf.getCreateStaff());
						}
						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getRegFeeList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TRegisterFee";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getRegFeeList(final TRegisterFee order, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TRegisterFee rf where fee_Type='"
										+ order.getFeeType() + "' ");
						if (null != order.getCreateStaff()
								&& !"".equals(order.getCreateStaff())) {
							sbf.append(" and rf.createStaff=:custStaff");
						}

						if (PowerKey.REG_FEE_CHARGE.equalsIgnoreCase(order
								.getFeeType())) {
							sbf.append(" order by fee_Date desc");
						} else {
							sbf.append(" order by create_Date desc ");
						}

						Query query = session.createQuery(sbf.toString());
						if (null != order.getCreateStaff()
								&& !"".equals(order.getCreateStaff())) {
							query
									.setString("custStaff", order
											.getCreateStaff());
						}
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public TRegisterFee getRegFeeByID(Long id) {
		return (TRegisterFee) this.getHibernateTemplate().get(
				TRegisterFee.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateRegFee(TRegisterFee order) {
		this.getHibernateTemplate().update(order);
		return true;
	}

	public List getRegFeeByOrderID(final String orderID) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TRegisterFee where order_id='"
								+ orderID + "'";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}
}
