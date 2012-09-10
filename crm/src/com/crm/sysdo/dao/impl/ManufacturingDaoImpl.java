package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.po.TData;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ManufacturingDaoImpl extends HibernateDaoSupport implements DataDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TData where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addData(TData data){
		this.getHibernateTemplate().save(data);		
		return true;
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean deleteData(final TData data){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TData where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", data.getId());
				query.setLong("pid", data.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * ���������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean updateData(TData data){
		this.getHibernateTemplate().update(data);
		return true;
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchData(Long id){
		return null;
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TData seachData(Long id){
		
		TData data = (TData)this.getHibernateTemplate().get(TData.class, id);		
		return data;
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid){
		return this.getHibernateTemplate().find("from TData where pid=?", pid);
	}
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentData(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TData where pid=0";
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

	public List searchData(final TData data) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TData where 1=1");
				if(null!=data && null!=data.getName() && !"".equals(data.getName())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=data && null!=data.getName() && !"".equals(data.getName())){	
					query.setString("name", data.getName());
				}
				
				List list = query.list();
				
				return list;
			}			
		});	
		
		return list;
	}
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageData(final Long pid){
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hqlCount = "select count(*) from TData where id=:idCount or pid=:pidCount";
				
				String hql ="from TData where id =:id or pid =:pid";
				
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
