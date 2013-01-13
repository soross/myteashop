package com.crm.query.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.query.dao.intf.IcdIllnessDao;
import com.crm.query.po.TIcdIllness;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdIllnessDaoImpl extends HibernateDaoSupport implements IcdIllnessDao {
	
	/**
	 * 添加
	 * @param IcdIllness
	 * @return
	 */
	public Boolean addIcdIllness(TIcdIllness IcdIllness){
		this.getHibernateTemplate().save(IcdIllness);		
		return true;
	}
	
	/**
	 * 删除
	 * @param IcdIllness
	 * @return
	 */
	public Boolean deleteIcdIllness(final TIcdIllness IcdIllness){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TIcdIllness where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", IcdIllness.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param IcdIllness
	 * @return
	 */
	public Boolean updateIcdIllness(TIcdIllness IcdIllness){
		this.getHibernateTemplate().update(IcdIllness);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcdIllness IcdIllness){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TIcdIllness where 1=1 ";
				
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
	public List getIcdIllnessList(final PageUtil pageUtil,final TIcdIllness IcdIllness){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TIcdIllness where 1=1");
				if(null!=IcdIllness && null!=IcdIllness.getIcdname() && !"".equals(IcdIllness.getIcdname())){	
					hql.append(" and name=:name");
				}
				
				Query query = session.createQuery(hql.toString());
				if(null!=IcdIllness && null!=IcdIllness.getIcdname() && !"".equals(IcdIllness.getIcdname())){	
					query.setString("name", IcdIllness.getIcdname());
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
	public TIcdIllness getIcdIllnessById(Long id){
		
		TIcdIllness IcdIllness = (TIcdIllness)this.getHibernateTemplate().get(TIcdIllness.class, id);		
		return IcdIllness;
	}
	

}
