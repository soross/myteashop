package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.RegisterTypeDao;
import com.crm.sysdo.po.TRegisterType;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class RegisterTypeDaoImpl extends HibernateDaoSupport implements RegisterTypeDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TRegisterType where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * ��������ֵ�
	 * @param RegisterType
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType){
		this.getHibernateTemplate().save(RegisterType);		
		return true;
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(final TRegisterType RegisterType){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TRegisterType where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", RegisterType.getId());
				query.setLong("pid", RegisterType.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * ���������ֵ�
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType){
		this.getHibernateTemplate().update(RegisterType);
		return true;
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchRegisterType(Long id){
		return null;
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TRegisterType seachRegisterType(Long id){
		
		TRegisterType RegisterType = (TRegisterType)this.getHibernateTemplate().get(TRegisterType.class, id);		
		return RegisterType;
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonRegisterType(Long pid){
		return this.getHibernateTemplate().find("from TRegisterType where pid=?", pid);
	}
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentRegisterType(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TRegisterType where pid=0";
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

	public List searchRegisterType(final TRegisterType RegisterType) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TRegisterType where 1=1");
				if(null!=RegisterType && null!=RegisterType.getRegtypename() && !"".equals(RegisterType.getRegtypename())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=RegisterType && null!=RegisterType.getRegtypename() && !"".equals(RegisterType.getRegtypename())){	
					query.setString("name", RegisterType.getRegtypename());
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
	public List searchPageRegisterType(final Long pid){
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hqlCount = "select count(*) from TRegisterType where id=:idCount or pid=:pidCount";
				
				String hql ="from TRegisterType where id =:id or pid =:pid";
				
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
