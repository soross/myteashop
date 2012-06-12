package com.crm.club.dao.impl;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.club.dao.inf.UnionDao;
import com.crm.club.po.UnionBinfo;
import com.crm.club.po.UnionSlog;
import com.crm.page.PageUtil;
import com.crm.pub.po.TData;

public class UnionDaoImpl extends HibernateDaoSupport implements UnionDao {
	/**
	 * 添加商家
	 * 
	 * @param union
	 */
	public void addUnion(UnionBinfo union) {
		this.getHibernateTemplate().save(union);

	}

	/**
	 * 删除商家
	 * 
	 * @param union
	 */
	public void deleteUnion(UnionBinfo union) {
		this.getHibernateTemplate().delete(union);

	}

	/**
	 * 获得商家总数
	 * 
	 * @param union
	 */
	public int getCount(final UnionBinfo union) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from UnionBinfo where 1=1";
						if (!"".equals(union.getFullName())
								&& null != union.getFullName()) {
							hql += " and fullName like :name";
						}
						if (!"".equals(union.getVLevel())
								&& null != union.getVLevel()) {
							hql += " and VLevel=:level";
						}
						Query query = session.createQuery(hql);
						if (!"".equals(union.getFullName())
								&& null != union.getFullName()) {
							query.setString("name", "%" + union.getFullName()
									+ "%");
						}
						if (!"".equals(union.getVLevel())
								&& null != union.getVLevel()) {
							query.setString("level", union.getVLevel());
						}

						Integer count = (Integer) query.uniqueResult();
						return count;
					}
				});
		return i;
	}

	/**
	 * 获得对应商家
	 * 
	 * @param union
	 */
	public UnionBinfo getUnion(long uid) {

		return (UnionBinfo) this.getHibernateTemplate().get(UnionBinfo.class,
				uid);
	}

	/**
	 * 获取所有商家
	 * 
	 * @param union
	 */
	public List getUnionList(final UnionBinfo union, final PageUtil pageUtil) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select u from UnionBinfo u where 1=1";
						if (!"".equals(union.getFullName())
								&& null != union.getFullName()) {
							hql += " and u.fullName like :name";
						}
						if (!"".equals(union.getVLevel())
								&& null != union.getVLevel()) {
							hql += " and u.VLevel=:level";
						}
						Query query = session.createQuery(hql);
						if (!"".equals(union.getFullName())
								&& null != union.getFullName()) {
							query.setString("name", "%" + union.getFullName()
									+ "%");
						}
						if (!"".equals(union.getVLevel())
								&& null != union.getVLevel()) {
							query.setString("level", union.getVLevel());
						}
						query.setMaxResults(pageUtil.getPagesize());
						query.setFirstResult(pageUtil.pastart());

						return query.list();
					}
				});
		return list;
	}

	/**
	 * 修改商家
	 * 
	 * @param union
	 */
	public void updateUnion(UnionBinfo union) {
		this.getHibernateTemplate().update(union);

	}

	/**
	 * 取相应的数据字典
	 * 
	 * @param id
	 */
	public List getDate(final long id) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select d from TData d where pid=" + id;
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
		return list;
	}

	public TData getObject(Long id) {

		return (TData) this.getHibernateTemplate().get(TData.class, id);
	}

	/**
	 * 添加级别日志
	 * 
	 * @param union
	 */
	public void addLog(UnionSlog log) {
		this.getHibernateTemplate().save(log);

	}

	public TData getData(final String name) {
		TData varea = (TData) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select d from TData d where d.name=:name";
						Query query = session.createQuery(hql);
						query.setString("name", name);

						return query.uniqueResult();
					}
				});
		return varea;
	}

	/**
	 * 审核
	 * 
	 * @param id
	 * @param check
	 */

	public void updateCheck(final Long id, final String check) {
		this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "update UnionBinfo set ischeck=:ch where unionbId=:id";
				Query query = session.createQuery(hql);
				query.setString("ch", check);
				query.setLong("id", id);
				query.executeUpdate();
				return null;
			}
		});

	}

	/**
	 * 获得分级日志总数
	 * 
	 * @param union
	 */
	public int getLogCount(final UnionSlog log, final String starttime,
			final String endtime) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						SimpleDateFormat sdf = new SimpleDateFormat(
								"yyyy-MM-dd HH:mm");

						String hql = "select count(*) from UnionSlog where 1=1";
						if (!"".equals(log.getFullName())
								&& null != log.getFullName()) {
							hql += " and fullName like :name";
						}
						if (!starttime.equals("0")) {
							hql += " and worktime >=:stime";
						}
						if (!endtime.equals("0")) {
							hql += " and worktime <=:etime";
						}

						Query query = session.createQuery(hql);
						if (!"".equals(log.getFullName())
								&& null != log.getFullName()) {
							query.setString("name", "%"+log.getFullName()+"%");
						}

						if (!starttime.equals("0")) {
							try {
								Date sda = sdf.parse(starttime);
								query.setDate("stime", sda);
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						if (!endtime.equals("0")) {
							try {
								Date eda = sdf.parse(endtime);
								query.setDate("etime", eda);
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});
		return i;
	}

	/**
	 * 获取所有日志
	 * 
	 * @param union
	 */
	public List getLogList(final UnionSlog log, final PageUtil pageUtil,
			final String starttime, final String endtime) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						SimpleDateFormat sdf = new SimpleDateFormat(
								"yyyy-MM-dd HH:mm");
						String hql = "from UnionSlog a where 1=1";
						if (!"".equals(log.getFullName())
								&& null != log.getFullName()) {
							hql += " and a.fullName like :name";
						}
						if (!starttime.equals("0")) {
							hql += " and a.worktime >=:stime";
						}
						if (!endtime.equals("0")) {
							hql += " and a.worktime <=:etime";
						}

						Query query = session.createQuery(hql);

						if (!"".equals(log.getFullName())
								&& null != log.getFullName()) {
							query.setString("name","%"+log.getFullName()+"%");
						}

						if (!starttime.equals("0")) {
							try {
								Date sda = sdf.parse(starttime);
								query.setDate("stime", sda);
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						if (!endtime.equals("0")) {
							try {
								Date eda = sdf.parse(endtime);
								query.setDate("etime", eda);
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
						query.setMaxResults(pageUtil.getPagesize());
						query.setFirstResult(pageUtil.pastart());
						return query.list();
					}
				});
		return list;
	}

	/**
	 * 获得所选分级日志总数
	 * 
	 * @param union
	 */
	public int getLogCount(final String log) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "select count(*) from UnionSlog where unionbId in ("
								+ log + ")";

						
						Query query = session.createQuery(hql);

						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});
		return i;
	}

	/**
	 * 获取所选日志
	 * 
	 * @param union
	 */
	public List getLogList(final String log, final PageUtil pageUtil) {
		
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "select a from UnionSlog a where a.unionbId in ("
								+ log + ")";
						
						Query query = session.createQuery(hql);

						query.setMaxResults(pageUtil.getPagesize());
						query.setFirstResult(pageUtil.pastart());
						return query.list();
					}
				});
		return list;
	}

	/**
	 * 注册商家
	 * 
	 * @param union
	 */
	public void updateState(final UnionBinfo union) {
		this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "update UnionBinfo set islogout=:log where unionbId=:id";
				Query query = session.createQuery(hql);
				query.setString("log", "0");
				query.setLong("id", union.getUnionbId());
				query.executeUpdate();
				return null;
			}
		});

	}

	public Long getNextId() {
		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String sql = "select seq_store.currval as a from dual ";
				SQLQuery query = session.createSQLQuery(sql);
				query.addScalar("a", Hibernate.LONG);
				return query.uniqueResult();
			}

		});
		return Long.parseLong(o.toString());
	}
}
