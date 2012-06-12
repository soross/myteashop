package com.crm.score.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.score.dao.inf.PresentDao;
import com.crm.score.po.TPresent;

/**
 * @author lxj 
 * 礼品接口实现类
 */
public class PresentDaoImpl extends HibernateDaoSupport implements PresentDao {

	/* 
	 * 礼品添加
	 */
	public boolean addPresent(TPresent present) {
		this.getHibernateTemplate().save(present);
		return true;
	}

	/* 
	 * 获取记录数
	 */
	public int getCount(final TPresent present) {
        Integer count = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TPresent where del='0' ";
				if (present.getName() != null
						&& !"".equals(present.getName())) {
					hql += " and name = :name";
				}
				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					hql += " and invalidate >= :start";
				}
				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					hql += " and invalidate <= :end";
				}
				Query query = session.createQuery(hql);
				if (present.getName() != null
						&& !"".equals(present.getName())) {
					query.setString("name", present.getName());
				}

				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					query.setTimestamp("start", present.getStart());
				}

				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					query.setTimestamp("end", present.getEnd());
				}
				return query.uniqueResult();
			}
        	
        });
		return count;
	}

	/* 
	 * 获取礼品对象
	 */
	public TPresent getPresent(Long id) {
        TPresent present = (TPresent)this.getHibernateTemplate().get(TPresent.class, id);
		return present;
	}

	/* 
	 * 查询礼品列表
	 */
	public List searchPresent(final TPresent present,final PageUtil pageUtil) {
        List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " from TPresent where del='0' ";
				if (present.getName() != null
						&& !"".equals(present.getName())) {
					hql += " and name = :name";
				}
				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					hql += " and invalidate >= :start";
				}
				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					hql += " and invalidate <= :end";
				}
				    hql+=" order by invalidate desc";
				Query query = session.createQuery(hql);
				if (present.getName() != null
						&& !"".equals(present.getName())) {
					query.setString("name", present.getName());
				}
				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					query.setTimestamp("start", present.getStart());
				}

				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					query.setTimestamp("end", present.getEnd());
				}			
				 query.setFirstResult(pageUtil.pastart());
				 query.setMaxResults(pageUtil.getPagesize());

				return query.list();
			}
        	
        });
		return list;
	}

	/**
	 * 修改礼品
	 * @param present
	 * @return
	 */
	public boolean updatePresent(TPresent present) {
        this.getHibernateTemplate().update(present);
		return true;
	}

	/**
	 * 批量删除礼品
	 * @param ids
	 * @return
	 */
	public boolean deletePresents(final Long[] ids) {
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "update TPresent set del='1' where id in (0";
				for(int i=0;i<ids.length;i++){
					hql=hql+","+ids[i];
				}
				hql=hql+")";
				Query query = session.createQuery(hql);
				return query.executeUpdate();
			}
			
		});
		return true;
	}

	/**
	 * 修改礼品数量
	 * @return
	 */
	public boolean updatePresentNum(final TPresent present[]) {
		this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				for(Object o:present){
					TPresent pre=(TPresent)o;
					String hql = " update TPresent set num=num+("+pre.getNum()+") where id="+pre.getId();
					Query query = session.createQuery(hql);
					query.executeUpdate();
				}
				
				return null;
			}			
		});
		return true;
	}

	/**
	 * 获取符合条件的礼品(如积分是否够)的记录数
	 * 
	 * @return
	 */
	public int getPresentCount(final TPresent present) {	
		Integer count = (Integer)this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = " select count(*) from TPresent  where (invalidate>sysdate or invalidate is null)";
				if (present.getName() != null
						&& !"".equals(present.getName())) {
					hql += " and name like :name";
				}
				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					hql += " and invalidate >= :start";
				}
				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					hql += " and invalidate <= :end";
				}				
				Query query = session.createQuery(hql);
				if (present.getName() != null
						&& !"".equals(present.getName())) {
					query.setString("name", "%"+present.getName()+"%");
				}

				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					query.setTimestamp("start", present.getStart());
				}

				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					query.setTimestamp("end", present.getEnd());
				}
				return query.uniqueResult();
			}
        
		});
		return count;
	}

	
	/**
	 * 查询符合条件的礼品(如积分是否够)
	 * 
	 * @param pageUtil
	 * @return
	 */
	public List presentList(final TPresent present,final PageUtil pageUtil) {
        List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
			    String hql = "from TPresent  where (invalidate>sysdate or invalidate is null) ";
			    if (present.getName() != null
						&& !"".equals(present.getName())) {
					hql += " and name like :name";
				}
				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					hql += " and invalidate >= :start";
				}
				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					hql += " and invalidate <= :end";
				}	
				hql+=" order by invalidate desc";
			    Query query = session.createQuery(hql);
			    if (present.getName() != null
						&& !"".equals(present.getName())) {
					query.setString("name", "%"+present.getName()+"%");
				}

				if (present.getStart() != null
						&& !"".equals(present.getStart())) {
					query.setTimestamp("start", present.getStart());
				}

				if (present.getEnd() != null
						&& !"".equals(present.getEnd())) {
					query.setTimestamp("end", present.getEnd());
				}	
			    query.setFirstResult(pageUtil.pastart());
			    query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}
        	
        });
		return list;
	}

}
