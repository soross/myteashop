package com.crm.club.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.club.dao.inf.ClubNetWorkDao;
import com.crm.club.po.ClubNetInfo;
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TData;

public class ClubNetWorkDaoImpl extends HibernateDaoSupport implements
		ClubNetWorkDao {

	/**
	 * ������������Ϣ
	 * 
	 * @param netinfo
	 * @return
	 */

	public boolean addClubNetWork(ClubNetInfo netinfo) {

		this.getHibernateTemplate().save(netinfo);

		return true;
	}

	/**
	 * ɾ��������Ϣ
	 * 
	 * @param clubnetId
	 * @return
	 */

	public boolean deleteClubNetWork(final long clubnetId) {

		boolean pag = false;

		Integer row = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuilder hql = new StringBuilder();
						hql.append("delete from ClubNetInfo where clubnetId=")
								.append(clubnetId);

						Query query = session.createQuery(hql.toString());

						int i = query.executeUpdate();

						return i;
					}

				});

		if (row != 0) {
			pag = true;
		}

		return pag;
	}

	/**
	 * �޸�������Ϣ
	 * 
	 * @param netinfo
	 * @return
	 */

	public boolean updateClubNetWork(ClubNetInfo netinfo) {

		this.getHibernateTemplate().update(netinfo);

		return true;
	}

	/**
	 * ��ѯ�����б�
	 * 
	 * @param clubnetinfo
	 * @return
	 */

	public List<ClubNetInfo> searchRoleList(final ClubNetInfo clubnetinfo) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from ClubNetInfo where 1=1";
						if (clubnetinfo.getClubnetAddr() != null
								&& !"".equals(clubnetinfo.getClubnetAddr())) {
							hql += " and clubnetaddr like :clubnetaddr";
						}
						if (clubnetinfo.getClubnetManger() != null
								&& !"".equals(clubnetinfo.getClubnetManger())) {
							hql += " and ClubnetManger like :ClubnetManger";
						}

						Query query = session.createQuery(hql);

						if (clubnetinfo.getClubnetAddr() != null
								&& !"".equals(clubnetinfo.getClubnetAddr())) {
							query.setString("clubnetaddr", "%"
									+ clubnetinfo.getClubnetAddr() + "%");
						}
						if (clubnetinfo.getClubnetManger() != null
								&& !"".equals(clubnetinfo.getClubnetManger())) {
							query.setString("ClubnetManger", "%"
									+ clubnetinfo.getClubnetManger() + "%");
						}

						return query.list();
					}

				});

		return list;
	}

	/**
	 * ��ѯ������Ϣ
	 * 
	 * @param clubnetId
	 */

	public ClubNetInfo getClubInfo(final Integer clubnetId) {
		ClubNetInfo netinfo = (ClubNetInfo) this.getHibernateTemplate()
				.execute(new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from ClubNetInfo where clubnetId="
								+ clubnetId;
						Query query = session.createQuery(hql);
						return query.list().get(0);
					}

				});

		return netinfo;
	}

	/**
	 * ���㼶���б�
	 * 
	 * @return
	 */
	public List<TData> seachClubLevList() {
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

	/**
	 * ���������б�
	 * 
	 * @return
	 */
	public List<TData> seachClubTypeList() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TData where pid="
								+ GlobVar.NETPOINT_TYPE;
						Query query = session.createQuery(hql);
						return query.list();
					}

				});

		return list;

	}

}
