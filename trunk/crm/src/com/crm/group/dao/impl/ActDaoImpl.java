package com.crm.group.dao.impl;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.group.dao.inf.ActDao;
import com.crm.group.po.ClubActivity;
import com.crm.group.po.TFees;
import com.crm.page.PageUtil;

public class ActDaoImpl extends HibernateDaoSupport implements ActDao {
	/**
	 * 添加活动
	 * @param act
	 */
	public void addAct(ClubActivity act) {
		this.getHibernateTemplate().save(act);
		
	}
	/**
	    *删除活动 
	    * @param act
	    */
	public void deleteAct(ClubActivity act) {
		this.getHibernateTemplate().delete(act);
	}
	/**
	    *查询特定活动
	    * @param act
	    */
	public ClubActivity getAct(Long actId) {
		return (ClubActivity)this.getHibernateTemplate().get(ClubActivity.class, actId);
	}
	/**
	    *统计活动数
	    * @param act
	    */
	public int getCount(final ClubActivity act,final String starttime,final String endtime) {
		Integer i = (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	        	
				String hql="select count(*) from ClubActivity where 1=1";
				if(!"".equals(act.getActAddr())&&null!=act.getActAddr()){
					hql+=" and actAddr like :address";
				}
				if(!starttime.equals("0")){
					hql+=" and actTime >=:stime";
				}
				if(!endtime.equals("0")){
					hql+=" and actTime <=:etime";
				}
				
				Query query=session.createQuery(hql);
				if(!"".equals(act.getActAddr())&&null!=act.getActAddr()){
					query.setString("address", "%"+act.getActAddr()+"%");
				}
				
				if(!starttime.equals("0")){
					try {
						Date sda=sdf.parse(starttime);
					    query.setDate("stime", sda);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(!endtime.equals("0")){
					try {
						Date eda=sdf.parse(endtime);
					    query.setDate("etime", eda);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				Integer count = (Integer)query.uniqueResult();
				
				return count;
			}});
		return i;
	}
	/**
	    *查询活动
	    * @param act
	    */
	public List searchACt(final ClubActivity act, final PageUtil pageutil,final String starttime,final String endtime) {
		
		List list=this.getHibernateTemplate().executeFind(new HibernateCallback(){
			
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
				String hql="from ClubActivity a where 1=1";
				if(!"".equals(act.getActAddr())&&null!=act.getActAddr()){
					hql+=" and a.actAddr like :address";
				}
				if(!starttime.equals("0")){
					hql+=" and a.actTime >=:stime";
				}
				if(!endtime.equals("0")){
					hql+=" and a.actTime <=:etime";
				}
				
				Query query=session.createQuery(hql);
				
				if(!"".equals(act.getActAddr())&&null!=act.getActAddr()){
					query.setString("address", "%"+act.getActAddr()+"%");
				}
				if(!starttime.equals("0")){
					try {
						Date sda=sdf.parse(starttime);
					    query.setDate("stime", sda);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(!endtime.equals("0")){
					try {
						Date eda=sdf.parse(endtime);
					    query.setDate("etime", eda);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				query.setMaxResults(pageutil.getPagesize());
				query.setFirstResult(pageutil.pastart());
				return query.list();
			}});
		return list;
	}
	/**
	    * 修改活动
	    * @param act
	    */
	public void updateAct(ClubActivity act) {
		this.getHibernateTemplate().update(act);
		
	}
	/**
	    *删除活动 费用明细
	    * @param act
	    */
	   
	public void deleteFee(TFees fee) {
		this.getHibernateTemplate().delete(fee);
		
	}
	/**
	    * 审核活动
	    * @param act
	    */
	public void updateCheck(final long aid,final String check) {
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="update ClubActivity set ischeck=:ch where actId=:id";
				Query query=session.createQuery(hql);
				query.setString("ch", check);
				query.setLong("id", aid);
				query.executeUpdate();
				// TODO Auto-generated method stub
				return null;
			}});
		
	}
	
  
}
