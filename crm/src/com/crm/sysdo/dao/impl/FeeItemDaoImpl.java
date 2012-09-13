package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.FeeItemDao;
import com.crm.sysdo.po.TFeeItem;

public class FeeItemDaoImpl  extends HibernateDaoSupport implements FeeItemDao{

	public void addFeeItem(TFeeItem tFeeItem) {
		this.getHibernateTemplate().save(tFeeItem);
	}

	public void deleteFeeItem(String id) {
		TFeeItem tFeeItem = (TFeeItem)this.getHibernateTemplate().get(TFeeItem.class,id);
		this.getHibernateTemplate().delete(tFeeItem);
	}

	public List getFeeItemList(final PageUtil pageUtil,final TFeeItem feeItem) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TFeeItem where 1=1 ");
						Query query = session.createQuery(hql.toString());
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						List list = query.list();
						return list;
					}
				});
		return list;

	}

	public TFeeItem getFeeItemById(String id) {
		TFeeItem tFeeItem = (TFeeItem)this.getHibernateTemplate().get(TFeeItem.class, Long.parseLong(id));
		return tFeeItem;
	}

	public Integer getCount(TFeeItem tFeeItem) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TFeeItem where 1=1 ");
						Query query = session.createQuery(hql.toString());
						Integer count = (Integer) query.uniqueResult();
						return count;
					}
				});

		return count;
	}

	public void updateFeeItem(TFeeItem tFeeItem) {
		this.getHibernateTemplate().update(tFeeItem);
	}

}
