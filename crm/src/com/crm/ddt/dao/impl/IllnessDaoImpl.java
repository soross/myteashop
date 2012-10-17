package com.crm.ddt.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.ddt.dao.intf.IllnessDao;
import com.crm.ddt.po.TIllness;
import com.crm.page.PageUtil;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IllnessDaoImpl extends HibernateDaoSupport implements IllnessDao {
	
	
	
	/**
	 * 添加
	 * @param Illness
	 * @return
	 */
	public Boolean addIllness(TIllness Illness){
		this.getHibernateTemplate().save(Illness);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Illness
	 * @return
	 */
	public Boolean deleteIllness(final TIllness Illness){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TIllness where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Illness.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Illness
	 * @return
	 */
	public Boolean updateIllness(TIllness Illness){
		this.getHibernateTemplate().update(Illness);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final TIllness Illness){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TIllness where 1=1 ";
				
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
	public List getIllnessList(final PageUtil pageUtil,final TIllness Illness){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TIllness where 1=1");
				
				
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
	public TIllness getIllnessById(Long id){
		
		TIllness Illness = (TIllness)this.getHibernateTemplate().get(TIllness.class, id);		
		return Illness;
	}
}
