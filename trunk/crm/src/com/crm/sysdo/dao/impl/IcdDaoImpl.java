package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.IcdDao;
import com.crm.sysdo.po.TIcd;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdDaoImpl extends HibernateDaoSupport implements IcdDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TIcd where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * ��������ֵ�
	 * @param Icd
	 * @return
	 */
	public Boolean addIcd(TIcd Icd){
		this.getHibernateTemplate().save(Icd);		
		return true;
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(final TIcd Icd){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TIcd where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", Icd.getId());
				query.setLong("pid", Icd.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * ���������ֵ�
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd){
		this.getHibernateTemplate().update(Icd);
		return true;
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchIcd(Long id){
		return null;
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TIcd seachIcd(Long id){
		
		TIcd Icd = (TIcd)this.getHibernateTemplate().get(TIcd.class, id);		
		return Icd;
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonIcd(Long pid){
		return this.getHibernateTemplate().find("from TIcd where pid=?", pid);
	}
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentIcd(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TIcd where pid=0";
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

	public List searchIcd(final TIcd Icd) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TIcd where 1=1");
				if(null!=Icd && null!=Icd.getIcdname() && !"".equals(Icd.getIcdname())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=Icd && null!=Icd.getIcdname() && !"".equals(Icd.getIcdname())){	
					query.setString("name", Icd.getIcdname());
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
	public List searchPageIcd(final Long pid){
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hqlCount = "select count(*) from TIcd where id=:idCount or pid=:pidCount";
				
				String hql ="from TIcd where id =:id or pid =:pid";
				
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
