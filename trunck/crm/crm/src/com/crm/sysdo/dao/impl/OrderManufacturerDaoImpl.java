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
import com.crm.sysdo.dao.inf.OrderManufacturerDao;
import com.crm.sysdo.po.TManufacturer;
import com.crm.sysdo.po.TOrderManufacturer;

public class OrderManufacturerDaoImpl extends HibernateDaoSupport implements OrderManufacturerDao {

	public Boolean addOrderManufacturer(TOrderManufacturer tOrderManufacturer) {
		this.getHibernateTemplate().save(tOrderManufacturer);		
		return true;
	}

	public Boolean deleteOrderManufacturer(final TOrderManufacturer tOrderManufacturer) {
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TOrderManufacturer where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", tOrderManufacturer.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}

	public Integer getCount(final TOrderManufacturer tOrderManufacturer, Map map) {
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer hql = new StringBuffer("select count(*) from TOrderManufacturer where 1=1 ");
				
				if(tOrderManufacturer.getOrdermfname()!=null&&!"".equals(tOrderManufacturer.getOrdermfname())){
					hql.append(" and ordermfname like '"+tOrderManufacturer.getOrdermfname()+"'");
				}
				
				Query query = session.createQuery(hql.toString());
				Integer count = (Integer)query.uniqueResult();				
				return count;
			}			
		});
		
		return i;
	}

	public TOrderManufacturer getOrderManufacturerById(Long id) {
		TOrderManufacturer tOrderManufacturer = (TOrderManufacturer)this.getHibernateTemplate().get(TOrderManufacturer.class, id);		
		return tOrderManufacturer;
	}

	public List getOrderManufacturerList(final PageUtil pageUtil,
			final TOrderManufacturer tOrderManufacturer,final Map map) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TOrderManufacturer where 1=1 ");

						if(tOrderManufacturer.getOrdermfname()!=null&&!"".equals(tOrderManufacturer.getOrdermfname())){
							hql.append(" and ordermfname like '"+tOrderManufacturer.getOrdermfname()+"'");
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

	public Boolean updateOrderManufacturer(TOrderManufacturer tOrderManufacturer) {
		this.getHibernateTemplate().update(tOrderManufacturer);
		return true;
	}

}
