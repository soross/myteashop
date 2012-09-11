package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ToolSaveDao;
import com.crm.sysdo.po.TToolSave;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ToolSaveDaoImpl extends HibernateDaoSupport implements ToolSaveDao {
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TToolSave where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * 添加数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave){
		this.getHibernateTemplate().save(ToolSave);		
		return true;
	}
	
	/**
	 * 删除数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(final TToolSave ToolSave){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TToolSave where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", ToolSave.getId());
				query.setLong("pid", ToolSave.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * 更新数据字典
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave){
		this.getHibernateTemplate().update(ToolSave);
		return true;
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchToolSave(Long id){
		return null;
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TToolSave seachToolSave(Long id){
		
		TToolSave ToolSave = (TToolSave)this.getHibernateTemplate().get(TToolSave.class, id);		
		return ToolSave;
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonToolSave(Long pid){
		return this.getHibernateTemplate().find("from TToolSave where pid=?", pid);
	}
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentToolSave(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TToolSave where pid=0";
				Query query = session.createQuery(hql);
				if(pageUtil!=null){
					query.setMaxResults(pageUtil.getPagesize());
					query.setFirstResult(pageUtil.pastart());
				}
				List list = (List)query.list();
				
				return list;
			}
		});		
		return list;
	}

	public List searchToolSave(final TToolSave ToolSave) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TToolSave where 1=1");
				if(null!=ToolSave && null!=ToolSave.getToolname() && !"".equals(ToolSave.getToolname())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=ToolSave && null!=ToolSave.getToolname() && !"".equals(ToolSave.getToolname())){	
					query.setString("name", ToolSave.getToolname());
				}
				
				List list = query.list();
				
				return list;
			}			
		});	
		
		return list;
	}
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageToolSave(final Long pid){
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hqlCount = "select count(*) from TToolSave where id=:idCount or pid=:pidCount";
				
				String hql ="from TToolSave where id =:id or pid =:pid";
				
				Query queryCount = session.createQuery(hqlCount);				
				queryCount.setLong("idCount", pid);
				queryCount.setLong("pidCount", pid);
				
				int i = (Integer)queryCount.uniqueResult();
				
				Query query = session.createQuery(hql);
				query.setLong("id", pid);
				query.setLong("pid", pid);
				
				query.setFirstResult(0);
				query.setMaxResults(i);
				
				List list = query.list();
				
				return list;
			}			
		});	
		
		return list;
	}
	

}
