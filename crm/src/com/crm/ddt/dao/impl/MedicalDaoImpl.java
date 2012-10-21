package com.crm.ddt.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.ddt.dao.intf.MedicalDao;
import com.crm.ddt.po.TMedical;
import com.crm.page.PageUtil;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class MedicalDaoImpl extends HibernateDaoSupport implements MedicalDao {
	
	
	
	/**
	 * 添加
	 * @param Medical
	 * @return
	 */
	public Boolean addMedical(TMedical Medical){
		this.getHibernateTemplate().save(Medical);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Medical
	 * @return
	 */
	public Boolean deleteMedical(final TMedical Medical){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TMedical where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Medical.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Medical
	 * @return
	 */
	public Boolean updateMedical(TMedical Medical){
		this.getHibernateTemplate().update(Medical);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final TMedical Medical){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TMedical where 1=1 ";
				
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
	public List getMedicalList(final PageUtil pageUtil,final TMedical Medical){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TMedical where 1=1");
				
				
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
	public TMedical getMedicalById(Long id){
		
		TMedical Medical = (TMedical)this.getHibernateTemplate().get(TMedical.class, id);		
		return Medical;
	}
}
