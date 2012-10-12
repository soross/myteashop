package com.crm.ddt.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.ddt.dao.intf.HisDao;
import com.crm.ddt.dao.intf.ProveDao;
import com.crm.ddt.po.THis;
import com.crm.ddt.po.TProve;
import com.crm.page.PageUtil;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ProveDaoImpl extends HibernateDaoSupport implements ProveDao {
	
	
	
	/**
	 * 添加
	 * @param Prove
	 * @return
	 */
	public Boolean addProve(TProve Prove){
		this.getHibernateTemplate().save(Prove);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Prove
	 * @return
	 */
	public Boolean deleteProve(final TProve Prove){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TProve where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Prove.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Prove
	 * @return
	 */
	public Boolean updateProve(TProve Prove){
		this.getHibernateTemplate().update(Prove);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final TProve Prove){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TProve where 1=1 ";
				
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
	public List getProveList(final PageUtil pageUtil,final TProve Prove){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TProve where 1=1");
				
				
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
	public TProve getProveById(Long id){
		
		TProve Prove = (TProve)this.getHibernateTemplate().get(TProve.class, id);		
		return Prove;
	}
}
