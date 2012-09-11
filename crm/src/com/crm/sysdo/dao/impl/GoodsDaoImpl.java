package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.GoodsDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;
/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "select count(*) from TGoods where pid=0";
				Query query = session.createQuery(hql);
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}			
		});
		
		return i;
	}
	
	/**
	 * 添加数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean addGoods(TGoods Goods){
		this.getHibernateTemplate().save(Goods);		
		return true;
	}
	
	/**
	 * 删除数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(final TGoods Goods){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TGoods where id=:id or pid=:pid";
				
				Query query = session.createQuery(hql);
				query.setLong("id", Goods.getId());
				query.setLong("pid", Goods.getId());				
				
				query.executeUpdate();
				return null;
			}
		});
		
		
		return true;
	}
	
	/**
	 * 更新数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods){
		this.getHibernateTemplate().update(Goods);
		return true;
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchGoods(Long id){
		return null;
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TGoods seachGoods(Long id){
		
		TGoods Goods = (TGoods)this.getHibernateTemplate().get(TGoods.class, id);		
		return Goods;
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonGoods(Long pid){
		return this.getHibernateTemplate().find("from TGoods where pid=?", pid);
	}
	
	/**
	 * 根据小类查询父类对象
	 * @param id
	 * @return
	 */
	public List searchParentGoods(final PageUtil pageUtil){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String hql = "from TGoods where pid=0";
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

	public List searchGoods(final TGoods Goods) {
		
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TGoods where 1=1");
				if(null!=Goods && null!=Goods.getGoodsname() && !"".equals(Goods.getGoodsname())){	
					hql.append(" and name=:name");
				}
				Query query = session.createQuery(hql.toString());
				if(null!=Goods && null!=Goods.getGoodsname() && !"".equals(Goods.getGoodsname())){	
					query.setString("name", Goods.getGoodsname());
				}
				
				List list = query.list();
				
				return list;
			}			
		});	
		
		return list;
	}
	
	

}
