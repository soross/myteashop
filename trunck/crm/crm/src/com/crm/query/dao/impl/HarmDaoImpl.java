package com.crm.query.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.query.dao.intf.IcdIllnessDescDao;
import com.crm.query.po.TIcdIllnessDesc;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class HarmDaoImpl extends HibernateDaoSupport implements IcdIllnessDescDao {
	
	/**
	 * ���
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean addIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){
		this.getHibernateTemplate().save(IcdIllnessDesc);		
		return true;
	}
	
	/**
	 * ɾ��
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean deleteIcdIllnessDesc(final TIcdIllnessDesc IcdIllnessDesc){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TIcdIllnessDesc where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", IcdIllnessDesc.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * ����
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean updateIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){
		this.getHibernateTemplate().update(IcdIllnessDesc);
		return true;
	}
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIcdIllnessDesc IcdIllnessDesc){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TIcdIllnessDesc where 1=1 ";
				
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
	public List getIcdIllnessDescList(final PageUtil pageUtil,final TIcdIllnessDesc IcdIllnessDesc){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TIcdIllnessDesc where 1=1");
				if(null!=IcdIllnessDesc && null!=IcdIllnessDesc.getIcdname() && !"".equals(IcdIllnessDesc.getIcdname())){	
					hql.append(" and name=:name");
				}
				
				Query query = session.createQuery(hql.toString());
				if(null!=IcdIllnessDesc && null!=IcdIllnessDesc.getIcdname() && !"".equals(IcdIllnessDesc.getIcdname())){	
					query.setString("name", IcdIllnessDesc.getIcdname());
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
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIcdIllnessDesc getIcdIllnessDescById(Long id){
		
		TIcdIllnessDesc IcdIllnessDesc = (TIcdIllnessDesc)this.getHibernateTemplate().get(TIcdIllnessDesc.class, id);		
		return IcdIllnessDesc;
	}
	

}
