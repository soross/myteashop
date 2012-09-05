package com.crm.per.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.per.dao.Permission;
import com.crm.pub.po.TPower;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;

public class PermissionImpl extends HibernateDaoSupport implements Permission{
	
	////验证是否具备权限
	public boolean checkPermission(final String userID,final String id) {
		boolean bool = false;
		TUser tuser = (TUser) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						TUser user = (TUser) session.get(TUser.class, userID);
						if (user != null) {
							Hibernate.initialize(user.getRoles());
							Hibernate.initialize(user.getPowers());
							
							Set<TRole> roles = user.getRoles();
							for (Object o : roles) {
								TRole role = (TRole) o;
								Hibernate.initialize(role.getPowers());
							}
						}
						return user;
					}
				});
		
		for (Object o : tuser.getPowers()) {
			TPower power = (TPower) o;
			if(id.equalsIgnoreCase((power.getId()).toString())){
				bool = true;
				break;
			}
		}		
		if(!bool){
			Set<TRole> roles = tuser.getRoles();
			for (Object o : roles) {
				TRole role = (TRole) o;
				Set<TPower>  powers =role.getPowers();
				for(Object obj:powers){
					TPower power = (TPower) obj;
					if(id.equalsIgnoreCase((power.getId()).toString())){
						bool = true;
						break;
					}
				}
			}
		}
		return bool;
	}
	
	
	//取得子权限列表
	public List getSonPerList(final String id){
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TPower t where sortid<>'-1' and parentid='"+id+"' order by sortid,id";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
		return list;
	}
}
