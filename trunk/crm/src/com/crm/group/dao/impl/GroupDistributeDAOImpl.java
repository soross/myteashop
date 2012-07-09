package com.crm.group.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.po.TClient;
import com.crm.group.dao.inf.GroupDistributeDAO;
import com.crm.group.po.Groups;
import com.crm.group.po.TOldgroupmess;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

public class GroupDistributeDAOImpl extends HibernateDaoSupport implements
		GroupDistributeDAO {
	/**
	 * 
	 * 集团列表（所有的集团包括有无话费）
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupDistributeList(final Groups groups,
			final int currentPage, final int pageSize) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from Groups g where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							hql += " and g.groupid =:groupid";
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							hql += " and g.groupname like :groupname";
						}
						// 省
						if (groups.getPrivince() != null
								&& !"".equals(groups.getPrivince())) {
							hql += " and g.privince =:privince";
						}
						// 市

						if (groups.getCity() != null
								&& !"".equals(groups.getCity())) {
							hql += " and g.city =:city";
						}
						// 行业

						if (groups.getVocation() != null
								&& !"".equals(groups.getVocation())) {
							hql += " and g.vocation =:vocation";
						}
						// 经理

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {
							hql += " and g.manager =:manager";
						}
						// 级别

						if (groups.getGrouplevel() != null
								&& !"".equals(groups.getGrouplevel())) {
							hql += " and g.grouplevel =:grouplevel";
						}

						Query query = session.createQuery(hql);

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}

						// 省
						if (groups.getPrivince() != null
								&& !"".equals(groups.getPrivince())) {

							query.setString("privince", groups.getPrivince());
						}
						// 市

						if (groups.getCity() != null
								&& !"".equals(groups.getCity())) {

							query.setString("city", groups.getCity());
						}
						// 行业

						if (groups.getVocation() != null
								&& !"".equals(groups.getVocation())) {

							query.setString("vocation", groups.getVocation());
						}
						// 经理

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {

							query.setString("manager", groups.getManager());
						}
						// 级别

						if (groups.getGrouplevel() != null
								&& !"".equals(groups.getGrouplevel())) {

							query.setString("grouplevel", groups
									.getGrouplevel());

						}

						//
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);

						return query.list();
					}

				});

		return list;
	}

	/**
	 * 集团记录数
	 * 
	 * @return
	 */
	public int getCount(final Groups groups) {

		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from Groups where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							hql += " and groupid =:groupid";
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							hql += " and groupname like :groupname";
						}

						Query query = session.createQuery(hql);

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}

						return query.uniqueResult();
					}

				});
		return count;

	}

	/**
	 * 集团未分配列表
	 * 
	 * @param groups
	 * 
	 */

	public List<Groups> searchNoDistributeList(final Groups groups) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from Groups where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							hql += " and groupid =:groupid";
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							hql += " and groupname like :groupname";
						}
						hql += " and manager=:manager";

						Query query = session.createQuery(hql);

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");

						}
						query.setString("manager", "未分配");
						return query.list();
					}

				});

		return list;
	}

	/**
	 * 集团已分配列表
	 * 
	 * @param groups
	 * 
	 */

	public List<Groups> searchhasDisList(final Groups groups) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from Groups where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							hql += " and groupid =:groupid";
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							hql += " and groupname like :groupname";
						}
						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {
							hql += " and manager =:manager";

						} else {

							hql += " and manager !=:manager";

						}

						Query query = session.createQuery(hql);

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {
							query.setString("manager", groups.getManager());

						} else {
							query.setString("manager", "未分配");

						}

						return query.list();
					}

				});

		return list;
	}

	/**
	 * 客户经理列表
	 */
	public List<TUser> searchManagerList() {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "from TUser u left join  u.roles r where r.roleid=2";

						Query query = session.createQuery(hql);

						return query.list();
					}

				});
		return list;
	}

	/**
	 * 分配与调配
	 * 
	 * @param group
	 */

	public boolean distributeManager(final String[] groupids,
			final String managerid) {
		boolean b = false;

		Object o = this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				StringBuffer hql = new StringBuffer();
				int row = 0;
				if (managerid != null && !"".equals(managerid)
						&& groupids != null) {
					hql.append("update Groups set manager='").append(managerid)
							.append("'");
					hql.append(" where groupid in(");
					for (int i = 0; i < groupids.length; i++) {
						if (groupids[i] != null) {
							if (i == groupids.length - 2) {
								hql.append("'").append(groupids[i]).append("'")
										.append(",");
							}
							if (i == groupids.length - 1) {
								hql.append("'").append(groupids[i]).append("'");
							}
						}
					}
					hql.append(")");
					Query query = session.createQuery(hql.toString());
					row = query.executeUpdate();

				}
				return row;

			}

		});
		if (Integer.parseInt(o.toString()) != 0) {
			b = true;
		}
		return b;

	}

	/**
	 * 集团对象
	 * 
	 * @param group
	 */

	public Groups getGroup(final Groups group) {

		Groups group1 = (Groups) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "from Groups where 1=1";
						if (group.getGroupid() != null
								&& !"".equals(group.getGroupid())) {

							hql += " and groupid=:groupid";

						}

						Query query = session.createQuery(hql);
						if (group.getGroupid() != null
								&& !"".equals(group.getGroupid())) {

							query.setString("groupid", group.getGroupid());

						}

						return query.list().get(0);
					}

				});

		return group1;
	}

	/**
	 * 集团用户数
	 * 
	 * @param groupid
	 * @return
	 */

	public Integer guserListCount(final String groupid) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select max(f.phone) as phone  from TFee f, TGroupclient t,"
								+ "Groups g where f.phone=t.phone and g.groupid=t.groupid and  g.groupid='"
								+ groupid + "' group by f.phone";
						Query query = session.createQuery(hql);
						List list = query.list();
						return list;
					}

				});

		return list.size();

	}

	/**
	 * 集团客户列表
	 * 
	 * @param groupid
	 * @return
	 */

	public List<TClient> guserList(final String groupid, final int currentPage,
			final int pageSize) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TClient c where c.phone in (select max(f.phone) as phone  from TFee f, TGroupclient t,"
								+ "Groups g where f.phone=t.phone and g.groupid=t.groupid and  g.groupid='"
								+ groupid + "' group by f.phone)";
						Query query = session.createQuery(hql);
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);

						return query.list();
					}

				});

		return list;

	}

	/**
	 * 取得一个客户 根据手机号码
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getClient(String phone) {

		return (TClient) this.getHibernateTemplate().get(TClient.class, phone);
	}

	/**
	 * 查询集团历史列表
	 * 
	 * @param groups
	 * 
	 */

	public List<TOldgroupmess> searchGrHistList(final Groups groups,
			final int currentPage, final int pageSize) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TOldgroupmess where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							hql += " and groupid =:groupid";
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							hql += " and groupname like :groupname";
						}

						Query query = session.createQuery(hql);

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);
						return query.list();
					}

				});

		return list;
	}

	/**
	 * 查询集团历史记录数
	 * 
	 * @param groups
	 * 
	 */

	public Integer searchGrHistCount(final Groups groups) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TOldgroupmess where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							hql += " and groupid =:groupid";
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							hql += " and groupname like :groupname";
						}

						Query query = session.createQuery(hql);

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}
						return query.list();
					}

				});

		return list.size();
	}

	/**
	 * 操作类型列表
	 * 
	 * @return
	 */
	public List<TData> searchOptype() {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TData where pid=" + GlobVar.DO_TYPE;
						Query query = session.createQuery(hql);
						return query.list();
					}

				});

		return list;

	}

	/**
	 * 集团等级列表
	 */

	public List<TData> searchLevelList() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TData where pid="
								+ GlobVar.GROUP_GRADE;
						Query query = session.createQuery(hql);
						return query.list();
					}

				});

		return list;
	}

}
