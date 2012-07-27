package com.crm.pub.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.pub.dao.inf.UserDao;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;

/**
 * UserImpl
 * 
 * @version 0.5
 * @author hyq $2009/10/22 ʵ���û� ����ɾ���ģ���
 */

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	/**
	 * ����û�
	 */
	public void addUser(TUser users) {
		this.getHibernateTemplate().save(users);
	}

	/**
	 * ɾ���û�
	 */
	public void deleteUser(TUser users) {
		this.getHibernateTemplate().delete(users);

	}

	/**
	 * @param userid
	 *            ����userid�������û���Ϣ
	 * @return TUser
	 */
	public TUser getUser(final String userId) {
		TUser tuser = (TUser) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						TUser user = (TUser) session.get(TUser.class, userId);
						if (user != null) {
							Hibernate.initialize(user.getRoles());
							Set<TRole> roles = user.getRoles();

							for (Object o : roles) {
								TRole role = (TRole) o;
								Hibernate.initialize(role.getPowers());
							}
						}
						return user;
					}

				});
		return tuser;
	}

	/**
	 * ��ѯ�û�
	 */

	public List searchUser(final TUser user, final PageUtil pageutil) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TUser t where 1=1";
						if (!"".equals(user.getUserid())
								&& null != user.getUserid()) {
							hql += " and userid like '%" + user.getUserid()
									+ "%'";
						}
						if (!"".equals(user.getUsername())
								&& null != user.getUsername()) {
							hql += " and username like '%" + user.getUsername()
									+ "%'";
						}
						
						Query query = session.createQuery(hql);
						query.setMaxResults(pageutil.getPagesize());
						query.setFirstResult(pageutil.pastart());
						return query.list();
					}
				});
		return list;
	}

	/**
	 * �޸��û�
	 */
	public void updateUser(final TUser users) {

		this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {

				String hql = "update TUser set username=:uname,password=:upass,sex=:usex,homeplace=:uhome,"
						+ "code=:ucode,tel=:utel,email=:uemail,phone=:uphone,address=:uaddress,jobno=:ujob where userid=:uid";
				Query query = session.createQuery(hql);
				query.setString("uname", users.getUsername());
				query.setString("upass", users.getPassword());
				query.setString("usex", users.getSex());
				query.setString("uhome", users.getHomeplace());
				query.setString("ucode", users.getCode());
				query.setString("utel", users.getTel());
				query.setString("uemail", users.getEmail());
				query.setString("uphone", users.getPhone());
				query.setString("uaddress", users.getAddress());
				query.setString("ujob", users.getJobno());
				query.setString("uid", users.getUserid());
				query.executeUpdate();
				return null;
			}
		});

	}

	public List searchRole(TRole role) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select t from TRole t";

						Query query = session.createQuery(hql);
						return query.list();
					}
				});
		return list;
	}

	/**
	 * ��ȡ�û�����
	 */

	public int getCount(final TUser user) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "select count(*) from TUser where 1=1";
						if (!"".equals(user.getUserid())
								&& null != user.getUserid()) {
							hql += " and userid like '%" + user.getUserid()
									+ "%'";
						}
						if (!"".equals(user.getUsername())
								&& null != user.getUsername()) {
							hql += " and username like '%" + user.getUsername()
									+ "%'";
						}
						
						Query query = session.createQuery(hql);
						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});

		return i;
	}

	/**
	 * �������пͻ������б�
	 * 
	 * @return
	 */
	public List clientManagers() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String sql = "select  distinct u.userid as userid from t_user u,t_userrole ur,t_role r "
								+ "where u.userid=ur.userid and ur.roleid=r.roleid and r.roleid=2";
						SQLQuery query = session.createSQLQuery(sql);
						// query.addEntity("u", TUser.class);
						query.addScalar("userid", Hibernate.STRING);
						return query.list();
					}
				});
		return list;
	}
	 /**
     * �޸�����
     * @param user
     */
    public void updatePass(final TUser user){
    	this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="update TUser  set password=:pass where userid=:id";
				Query query=session.createQuery(hql);
			query.setString("pass", user.getPassword());
			query.setString ("id",user.getUserid());
			query.executeUpdate();
				return null;
			}});
    }
}
