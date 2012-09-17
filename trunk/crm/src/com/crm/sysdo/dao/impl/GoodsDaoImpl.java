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
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addGoods(TGoods Goods){
		this.getHibernateTemplate().save(Goods);		
		return true;
	}
	
	/**
	 * 删除
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(final TGoods Goods){
		Boolean bool = (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TGoods where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("id", Goods.getId());
				query.executeUpdate();
				return null;
			}
		});
		return true;
	}
	
	/**
	 * 更新
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods){
		this.getHibernateTemplate().update(Goods);
		return true;
	}
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(final TGoods Goods){
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TGoods where 1=1 ";
				if(null!=Goods && null!=Goods.getGoodsname() && !"".equals(Goods.getGoodsname())){	
					hql = hql+" and goodsname like '%"+Goods.getGoodsname()+"%'" ;
				}
				
				if(null!=Goods && null!=Goods.getCode() && !"".equals(Goods.getCode())){	
					hql = hql+" and code = '"+Goods.getCode()+"'" ;
				}
				
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
	public List getGoodsList(final PageUtil pageUtil,final TGoods Goods){
		List list = (List)this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				StringBuffer hql =new StringBuffer("from TGoods where 1=1");
				if(null!=Goods && null!=Goods.getCode() && !"".equals(Goods.getCode())){	
					hql.append(" and code = :code" );
				}
				if(null!=Goods && null!=Goods.getGoodsname() && !"".equals(Goods.getGoodsname())){	
					hql.append(" and goodsname like '%"+Goods.getGoodsname()+"%' ");
				}
				
				Query query = session.createQuery(hql.toString());
				if(null!=Goods && null!=Goods.getCode() && !"".equals(Goods.getCode())){	
					query.setString("code", Goods.getCode());
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
	public TGoods getGoodsById(Long id){
		
		TGoods Goods = (TGoods)this.getHibernateTemplate().get(TGoods.class, id);		
		return Goods;
	}
}
