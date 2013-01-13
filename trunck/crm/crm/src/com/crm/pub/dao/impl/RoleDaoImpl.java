package com.crm.pub.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.pub.dao.inf.RoleDao;
import com.crm.pub.po.TRole;

public class RoleDaoImpl extends HibernateDaoSupport implements RoleDao {

	/**
	 * 删除角色
	 */
	public boolean deleteRole(final Long id) {
		this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
			    String hql = "delete from TRole where roleid="+id;
			    Query query = session.createQuery(hql);
			    query.executeUpdate();
				return null;
			}
			
		});
		return true;
	}

	/**
	 * 查询角色列表
	 * 
	 * @param tRole
	 * @return
	 */
	public List<TRole> searchRoleList(final TRole trole,final int currentPage,final int pageSize) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TRole where 1=1";
						if (trole.getRolename() != null
								&& !"".equals(trole.getRolename())) {
							hql += " and rolename like :rolename";
						}
						hql+=" order by roleid asc";
						Query query = session.createQuery(hql);						
						if (trole.getRolename() != null
								&& !"".equals(trole.getRolename())) {
							query.setString("rolename", "%"
									+ trole.getRolename() + "%");
						}	
		
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);
						List list = query.list();
						
						for (Object obj : list) {
							TRole role = (TRole) obj;
							Hibernate.initialize(role.getPowers());
						}
						return list;
					}

				});

		return list;
	}

	/**
	 * 获取角色对象
	 * 
	 * @param tRole
	 * @return
	 */
	public TRole getRole(final Long id) {
		
		TRole trole = (TRole)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				TRole role = (TRole)session.get(TRole.class, id);
				Hibernate.initialize(role.getPowers());
				return role;
			}
			
		});
		
		return trole;
	}

	/*
	 * 添加角色
	 */
	public boolean addRole(TRole trole) {
		this.getHibernateTemplate().save(trole);
		return false;
	}

	/*
	 * 修改角色
	 */
	public boolean updateRole(final TRole trole) {
		this.getHibernateTemplate().update(trole);
		return true;
	}

	/*
	 * 查找所有权限
	 */
	public List powerList() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TPower";
						Query query = session.createQuery(hql);
						return query.list();
					}

				});
		return list;
	}

	public int getCount(final TRole trole) {	
		Integer count = (Integer)this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TRole where 1=1";
						if (trole.getRolename() != null
								&& !"".equals(trole.getRolename())) {
							hql += " and rolename like :rolename";
						}

						Query query = session.createQuery(hql);
						if (trole.getRolename() != null
								&& !"".equals(trole.getRolename())) {
							query.setString("rolename", "%"
									+ trole.getRolename() + "%");
						}
						return query.uniqueResult();
					}

				});

		return count;
	}

	/**
	 * 根据角色名字查找角色对象
	 * @param roleName
	 * @return
	 */
	public TRole getByName(final String roleName){
		Object obj = this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = " from TRole where rolename=:name";
				Query query = session.createQuery(hql);
				query.setString("name", roleName);
				return query.uniqueResult();
			}});
		return obj==null?null:(TRole)obj;
	}
}
