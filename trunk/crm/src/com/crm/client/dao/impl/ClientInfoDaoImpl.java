package com.crm.client.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.dao.inf.ClientInfoDao;
import com.crm.client.po.TClient;
import com.crm.client.po.TClientinfo;

public class ClientInfoDaoImpl extends HibernateDaoSupport implements
		ClientInfoDao {

	/**
	 * 导出满足条件的所有客户个性资料
	 * 
	 * @param client
	 * @return
	 */
	public List searchAllClientInfo(final TClient client) {
		List list = (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"from  TClient client left join client.clientinfo where 1=1 ");

						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							sbf.append(" and client.phone=:phone");
						}
						if (null != client.getAddress()
								&& !"".equals(client.getAddress())) {
							sbf.append(" and client.address like :address");
						}
						if (null != client.getGrade()
								&& !"".equals(client.getGrade())
								&& 0 != client.getGrade()) {
							if (-1 != client.getGrade()) {
								sbf.append(" and grade=:grade");
							} else {
								sbf.append(" and grade=:grade");
							}
						}						
						Query query = session.createQuery(sbf.toString());
						if (null != client.getPhone()
								&& !"".equals(client.getPhone())) {
							query.setString("phone", client.getPhone());
						}
						if (null != client.getAddress()
								&& !"".equals(client.getAddress())) {
							query.setString("address", "%"+client.getAddress()+"%");
						}
						if (null != client.getGrade()
								&& !"".equals(client.getGrade())
								&& 0 != client.getGrade()) {
							if (-1 != client.getGrade()) {
								query.setLong("grade", client.getGrade());
							}else{								
								query.setLong("grade", 23);								
							}
						}
						
						List list = (List) query.list();
						return list;
					}
				});

		return list;

	}

	/**
	 * 导出到excel的数据List
	 * 
	 * @param client
	 * @return
	 */
	public List searchClientInfo(final TClient client, final String str[]) {

		List list = (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sbf = new StringBuffer(
								"from  TClient client left join client.clientinfo where 1=1 ");						

						if (null != str && !"".equals(str)) {
							sbf.append(" and client.phone in (" + str[0]);
							for (int i = 1; i < str.length; i++) {
								sbf.append(",'" + str[i] + "'");
							}
							sbf.append(")");
						}

						System.out.println(sbf.toString());
						Query query = session.createQuery(sbf.toString());						

						List list = (List) query.list();
						return list;
					}
				});

		return list;
	}

	/**
	 * 修该客户个性资料
	 * 
	 * @param clientinfo
	 * @return
	 */
	public Boolean updateClientinfo(TClientinfo clientinfo) {
		this.getHibernateTemplate().update(clientinfo);
		return true;
	}

	/**
	 * 判断是否有个性信息
	 * 
	 * @param
	 * @return
	 */
	public Integer getCountByPhone(final String phone) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TClientinfo where 1=1 ");

						if (null != phone && !"".equals(phone)) {
							hql.append(" and phone=:phone ");
						}

						Query query = session.createQuery(hql.toString());
						if (null != phone && !"".equals(phone)) {
							query.setString("phone", phone);
						}
						Integer count = (Integer) query.uniqueResult();
						return count;
					}
				});
		return count;
	}

	/**
	 * 删除客户个性信息
	 * 
	 * @param clientinfo
	 * @return
	 */
	public Boolean deleteClientinfo(TClientinfo clientinfo) {
		this.getHibernateTemplate().delete(clientinfo);
		return true;
	}

	/**
	 * 添加客户个性信息
	 * 
	 * @param clientinfo
	 */
	public Boolean addClientinfo(TClientinfo clientinfo) {
		this.getHibernateTemplate().save(clientinfo);
		return true;
	}
}
