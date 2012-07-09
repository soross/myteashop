package com.crm.score.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.score.dao.inf.ScoreDao;
import com.crm.score.po.TApplyscore;
import com.crm.score.po.TBack;
import com.crm.score.po.TChange;
import com.crm.score.po.TChangeItem;
import com.crm.score.po.TMonthScore;
import com.crm.score.po.TScorelog;
import com.crm.score.po.TTotalScore;
import com.crm.score.po.TYearScore;


/**
 * @author lxj 积分操作实现类
 */
public class ScoreDaoImpl extends HibernateDaoSupport implements ScoreDao {

	/**
	 * 获得单个已申请的用户
	 * @return
	 */
	public TApplyscore getApply(final String phone) {
		TApplyscore apply = (TApplyscore) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = " from TApplyscore where phone = :phone";
						Query query = session.createQuery(hql);
						query.setString("phone", phone);
						return query.uniqueResult();
					}

				});

		return apply;
	}

	 /**
     * 获得已申请用户列表
     * @param tapplyScore
     * @param pageUtil
     * @return
     */
	public List searchApply(final TApplyscore tapplyScore, final PageUtil pageUtil) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = " from TApplyscore where 1=1 ";
						if(tapplyScore.getPhone()!=null&&!"".equals(tapplyScore.getPhone())){
							hql += " and phone='%"+tapplyScore.getPhone()+"%'";
						}
						hql+=" order by id";
						Query query = session.createQuery(hql);
						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());
						return query.list();
					}

				});
		return list;
	}

	  /**
     * 获取积分申请记录数
     * @return
     */
	public int getApplyCount(final TApplyscore score) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TApplyscore where 1=1 ";
						if(score.getPhone()!=null&&!"".equals(score.getPhone())){
							hql += " and phone like '%"+score.getPhone()+"%'";
						}
						Query query = session.createQuery(hql);
						return query.uniqueResult();
					}

				});
		return count;
	}

	   /**
     * 添加积分申请信息
     * @param applyScore
     * @return
     */
	public boolean addApply(TApplyscore applyScore) {
		this.getHibernateTemplate().save(applyScore);
		return true;
	}

	/**
	 * 获取符合条件的礼品(如积分是否够)的记录数
	 * 
	 * @return
	 */
	public int getPresentCount(final String phone) {	
		Integer count = (Integer)this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = " select count(*) from TPresent p where p.invalidate>sysdate or p.invalidate is null";
				Query query = session.createQuery(hql);
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
	public List presentList(final String phone,final PageUtil pageUtil) {
        List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
			    String hql = "from TPresent p where p.invalidate>sysdate or p.invalidate is null";
			    Query query = session.createQuery(hql);
			    query.setFirstResult(pageUtil.pastart());
			    query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}
        	
        });
		return list;
	}

	  /**
     * 获取用户累计积分
     * @return
     */
	public TTotalScore getTotal(final String phone) {
		TTotalScore total = (TTotalScore)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TTotalScore where phone='"+phone+"'";
				Query query = session.createQuery(hql);
				return query.uniqueResult();
			}
			
		});
		return total;
	}

    /**
     * 更新累计积分
     * @param total
     * @return
     */
	public boolean updateTotalScore(final TTotalScore total) {
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "update TTotalScore set vintegral=vintegral+("+total.getVintegral()+"),invalible=invalible+("+total.getInvalible()+") where phone='"+total.getPhone()+"'";
				Query query = session.createQuery(hql);
				query.executeUpdate();
				return null;
			}
			
		});
		return true;
	}

	 /**
     * 获取当前序列
     * @param tableName
     * @return
     */
	public int getCurrent(final String seq) {
		
		Object curr=this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				
				String sql = "select "+seq+".nextval as a from dual";
				
				SQLQuery query = session.createSQLQuery(sql);
				query.addScalar("a", Hibernate.INTEGER);
				return query.uniqueResult();
			}
			
		});
		return Integer.parseInt(curr.toString());
	}

	/**
     * 添加兑换记录
     * @param change
     * @return
     */
	public boolean addChange(TChange change) {
		this.getHibernateTemplate().save(change);
		return true;
	}

	/**
     * 添加积分操作日志
     * @param scoreLog
     * @return
     */
	public boolean addTScorelog(TScorelog scoreLog) {
		this.getHibernateTemplate().save(scoreLog);
		return true;
	}

	 /**
     * 获取兑换历史列表
     * @param phone
     * @return
     */
	public List getChangeList(final TChange change,final PageUtil pageUtil) {
		List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " from TChange  where phone='"+change.getPhone()+"'";
				if(change.getStartDate()!=null && !"".equals(change.getStartDate())){
					hql+=" and cdate>=:startDate";
				}
				if(change.getEndDate()!=null && !"".equals(change.getEndDate())){
					hql+=" and cdate<=:endDate";
				}
				Query query = session.createQuery(hql);
				if(change.getStartDate()!=null && !"".equals(change.getStartDate())){
					query.setTimestamp("startDate", change.getStartDate());
				}
				if(change.getEndDate()!=null && !"".equals(change.getEndDate())){
					query.setTimestamp("endDate", change.getEndDate());
				}
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				List list = query.list();
				for(Object obj:list){
					TChange change = (TChange)obj;
					Hibernate.initialize(change.getItems());
				}
				return list;
			}
			
		});
		return list;
	}

	/**
     * 获取兑换记录数
     * @return
     */
	public int getChangeNum(final TChange change) {
		Integer count = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " select count(*) from TChange where phone='"+change.getPhone()+"'";
				if(change.getStartDate()!=null && !"".equals(change.getStartDate())){
					hql+=" and cdate>=:startDate";
				}
				if(change.getEndDate()!=null && !"".equals(change.getEndDate())){
					hql+=" and cdate<=:endDate";
				}
				Query query = session.createQuery(hql);	
				if(change.getStartDate()!=null && !"".equals(change.getStartDate())){
					query.setTimestamp("startDate", change.getStartDate());
				}
				if(change.getEndDate()!=null && !"".equals(change.getEndDate())){
					query.setTimestamp("endDate", change.getEndDate());
				}
				return query.uniqueResult();
			}
			
		});
		return count;
	}

	/**
     * 根据id获取兑换信息
     * @param id
     * @return
     */
	public TChange getChange(final String id) {
		TChange change = (TChange)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql =" from TChange where id='"+id+"'" ;
				Query query = session.createQuery(hql);
				TChange change = (TChange)query.uniqueResult();
				Hibernate.initialize(change.getItems());
				return change;
			}
			
		});
		return change;
	}
	
	/**
	 * 添加回退记录
	 * @param back
	 * @return
	 */
	public boolean addBack(TBack back){
		this.getHibernateTemplate().save(back);
		return true;
	}

	 /**
     * 获取明细单项
     * @param id
     * @return
     */
	public TChangeItem getItem(final Long id) {
		TChangeItem item = (TChangeItem)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql =" from TChangeItem where id="+id;
				Query query = session.createQuery(hql);
				return query.uniqueResult();
			}
			
		});
		return item;
	}

	/**
     * 修改兑换明细
     * @param item
     * @return
     */
	public boolean updateItem(final TChangeItem item) {
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql ="update TChangeItem set backnum=:backnum where id=:id";
				Query query = session.createQuery(hql);
				query.setLong("backnum", item.getBacknum());
				query.setLong("id", item.getId());
				return query.executeUpdate();
			}
			
		});
		return true;
	}

	  /**
     * 查询月积分
     * @param monthScore
     * @return
     */
	public List searchMonth(final TMonthScore monthScore,final PageUtil pageUtil) {
		List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TMonthScore where 1=1";
				if(monthScore.getPhone()!=null && !"".equals(monthScore.getPhone())){
					hql+=" and phone like :phone";
				}
				if(monthScore.getSdate()!=null && !"".equals(monthScore.getSdate())){
					hql+=" and month>=:sdate";
				}
				if(monthScore.getEdate()!=null && !"".equals(monthScore.getEdate())){
					hql+=" and month<=:edate";
				}
				Query query = session.createQuery(hql);
				if(monthScore.getPhone()!=null && !"".equals(monthScore.getPhone())){
					query.setString("phone", "%"+monthScore.getPhone()+"%");
				}
				if(monthScore.getSdate()!=null && !"".equals(monthScore.getSdate())){
					query.setString("sdate", monthScore.getSdate());
				}
				if(monthScore.getEdate()!=null && !"".equals(monthScore.getEdate())){
					query.setString("edate", monthScore.getEdate());
				}
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}			
		});
		return list;
	}
	
	  /**
     * 查询月积分记录数
     * @param monthScore
     * @return
     */
    public int getMonthCount(final TMonthScore monthScore){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TMonthScore where 1=1";
				if(monthScore.getPhone()!=null && !"".equals(monthScore.getPhone())){
					hql+=" and phone like :phone";
				}
				if(monthScore.getSdate()!=null && !"".equals(monthScore.getSdate())){
					hql+=" and month>=:sdate";
				}
				if(monthScore.getEdate()!=null && !"".equals(monthScore.getEdate())){
					hql+=" and month<=:edate";
				}
				Query query = session.createQuery(hql);
				if(monthScore.getPhone()!=null && !"".equals(monthScore.getPhone())){
					query.setString("phone", "%"+monthScore.getPhone()+"%");
				}
				if(monthScore.getSdate()!=null && !"".equals(monthScore.getSdate())){
					query.setString("sdate", monthScore.getSdate());
				}
				if(monthScore.getEdate()!=null && !"".equals(monthScore.getEdate())){
					query.setString("edate", monthScore.getEdate());
				}
				return query.uniqueResult();
			}});
    	return count==null?0:Integer.parseInt(count.toString());
    }
    
    /**
     * 查询年度积分
     * @param yearScore
     * @param pageUtil
     * @return
     */
    public List searchYear(final TYearScore yearScore,final PageUtil pageUtil){
    	List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " from TYearScore where 1=1";
				if(yearScore.getPhone()!=null && !"".equals(yearScore.getPhone())){
					hql+=" and phone like :phone";
				}
				if(yearScore.getSdate()!=null && !"".equals(yearScore.getSdate())){
					hql+=" and year>=:sdate";
				}
				if(yearScore.getEdate()!=null && !"".equals(yearScore.getEdate())){
					hql+=" and year<=:edate";
				}
				Query query = session.createQuery(hql);
				if(yearScore.getPhone()!=null && !"".equals(yearScore.getPhone())){
					query.setString("phone", "%"+yearScore.getPhone()+"%");
				}
				if(yearScore.getSdate()!=null && !"".equals(yearScore.getSdate())){
					query.setString("sdate", yearScore.getSdate());
				}
				if(yearScore.getEdate()!=null && !"".equals(yearScore.getEdate())){
					query.setString("edate", yearScore.getEdate());
				}
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}});
    	return list;
    }
    
    /**
     * 获取年度积分记录数
     * @param yearScore
     * @return
     */
    public int getYearCount(final TYearScore yearScore){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="select count(*) from TYearScore where 1=1 ";
				if(yearScore.getPhone()!=null && !"".equals(yearScore.getPhone())){
					hql+=" and phone like :phone";
				}
				if(yearScore.getSdate()!=null && !"".equals(yearScore.getSdate())){
					hql+=" and year>=:sdate";
				}
				if(yearScore.getEdate()!=null && !"".equals(yearScore.getEdate())){
					hql+=" and year<=:edate";
				}
				Query query = session.createQuery(hql);
				if(yearScore.getPhone()!=null && !"".equals(yearScore.getPhone())){
					query.setString("phone", "%"+yearScore.getPhone()+"%");
				}
				if(yearScore.getSdate()!=null && !"".equals(yearScore.getSdate())){
					query.setString("sdate", yearScore.getSdate());
				}
				if(yearScore.getEdate()!=null && !"".equals(yearScore.getEdate())){
					query.setString("edate", yearScore.getEdate());
				}
				return query.uniqueResult();
			}});
    	return count==null?0:Integer.parseInt(count.toString());
    }
    
    /**
     * 查询总积分
     * @param totalScore
     * @param pageUtil
     * @return
     */
    public List searchTotal(final TTotalScore totalScore,final PageUtil pageUtil){
    	List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TTotalScore where 1=1";
				if(totalScore.getPhone()!=null && !"".equals(totalScore.getPhone())){
					hql+=" and phone like :phone";	
				}
			    Query query = session.createQuery(hql);
			    if(totalScore.getPhone()!=null && !"".equals(totalScore.getPhone())){
					query.setString("phone", "%"+totalScore.getPhone()+"%");	
				}	
			    query.setFirstResult(pageUtil.pastart());
			    query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}});
    	return list;
    }
    
    /**
     * 获取总积分记录数
     * @param totalScore
     * @return
     */
    public int getTotalCount(final TTotalScore totalScore){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql =" select count(*) from TTotalScore where 1=1 ";
				if(totalScore.getPhone()!=null && !"".equals(totalScore.getPhone())){
					hql+=" and phone like :phone";	
				}
			    Query query = session.createQuery(hql);
			    if(totalScore.getPhone()!=null && !"".equals(totalScore.getPhone())){
					query.setString("phone", "%"+totalScore.getPhone()+"%");	
				}	
				return query.uniqueResult();
			}});
    	return count==null?0:Integer.parseInt(count.toString());
    }
    
    /**
     * 兑换查询
     * @param change
     * @param pageUtil
     * @return
     */
    public List searchChange(final TChange change,final PageUtil pageUtil){
    	List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String sql = "select {c.*},{i.*} from t_change c,t_change_item i where c.id=i.cid";
				if(change.getPhone()!=null && !"".equals(change.getPhone())){
					sql+=" and c.phone like :phone";
				}
				if(change.getPname()!=null && !"".equals(change.getPname())){
					sql+=" and i.pname like :pname";
				}
				if(change.getTostart()!=null && change.getTostart()!=0){
					sql+=" and c.total>=:tostart";
				}
				if(change.getToend()!=null && change.getToend()!=0){
					sql+=" and c.total<=:toend";
				}
				SQLQuery query = session.createSQLQuery(sql);
				if(change.getPhone()!=null && !"".equals(change.getPhone())){
					query.setString("phone", "%"+change.getPhone()+"%");
				}
				if(change.getPname()!=null && !"".equals(change.getPname())){
					query.setString("pname", "%"+change.getPname()+"%");
				}
				if(change.getTostart()!=null && change.getTostart()!=0){
					query.setLong("tostart", change.getTostart());
				}
				if(change.getToend()!=null && change.getToend()!=0){
					query.setLong("toend", change.getToend());
				}
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				query.addEntity("c", TChange.class);
				query.addEntity("i", TChangeItem.class);				
				return query.list();
			}
    	});
    	return list;
    }
    
    /**
     * 获取兑换记录数
     * @param change
     * @return
     */
    public int getChangeCount(final TChange change){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String sql = " select count(*) as a from t_change c,t_change_item i where c.id=i.cid ";
				if(change.getPhone()!=null && !"".equals(change.getPhone())){
					sql+=" and c.phone like :phone";
				}
				if(change.getPname()!=null && !"".equals(change.getPname())){
					sql+=" and i.pname like :pname";
				}
				if(change.getTostart()!=null && change.getTostart()!=0){
					sql+=" and c.total>=:tostart";
				}
				if(change.getToend()!=null && change.getToend()!=0){
					sql+=" and c.total<=:toend";
				}
				SQLQuery query = session.createSQLQuery(sql);
				if(change.getPhone()!=null && !"".equals(change.getPhone())){
					query.setString("phone", "%"+change.getPhone()+"%");
				}
				if(change.getPname()!=null && !"".equals(change.getPname())){
					query.setString("pname", "%"+change.getPname()+"%");
				}
				if(change.getTostart()!=null && change.getTostart()!=0){
					query.setLong("tostart", change.getTostart());
				}
				if(change.getToend()!=null && change.getToend()!=0){
					query.setLong("toend", change.getToend());
				}
				query.addScalar("a", Hibernate.INTEGER);
				return query.uniqueResult();
			}
    		
    	});
    	return count==null?0:Integer.parseInt(count.toString());
    }
    
    /**
     * 查询积分日志
     * @param log
     * @param pageUtil
     * @return
     */
    public List searchLog(final TScorelog log,final PageUtil pageUtil){
    	List list = this.getHibernateTemplate().executeFind(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " from TScorelog where 1=1 ";
				if(log.getPhone()!=null && !"".equals(log.getPhone())){
					hql+=" and phone like :phone";
				}
				if(log.getStart()!=null && !"".equals(log.getStart())){
					hql+=" and operdate>=:start";
				}
				if(log.getEnd()!=null && !"".equals(log.getEnd())){
					hql+=" and operdate<=:end";
				}
				Query query = session.createQuery(hql);
				if(log.getPhone()!=null && !"".equals(log.getPhone())){
					 query.setString("phone", "%"+log.getPhone()+"%");
				}
				if(log.getStart()!=null && !"".equals(log.getStart())){
					query.setTimestamp("start", log.getStart());
				}
				if(log.getEnd()!=null && !"".equals(log.getEnd())){
					query.setTimestamp("end", log.getEnd());
				}
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}
    		
    	});
    	return list;
    }
    
    /**
     * 获取积分日志记录数
     * @param log
     * @return
     */
    public int getLogCount(final TScorelog log){
    	Object count = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " select count(*) from TScorelog where 1=1 ";
				if(log.getPhone()!=null && !"".equals(log.getPhone())){
					hql+=" and phone like :phone";
				}
				if(log.getStart()!=null && !"".equals(log.getStart())){
					hql+=" and operdate>=:start";
				}
				if(log.getEnd()!=null && !"".equals(log.getEnd())){
					hql+=" and operdate<=:end";
				}
				Query query = session.createQuery(hql);
				if(log.getPhone()!=null && !"".equals(log.getPhone())){
					 query.setString("phone", "%"+log.getPhone()+"%");
				}
				if(log.getStart()!=null && !"".equals(log.getStart())){
					query.setTimestamp("start", log.getStart());
				}
				if(log.getEnd()!=null && !"".equals(log.getEnd())){
					query.setTimestamp("end", log.getEnd());
				}
				return query.uniqueResult();
			}
    		
    	});
    return count==null?0:Integer.parseInt(count.toString());
    }
}
