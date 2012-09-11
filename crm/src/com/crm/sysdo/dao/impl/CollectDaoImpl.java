package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.CollectDao;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class CollectDaoImpl extends HibernateDaoSupport implements CollectDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TCollect where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * ��������ֵ�
	 * @param Collect
	 * @return
	 */
	public Boolean addCollect(TCollect Collect){
		this.getHibernateTemplate().save(Collect);		
		return true;
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param Collect
	 * @return
	 */
	public Boolean deleteCollect(final TCollect Collect){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TCollect where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", Collect.getId());
				query.setLong("pid", Collect.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * ���������ֵ�
	 * @param Collect
	 * @return
	 */
	public Boolean updateCollect(TCollect Collect){
		this.getHibernateTemplate().update(Collect);
		return true;
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchCollect(Long id){
		return null;
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TCollect seachCollect(Long id){
		
		TCollect Collect = (TCollect)this.getHibernateTemplate().get(TCollect.class, id);		
		return Collect;
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonCollect(Long pid){
		return this.getHibernateTemplate().find("from TCollect where pid=?", pid);
	}
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentCollect(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TCollect where pid=0";
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

	public List searchCollect(final TCollect Collect) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TCollect where 1=1");
				if(null!=Collect && null!=Collect.getCollectname() && !"".equals(Collect.getCollectname())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=Collect && null!=Collect.getCollectname() && !"".equals(Collect.getCollectname())){	
					query.setString("name", Collect.getCollectname());
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
	public List searchPageCollect(final Long pid){
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hqlCount = "select count(*) from TCollect where id=:idCount or pid=:pidCount";
				
				String hql ="from TCollect where id =:id or pid =:pid";
				
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
