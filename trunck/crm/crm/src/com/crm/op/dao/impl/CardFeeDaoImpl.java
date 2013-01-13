package com.crm.op.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.CardFeeDao;
import com.crm.op.po.TCardFee;
import com.crm.op.po.TCustomer;
import com.crm.page.PageUtil;

public class CardFeeDaoImpl extends HibernateDaoSupport implements CardFeeDao {

	public Boolean addCardFee(final TCardFee CardFee) {
		this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				session.beginTransaction();
				session.save(CardFee);
				TCustomer cust = (TCustomer) session.get(TCustomer.class,
						new Long(CardFee.getCustid()));
				cust.setBalance(CardFee.getBalance());
				session.update(cust);
				session.flush();
				session.close();
				return true;
			}
		});
		// this.getHibernateTemplate().save(CardFee);
		return true;
	}

	public Integer getCardFeeCount() {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TCardFee";
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}
				});
	}

	public Integer getCardFeeCount(final TCardFee CardFee) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"select count(*) from TCardFee CardFee where 1=1");
						Query query = session.createQuery(sbf.toString());
						return query.uniqueResult();
					}
				});
	}

	public List getCardFeeList(final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TCardFee";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}
				});
	}

	public List getCardFeeList(final TCardFee CardFee, final PageUtil pageUtil) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sbf = new StringBuffer(
								"from TCardFee CardFee where 1=1");
						Query query = session.createQuery(sbf.toString());
						if (null != pageUtil) {
							query.setFirstResult(pageUtil.pastart());
							query.setMaxResults(pageUtil.getPagesize());
						}
						return query.list();
					}
				});
	}

	public List getCardFeeList() {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TCardFee";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	public TCardFee getCardFeeByID(Long id) {
		return (TCardFee) this.getHibernateTemplate().get(TCardFee.class, id);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateCardFee(final TCardFee CardFee) {
		this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				session.beginTransaction();
				session.update(CardFee);
				TCustomer cust = (TCustomer) session.get(TCustomer.class,
						new Long(CardFee.getCustid()));
				cust.setBalance(CardFee.getBalance());
				session.update(cust);
				session.flush();
				session.close();
				return true;
			}
		});

		return true;
	}

	public Boolean deleteCardFee(final Long id) {
		try {
			this.getHibernateTemplate().execute(new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					TCardFee cardFee = (TCardFee) session.get(TCardFee.class,
							id);
					TCustomer cust = (TCustomer) session.get(TCustomer.class,
							new Long(cardFee.getCustid()));
					session.delete(cardFee);
					cust.setBalance(cust.getBalance() - cardFee.getMoney());
					return true;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
