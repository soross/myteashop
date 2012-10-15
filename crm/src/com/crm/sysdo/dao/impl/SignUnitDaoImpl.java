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
import com.crm.sysdo.dao.inf.SignUnitDao;
import com.crm.sysdo.po.TSignUnit;
import com.crm.sysdo.po.TUnit;

public class SignUnitDaoImpl  extends HibernateDaoSupport  implements SignUnitDao {

	public void addSignUnit(TSignUnit tSignUnit) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(tSignUnit);
	}

	public void delSignUnit(String id) {
		// TODO Auto-generated method stub
		TSignUnit tSignUnit = this.get(id);
		this.getHibernateTemplate().delete(tSignUnit);
	}

	public TSignUnit get(String id) {
		// TODO Auto-generated method stub
		TSignUnit tSignUnit = (TSignUnit)this.getHibernateTemplate().get(TSignUnit.class, Long.parseLong(id));
		return tSignUnit;
	}

	public Integer getCount(final TSignUnit tSignUnit, Map map) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TSignUnit where 1=1 ");
						
						if(tSignUnit.getSignunitname()!=null&&!"".equals(tSignUnit.getSignunitname())){
							hql.append(" and signunitname like '"+tSignUnit.getSignunitname()+"'");
						}
						
						Query query = session.createQuery(hql.toString());

						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});

		return count;
	}

	public List signunitList(final TSignUnit tSignUnit, Map map, final PageUtil pageUtil) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TSignUnit where 1=1 ");

						if(tSignUnit.getSignunitname()!=null&&!"".equals(tSignUnit.getSignunitname())){
							hql.append(" and signunitname like '"+tSignUnit.getSignunitname()+"'");
						}

						Query query = session.createQuery(hql.toString());

						
						
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						List list = query.list();
						return list;
					}
				});

		return list;
	}

	public void updateSignUnit(TSignUnit tSignUnit) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(tSignUnit);
	}

}
