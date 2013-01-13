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
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TIcd;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdDaoImpl extends HibernateDaoSupport implements IcdDao {
	
	/**
	 * 添加
	 * @param Icd
	 * @return
	 */
	public Boolean addIcd(TIcd Icd){
		this.getHibernateTemplate().save(Icd);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(final TIcd Icd){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TIcd where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Icd.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd){
		this.getHibernateTemplate().update(Icd);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcd Icd){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TIcd where 1=1 ";
				
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
	public List getIcdList(final PageUtil pageUtil,final TIcd Icd){
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
	public TIcd getIcdById(Long id){
		
		TIcd Icd = (TIcd)this.getHibernateTemplate().get(TIcd.class, id);		
		return Icd;
	}
	

}
