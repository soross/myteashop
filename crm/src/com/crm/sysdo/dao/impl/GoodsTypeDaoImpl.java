package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.GoodsTypeDao;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TGoodsType;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class GoodsTypeDaoImpl extends HibernateDaoSupport implements GoodsTypeDao {
	
	/**
	 * 添加
	 * @param GoodsType
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType){
		this.getHibernateTemplate().save(GoodsType);		
		return true;
	}
	
	/**
	 * 删除
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(final TGoodsType GoodsType){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TGoodsType where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", GoodsType.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType){
		this.getHibernateTemplate().update(GoodsType);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TGoodsType GoodsType){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TGoodsType where 1=1 ";
				
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
	public List getGoodsTypeList(final PageUtil pageUtil,final TGoodsType GoodsType){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TGoodsType where 1=1");
				if(null!=GoodsType && null!=GoodsType.getTypename() && !"".equals(GoodsType.getTypename())){	
					hql.append(" and name=:name");
				}
				
				Query query = session.createQuery(hql.toString());
				if(null!=GoodsType && null!=GoodsType.getTypename() && !"".equals(GoodsType.getTypename())){	
					query.setString("name", GoodsType.getTypename());
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
	public TGoodsType getGoodsTypeById(Long id){
		
		TGoodsType GoodsType = (TGoodsType)this.getHibernateTemplate().get(TGoodsType.class, id);		
		return GoodsType;
	}
	

}
