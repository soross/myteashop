package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.po.TClientrule;
import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.UnitDao;
import com.crm.sysdo.po.TUnit;

public class UnitImpl extends HibernateDaoSupport implements UnitDao {
	
	/**
	 * 根据条件查询签约厂家列表
	 * 
	 * @param client
	 * @param map
	 * @param pageUtil
	 * @return
	 */
	public List unitList(final TUnit tunit, final Map map,
			final PageUtil pageUtil) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TUnit where 1=1 ");

						if(tunit.getUnitname()!=null&&!"".equals(tunit.getUnitname())){
							hql.append(" and unitname like '"+tunit.getUnitname()+"'");
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
	
	/**
	 * 取得总记录数
	 * 
	 * @param map
	 * @param client
	 * @return
	 */
	public Integer getCount(final TUnit tunit, Map map) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TUnit where 1=1 ");
						
						if(tunit.getUnitname()!=null&&!"".equals(tunit.getUnitname())){
							hql.append(" and unitname like '"+tunit.getUnitname()+"'");
						}
						
						Query query = session.createQuery(hql.toString());

						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});

		return count;
	}

	public void addUnit(TUnit tunit) {
		this.getHibernateTemplate().save(tunit);
	}
	
	public TUnit get(String id){
		TUnit tunit = (TUnit)this.getHibernateTemplate().get(TUnit.class, Long.parseLong(id));
		return tunit;
	}
	
	public void updateUnit(TUnit tunit){
		this.getHibernateTemplate().update(tunit);
	}
	
	public void delUnit(String id) {
		TUnit tunit = this.get(id);
		this.getHibernateTemplate().delete(tunit);
	}

}
