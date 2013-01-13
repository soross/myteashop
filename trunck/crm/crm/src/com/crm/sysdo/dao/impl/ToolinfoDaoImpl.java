package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ToolinfoDao;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TToolinfo;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class ToolinfoDaoImpl extends HibernateDaoSupport implements ToolinfoDao {
	
	/**
	 * 添加
	 * @param Toolinfo
	 * @return
	 */
	public Boolean addToolinfo(TToolinfo Toolinfo){
		this.getHibernateTemplate().save(Toolinfo);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Toolinfo
	 * @return
	 */
	public Boolean deleteToolinfo(final TToolinfo Toolinfo){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TToolinfo where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Toolinfo.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Toolinfo
	 * @return
	 */
	public Boolean updateToolinfo(TToolinfo Toolinfo){
		this.getHibernateTemplate().update(Toolinfo);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TToolinfo Toolinfo){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TToolinfo where 1=1 ";
				
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
	public List getToolinfoList(final PageUtil pageUtil,final TToolinfo Toolinfo){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TToolinfo where 1=1");
				if(null!=Toolinfo && null!=Toolinfo.getToolname() && !"".equals(Toolinfo.getToolname())){	
					hql.append(" and name=:name");
				}
				
				Query query = session.createQuery(hql.toString());
				if(null!=Toolinfo && null!=Toolinfo.getToolname() && !"".equals(Toolinfo.getToolname())){	
					query.setString("name", Toolinfo.getToolname());
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
	public TToolinfo getToolinfoById(Long id){
		
		TToolinfo Toolinfo = (TToolinfo)this.getHibernateTemplate().get(TToolinfo.class, id);		
		return Toolinfo;
	}

}
