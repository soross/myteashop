package com.crm.ddt.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.ddt.dao.intf.HisDao;
import com.crm.ddt.po.THis;
import com.crm.page.PageUtil;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class HisDaoImpl extends HibernateDaoSupport implements HisDao {
	
	
	
	/**
	 * 添加
	 * @param His
	 * @return
	 */
	public Boolean addHis(THis His){
		this.getHibernateTemplate().save(His);		
		return true;
	}
	
	/**
	 * 删除
	 * @param His
	 * @return
	 */
	public Boolean deleteHis(final THis His){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete THis where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", His.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param His
	 * @return
	 */
	public Boolean updateHis(THis His){
		this.getHibernateTemplate().update(His);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final THis His){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from THis where 1=1 ";
				if(null!=His && null!=His.getName() && !"".equals(His.getName())){	
					hql = hql+" and name like '%"+His.getName()+"%'" ;
				}
				
				if(null!=His && null!=His.getSufferer() && !"".equals(His.getSufferer())){	
					hql = hql+" and sufferer = '"+His.getSufferer()+"'" ;
				}
				
				Query query = session.createQuery(hql);
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
	public List getHisList(final PageUtil pageUtil,final THis His){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from THis where 1=1");
				if(null!=His && null!=His.getSufferer() && !"".equals(His.getSufferer())){	
					hql.append(" and sufferer = :code" );
				}
				if(null!=His && null!=His.getName() && !"".equals(His.getName())){	
					hql.append(" and name like '%"+His.getName()+"%' ");
				}
				
				Query query = session.createQuery(hql.toString());
				if(null!=His && null!=His.getSufferer() && !"".equals(His.getSufferer())){	
					query.setString("code", His.getSufferer());
				}
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
	public THis getHisById(Long id){
		
		THis His = (THis)this.getHibernateTemplate().get(THis.class, id);		
		return His;
	}
}
