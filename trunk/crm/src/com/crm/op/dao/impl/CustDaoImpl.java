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

public class CustDaoImpl extends HibernateDaoSupport implements CustDao {

	public Boolean addCust(TCustomer cust) {
		this.getHibernateTemplate().save(cust);
		return true;
	}

	public Boolean deleteCust(Long id) {
		TCustomer depte = (TCustomer) this.getHibernateTemplate().get(
				TCustomer.class, id);
		this.getHibernateTemplate().delete(depte);
		return true;
	}

	public Integer getCustCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TCustomer";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getCustCount(final TCustomer cust) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TCustomer cust where 1=1");
						if (null != cust.getUsername()
								&& !"".equals(cust.getUsername())) {
							sbf.append(" and cust.username=:username");
						}
						if (null != cust.getIcCardCode()
								&& !"".equals(cust.getIcCardCode())) {
							sbf.append(" and cust.icCardCode = :icCardCode");
						}
						if (null != cust.getCode()
								&& !"".equals(cust.getCode())) {
							sbf.append(" and cust.code=:code");
						}
						if (null != cust.getIdCode()
								&& !"".equals(cust.getIdCode())) {
							sbf.append(" and cust.idCode=:idCode");
						}
						if (null != cust.getVipType()
								&& !"".equals(cust.getVipType())
								&& !"-1".equals(cust.getVipType())) {
							sbf.append(" and cust.vipType=:vipType");
						}
						Query query = session.createQuery(sbf.toString());

						if (null != cust.getUsername()
								&& !"".equals(cust.getUsername())) {
							query.setString("username", cust.getUsername());
						}
						if (null != cust.getIcCardCode()
								&& !"".equals(cust.getIcCardCode())) {
							query.setString("icCardCode", cust.getIcCardCode());
						}
						if (null != cust.getCode()
								&& !"".equals(cust.getCode())) {
							query.setString("code", cust.getCode());
						}
						if (null != cust.getIdCode()
								&& !"".equals(cust.getIdCode())) {
							query.setString("idCode", cust.getIdCode());
						}
						if (null != cust.getVipType()
								&& !"".equals(cust.getVipType())
								&& !"-1".equals(cust.getVipType())) {
							query.setString("vipType", cust.getVipType());
						}
						// List list = (List) query.list();
						return query.uniqueResult();
					}
				});
	}

	public List getCustList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TCustomer";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getCustList(final TCustomer cust, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
			new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					StringBuffer sbf = new StringBuffer(
							"from TCustomer cust where 1=1");
					if (null != cust.getUsername()
							&& !"".equals(cust.getUsername())) {
						sbf.append(" and cust.username=:username");
					}
					if (null != cust.getIcCardCode()
							&& !"".equals(cust.getIcCardCode())) {
						sbf.append(" and cust.icCardCode = :icCardCode");
					}
					if (null != cust.getCode()
							&& !"".equals(cust.getCode())) {
						sbf.append(" and cust.code=:code");
					}
					if (null != cust.getIdCode()
							&& !"".equals(cust.getIdCode())) {
						sbf.append(" and cust.idCode=:idCode");
					}
					if (null != cust.getVipType()
							&& !"".equals(cust.getVipType())
							&& !"-1".equals(cust.getVipType())) {
						sbf.append(" and cust.vipType=:vipType");
					}
					Query query = session.createQuery(sbf.toString());

					if (null != cust.getUsername()
							&& !"".equals(cust.getUsername())) {
						query.setString("username", cust.getUsername());
					}
					if (null != cust.getIcCardCode()
							&& !"".equals(cust.getIcCardCode())) {
						query.setString("icCardCode", cust.getIcCardCode());
					}
					if (null != cust.getCode()
							&& !"".equals(cust.getCode())) {
						query.setString("code", cust.getCode());
					}
					if (null != cust.getIdCode()
							&& !"".equals(cust.getIdCode())) {
						query.setString("idCode", cust.getIdCode());
					}
					if (null != cust.getVipType()
							&& !"".equals(cust.getVipType())
							&& !"-1".equals(cust.getVipType())) {
						query.setString("vipType", cust.getVipType());
					}
					if(null!=pageUtil){
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
					}
					return query.list();
				}
			});
	}

	public List getCustList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TCustomer";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TCustomer getCustByID(Long id) {
		return (TCustomer) this.getHibernateTemplate().get(TCustomer.class, id);
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
