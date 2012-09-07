package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.StaffDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TStaff;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class StaffDaoImpl extends HibernateDaoSupport implements StaffDao {

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(final TStaff staff) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "select count(*) from TStaff s where 1=1";
						if (null != staff && null != staff.getStaffname()
								&& !"".equals(staff.getStaffname())) {
							hql = hql + " and staffname like '%"
									+ staff.getStaffname() + "%'";
						}
						if (null != staff && null != staff.getTel()
								&& !"".equals(staff.getTel())) {
							hql = hql + " and tel ='" + staff.getTel() 
									+ "'";
						}
						if (null != staff && null != staff.getSex()
								&& !"".equals(staff.getSex())) {
							hql = hql + " and sex ='" + staff.getSex() + "'";
						}
						if (null != staff && null != staff.getState()
								&& !"".equals(staff.getState())) {
							hql = hql + " and state ='" + staff.getState()
									+ "'";
						}
						if (null != staff && null != staff.getDeptid()
								&& !"".equals(staff.getDeptid())) {
							hql = hql + " and deptid ='" + staff.getDeptid()
									+ "'";
						}

						Query query = session.createQuery(hql);

						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});

		return i;
	}

	/**
	 * 添加数据字典
	 * 
	 * @param data
	 * @return
	 */
	public Boolean addStaff(TStaff staff) {
		this.getHibernateTemplate().save(staff);
		return true;
	}

	/**
	 * 删除数据字典
	 * 
	 * @param data
	 * @return
	 */
	public Boolean deleteStaff(final TStaff Staff) {
		Boolean bool = (Boolean) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "delete TStaff where id=:id";
						Query query = session.createQuery(hql);
						query.setLong("id", Staff.getId());
						query.executeUpdate();
						return null;
					}
				});

		return true;
	}

	/**
	 * 更新数据字典
	 * 
	 * @param Staff
	 * @return
	 */
	public Boolean updateStaff(TStaff Staff) {
		this.getHibernateTemplate().update(Staff);
		return true;
	}

	/**
	 * 取得数据字典列表
	 * 
	 * @return
	 */
	public List searchStaff(Long id) {
		return null;
	}

	/**
	 * 查询数据字典对象
	 * 
	 * @param id
	 * @return
	 */
	public TStaff seachStaff(Long id) {

		TStaff Staff = (TStaff) this.getHibernateTemplate().get(TStaff.class,
				id);
		return Staff;
	}

	public List searchStaff(final PageUtil pageUtil, final TStaff staff) {

		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer hql = new StringBuffer(
								"from TStaff where 1=1");
						if (null != staff && null != staff.getStaffname()
								&& !"".equals(staff.getStaffname())) {
							hql.append(" and staffname like '%" + staff.getStaffname()
									+ "%'");
						}
						if (null != staff && null != staff.getTel()
								&& !"".equals(staff.getTel())) {
							hql.append(" and tel ='" + staff.getTel()
									+ "'");
						}
						if (null != staff && null != staff.getSex()
								&& !"".equals(staff.getSex())) {
							hql.append(" and sex ='" + staff.getSex() + "'");
						}
						if (null != staff && null != staff.getState()
								&& !"".equals(staff.getState())) {
							hql
									.append(" and state ='" + staff.getState()
											+ "'");
						}
						if (null != staff && null != staff.getDeptid()
								&& !"".equals(staff.getDeptid())) {
							hql.append(" and deptid ='" + staff.getDeptid()
									+ "'");
						}
						hql.append(" order by id desc");

						Query query = session.createQuery(hql.toString());
						
						if (pageUtil != null) {
							query.setMaxResults(pageUtil.getPagesize());
							query.setFirstResult(pageUtil.pastart());
						}
						List list = query.list();
						return list;
					}
				});

		return list;
	}

}
