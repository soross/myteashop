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
import com.crm.sysdo.po.TGoodsType;
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
	 * ���
	 * @param RegisterType
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType){
		this.getHibernateTemplate().save(RegisterType);		
		return true;
	}
	
	/**
	 * ɾ��
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(final TRegisterType RegisterType){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TRegisterType where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", RegisterType.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * ����
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType){
		this.getHibernateTemplate().update(RegisterType);
		return true;
	}
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TRegisterType RegisterType){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TRegisterType where 1=1 ";
				
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
	public List getRegisterTypeList(final PageUtil pageUtil,final TRegisterType RegisterType){
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
	public TRegisterType getRegisterTypeById(Long id){
		
		TRegisterType RegisterType = (TRegisterType)this.getHibernateTemplate().get(TRegisterType.class, id);		
		return RegisterType;
	}
	

}
