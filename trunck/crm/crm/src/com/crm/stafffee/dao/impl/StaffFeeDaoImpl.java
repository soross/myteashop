package com.crm.stafffee.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.stafffee.dao.intf.StaffFeeDao;
import com.crm.stafffee.po.TStaffFee;

public class StaffFeeDaoImpl extends HibernateDaoSupport implements StaffFeeDao {

	public Boolean addStaffFee(TStaffFee StaffFee) {
		this.getHibernateTemplate().save(StaffFee);
		return true;
	}

	public Boolean deleteStaffFee(Long id) {
		TStaffFee depte = (TStaffFee) this.getHibernateTemplate().get(
				TStaffFee.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getStaffFeeCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TStaffFee";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getStaffFeeCount(final TStaffFee StaffFee) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TStaffFee StaffFee where 1=1");
						if (null != StaffFee.getStaffname()
								&& !"".equals(StaffFee.getStaffname())) {
							sbf.append(" and StaffFee.staffname like :staffname");
						}
						if (null != StaffFee.getStaffid()
								&& !"".equals(StaffFee.getStaffid())) {
							sbf.append(" and StaffFee.staffid=:username");
						}

						Query query = session.createQuery(sbf.toString());

						if (null != StaffFee.getStaffname()
								&& !"".equals(StaffFee.getStaffname())) {
							query.setString("staffname", "'%"
									+ StaffFee.getStaffname() + "%'");
						}
						if (null != StaffFee.getStaffid()
								&& !"".equals(StaffFee.getStaffid())) {
							query.setString("username", StaffFee.getStaffid());
						}

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getStaffFeeList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TStaffFee";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getStaffFeeList(final TStaffFee StaffFee,
			final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TStaffFee StaffFee where 1=1");
						if (null != StaffFee.getStaffname()
								&& !"".equals(StaffFee.getStaffname())) {
							sbf.append(" and StaffFee.staffname like :staffname");
						}
						
						if (null != StaffFee.getStaffid()
								&& !"".equals(StaffFee.getStaffid())) {
							sbf.append(" and StaffFee.staffid=:username");
						}

						Query query = session.createQuery(sbf.toString());
						
						if (null != StaffFee.getStaffname()
								&& !"".equals(StaffFee.getStaffname())) {
							query.setString("staffname", "%"
									+ StaffFee.getStaffname() + "%");
						}
						if (null != StaffFee.getStaffid()
								&& !"".equals(StaffFee.getStaffid())) {
							query.setString("username", StaffFee.getStaffid());
						}

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getStaffFeeList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TStaffFee";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TStaffFee getStaffFeeByID(Long id) {
		return (TStaffFee) this.getHibernateTemplate().get(TStaffFee.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateStaffFee(TStaffFee StaffFee) {
		this.getHibernateTemplate().update(StaffFee);
		return true;
	}
}
