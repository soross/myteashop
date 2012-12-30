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
import com.crm.sysdo.dao.inf.ManufacturerDao;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TManufacturer;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ManufacturerDaoImpl extends HibernateDaoSupport implements ManufacturerDao {
	
	/**
	 * 添加
	 * @param Manufacturer
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturer){
		this.getHibernateTemplate().save(Manufacturer);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(final TManufacturer Manufacturer){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TManufacturer where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Manufacturer.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer){
		this.getHibernateTemplate().update(Manufacturer);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final TManufacturer Manufacturer,Map map){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer hql = new StringBuffer("select count(*) from TManufacturer where 1=1 ");
				
				if(Manufacturer.getMfname()!=null&&!"".equals(Manufacturer.getMfname())){
					hql.append(" and mfname like '"+Manufacturer.getMfname()+"'");
				}
				
				Query query = session.createQuery(hql.toString());
				Integer count = (Integer)query.uniqueResult();				
				return count;
			}			
		});
		
		return i;
	}
	/**
	 * 取得列表
	 * @return
	 */
	public List getManufacturerList(final PageUtil pageUtil,final TManufacturer Manufacturer,final Map map){
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TManufacturer where 1=1 ");

						if(Manufacturer.getMfname()!=null&&!"".equals(Manufacturer.getMfname())){
							hql.append(" and mfname like '"+Manufacturer.getMfname()+"'");
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
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TManufacturer getManufacturerById(Long id){
		
		TManufacturer Manufacturer = (TManufacturer)this.getHibernateTemplate().get(TManufacturer.class, id);		
		return Manufacturer;
	}

}
