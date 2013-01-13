package com.crm.ddt.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.ddt.dao.intf.DeformityDao;
import com.crm.ddt.po.TDeformity;
import com.crm.page.PageUtil;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class DeformityDaoImpl extends HibernateDaoSupport implements DeformityDao {
	
	
	
	/**
	 * ���
	 * @param Deformity
	 * @return
	 */
	public Boolean addDeformity(TDeformity Deformity){
		this.getHibernateTemplate().save(Deformity);		
		return true;
	}
	
	/**
	 * ɾ��
	 * @param Deformity
	 * @return
	 */
	public Boolean deleteDeformity(final TDeformity Deformity){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TDeformity where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Deformity.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * ����
	 * @param Deformity
	 * @return
	 */
	public Boolean updateDeformity(TDeformity Deformity){
		this.getHibernateTemplate().update(Deformity);
		return true;
	}
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(final TDeformity Deformity){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TDeformity where 1=1 ";
				
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();				
				return count;
			}			
		});
		
		return i;
	}
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getDeformityList(final PageUtil pageUtil,final TDeformity Deformity){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TDeformity where 1=1");
				
				
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
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TDeformity getDeformityById(Long id){
		
		TDeformity Deformity = (TDeformity)this.getHibernateTemplate().get(TDeformity.class, id);		
		return Deformity;
	}
}
