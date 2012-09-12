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
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TToolSave;
/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ToolSaveDaoImpl extends HibernateDaoSupport implements ToolSaveDao {
	
	/**
	 * ���
	 * @param ToolSave
	 * @return
	 */
	public Boolean addToolSave(TToolSave ToolSave){
		this.getHibernateTemplate().save(ToolSave);		
		return true;
	}
	
	/**
	 * ɾ��
	 * @param ToolSave
	 * @return
	 */
	public Boolean deleteToolSave(final TToolSave ToolSave){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TToolSave where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", ToolSave.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * ����
	 * @param ToolSave
	 * @return
	 */
	public Boolean updateToolSave(TToolSave ToolSave){
		this.getHibernateTemplate().update(ToolSave);
		return true;
	}
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TToolSave ToolSave){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TToolSave where 1=1 ";
				
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
	public List getToolSaveList(final PageUtil pageUtil,final TToolSave ToolSave){
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
	public TToolSave getToolSaveById(Long id){
		
		TToolSave ToolSave = (TToolSave)this.getHibernateTemplate().get(TToolSave.class, id);		
		return ToolSave;
	}

}
