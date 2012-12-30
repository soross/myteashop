package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.SickDao;
import com.crm.op.po.TSick;
import com.crm.page.PageUtil;

public class SickDaoImpl extends HibernateDaoSupport implements SickDao {

	public Boolean addSick(TSick Sick) {
		this.getHibernateTemplate().save(Sick);
		return true;
	}

	public Boolean deleteSick(Long id) {
		TSick depte = (TSick) this.getHibernateTemplate().get(
				TSick.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getSickCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TSick";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getSickCount(final TSick Sick) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TSick Sick where 1=1");
						if (null != Sick.getSickname()
								&& !"".equals(Sick.getSickname())) {
							sbf.append(" and Sick.username=:username");
						}
						if (null != Sick.getIcCardCode()
								&& !"".equals(Sick.getIcCardCode())) {
							sbf.append(" and Sick.icCardCode = :icCardCode");
						}
						if (null != Sick.getCode()
								&& !"".equals(Sick.getCode())) {
							sbf.append(" and Sick.code=:code");
						}

						Query query = session.createQuery(sbf.toString());

						if (null != Sick.getSickname()
								&& !"".equals(Sick.getSickname())) {
							query.setString("username", Sick.getSickname());
						}
						if (null != Sick.getIcCardCode()
								&& !"".equals(Sick.getIcCardCode())) {
							query.setString("icCardCode", Sick.getIcCardCode());
						}
						if (null != Sick.getCode()
								&& !"".equals(Sick.getCode())) {
							query.setString("code", Sick.getCode());
						}

						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getSickList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TSick";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getSickList(final TSick Sick, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TSick Sick where 1=1");
						if (null != Sick.getSickname()
								&& !"".equals(Sick.getSickname())) {
							sbf.append(" and Sick.username=:username");
						}
						if (null != Sick.getIcCardCode()
								&& !"".equals(Sick.getIcCardCode())) {
							sbf.append(" and Sick.icCardCode = :icCardCode");
						}
						if (null != Sick.getCode()
								&& !"".equals(Sick.getCode())) {
							sbf.append(" and Sick.code=:code");
						}

						Query query = session.createQuery(sbf.toString());

						if (null != Sick.getSickname()
								&& !"".equals(Sick.getSickname())) {
							query.setString("username", Sick.getSickname());
						}
						if (null != Sick.getIcCardCode()
								&& !"".equals(Sick.getIcCardCode())) {
							query.setString("icCardCode", Sick.getIcCardCode());
						}
						if (null != Sick.getCode()
								&& !"".equals(Sick.getCode())) {
							query.setString("code", Sick.getCode());
						}

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getSickList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TSick";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TSick getSickByID(Long id) {
		return (TSick) this.getHibernateTemplate().get(TSick.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateSick(TSick Sick) {
		this.getHibernateTemplate().update(Sick);
		return true;
	}
}
