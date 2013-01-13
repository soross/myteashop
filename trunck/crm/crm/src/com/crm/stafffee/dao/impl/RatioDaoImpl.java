package com.crm.stafffee.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.stafffee.dao.intf.RatioDao;
import com.crm.stafffee.po.TStaffGetfee;

public class RatioDaoImpl extends HibernateDaoSupport implements RatioDao {

	public Boolean addRatio(TStaffGetfee Ratio) {
		this.getHibernateTemplate().save(Ratio);
		return true;
	}

	public Boolean deleteRatio(Long id) {
		TStaffGetfee depte = (TStaffGetfee) this.getHibernateTemplate().get(
				TStaffGetfee.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getRatioCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TStaffGetfee";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getRatioCount(final TStaffGetfee Ratio) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TStaffGetfee Ratio where 1=1");
						if (null != Ratio.getStaffname()
								&& !"".equals(Ratio.getStaffname())) {
							sbf.append(" and Ratio.staffname like :staffname");
						}
						if (null != Ratio.getStaffid()
								&& !"".equals(Ratio.getStaffid())) {
							sbf.append(" and Ratio.staffid=:username");
						}

						Query query = session.createQuery(sbf.toString());

						if (null != Ratio.getStaffname()
								&& !"".equals(Ratio.getStaffname())) {
							query.setString("staffname", "'%"
									+ Ratio.getStaffname() + "%'");
						}
						if (null != Ratio.getStaffid()
								&& !"".equals(Ratio.getStaffid())) {
							query.setString("username", Ratio.getStaffid());
						}

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getRatioList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TStaffGetfee";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getRatioList(final TStaffGetfee Ratio, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TStaffGetfee Ratio where 1=1");
						if (null != Ratio.getStaffname()
								&& !"".equals(Ratio.getStaffname())) {
							sbf.append(" and Ratio.staffname like :staffname");
						}

						if (null != Ratio.getStaffid()
								&& !"".equals(Ratio.getStaffid())) {
							sbf.append(" and Ratio.staffid=:username");
						}

						Query query = session.createQuery(sbf.toString());

						if (null != Ratio.getStaffname()
								&& !"".equals(Ratio.getStaffname())) {
							query.setString("staffname", "%"
									+ Ratio.getStaffname() + "%");
						}
						if (null != Ratio.getStaffid()
								&& !"".equals(Ratio.getStaffid())) {
							query.setString("username", Ratio.getStaffid());
						}

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getRatioList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TStaffGetfee";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TStaffGetfee getRatioByID(Long id) {
		return (TStaffGetfee) this.getHibernateTemplate().get(
				TStaffGetfee.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateRatio(TStaffGetfee Ratio) {
		this.getHibernateTemplate().update(Ratio);
		return true;
	}
}
