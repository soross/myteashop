package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ManufacturerDao;
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
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TManufacturing where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * 添加数据字典
	 * @param Manufacturing
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturing){
		this.getHibernateTemplate().save(Manufacturing);		
		return true;
	}
	
	/**
	 * 删除数据字典
	 * @param Manufacturing
	 * @return
	 */
	public Boolean deleteManufacturer(final TManufacturer Manufacturing){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TManufacturing where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", Manufacturing.getId());
				query.setLong("pid", Manufacturing.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * 更新数据字典
	 * @param Manufacturing
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturing){
		this.getHibernateTemplate().update(Manufacturing);
		return true;
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchManufacturer(Long id){
		return null;
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TManufacturer seachManufacturer(Long id){
		
		TManufacturer Manufacturing = (TManufacturer)this.getHibernateTemplate().get(TManufacturer.class, id);		
		return Manufacturing;
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonManufacturer(Long pid){
		return this.getHibernateTemplate().find("from TManufacturing where pid=?", pid);
	}
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentManufacturer(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TManufacturer where pid=0";
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

	public List searchManufacturer(final TManufacturer Manufacturing) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TManufacturer where 1=1");
				if(null!=Manufacturing && null!=Manufacturing.getMfname() && !"".equals(Manufacturing.getMfname())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=Manufacturing && null!=Manufacturing.getMfname() && !"".equals(Manufacturing.getMfname())){	
					query.setString("name", Manufacturing.getMfname());
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
	public List searchPageManufacturer(final Long pid){
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hqlCount = "select count(*) from TManufacturing where id=:idCount or pid=:pidCount";
				
				String hql ="from TManufacturing where id =:id or pid =:pid";
				
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
