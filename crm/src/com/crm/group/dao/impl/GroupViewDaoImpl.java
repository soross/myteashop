package com.crm.group.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.po.TClient;
import com.crm.client.po.TGradelog;
import com.crm.group.dao.inf.GroupViewDao;
import com.crm.group.po.Groups;
import com.crm.group.po.TFee;
import com.crm.group.po.TGroupfee;
import com.crm.group.po.TGrouplinker;
import com.crm.group.po.TGrouplog;
import com.crm.group.po.VipArea;
import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TPower;

public class GroupViewDaoImpl extends HibernateDaoSupport implements
		GroupViewDao {
	/**
	 * ���ŵȼ��б�
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

	/**
	 * ��ҵ�б�
	 */
	public List<TData> searchVocationList() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TData where pid=" + GlobVar.TRADE;
						Query query = session.createQuery(hql);
						return query.list();
					}

				});

		return list;
	}

	/**
	 * Ʒ���б�
	 */
	public List<TData> searchBrandList() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TData where pid=" + GlobVar.BRAND;
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
	 * ʡ���б�
	 */
	public List<VipProvince> searchProvinceList() {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from VipProvince where 1=1";
						Query query = session.createQuery(hql);
						return query.list();
					}

				});

		return list;
	}


	/**
	 * ���Ŷ���
	 * 
	 * @param groupid
	 */

	public Groups getGroup(final String groupid) {
		Groups group1 = (Groups) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "from Groups where groupid='" + groupid
								+ "'";
						Query query = session.createQuery(hql);
						return query.list().get(0);

					}

				});

		return group1;
	}

	/**
	 * ������ϵ��
	 */

	public TGrouplinker getLinker(final String groupid) {
		TGrouplinker linker = (TGrouplinker) this.getHibernateTemplate()
				.execute(new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "from TGrouplinker where groupid='"
								+ groupid + "'";
						Query query = session.createQuery(hql);

						return query.list().get(0);
					}
				});

		return linker;
	}

	/**
	 * ��ȡ�ϸ�������
	 * 
	 * @param groupid
	 * @param nowDate
	 * @return
	 */
	public TGroupfee getGroupFee(final String groupid, final String nowDate) {

		TGroupfee groupFee = (TGroupfee) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = null;
						if (groupid != null && !"".equals(groupid)) {
							hql = "from TGroupfee where groupid='" + groupid
									+ "'";

						}
						if (nowDate != null && !"".equals(nowDate)) {
							hql += " and historytime=to_date('" + nowDate
									+ "','yyyy-mm-dd')";

						}

						Query query = session.createQuery(hql);
						return query.list().get(0);
					}
				});

		return groupFee;

	}

	/**
	 * ��ȡ6����ʵ�ʻ���
	 */
	public List<TGroupfee> tGroupfeeList(final String groupid,
			final Integer year, final Integer month) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)

					throws HibernateException, SQLException {
						String hql = "from TGroupfee where groupid='"
								+ groupid
								+ "' and historytime <= to_date('"
								+ year
								+ "-"
								+ month
								+ "-1','yyyy,mm,dd') and to_char(historytime) >= "
								+ "to_date('" + year + "-" + (month - 5)
								+ "-1','yyyy,mm,dd') order by historytime desc";

						Query query = session.createQuery(hql);

						return query.list();
					}

				});

		return list;
	}

	/**
	 * ĳ�����û��б�
	 */
	public List<TClient> clientList(final String groupid, final String nowDate,
			final int currentPage, final int pageSize) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TClient c,TFee f, TGroupclient t,Groups g,TData d where c.phone=f.phone and c.phone=t.phone and c.brand=d.id and g.groupid=t.groupid and f.feedate=to_date('"
								+ nowDate
								+ "','yyyy,mm-dd') and  g.groupid='"
								+ groupid + "'";
						Query query = session.createQuery(hql);
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);
						List list = query.list();
						return list;
					}

				});

		return list;

	}

	/**
	 * �����û���
	 */
	public Integer clientCount(final String groupid, final String nowDate) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TClient c,TFee f, TGroupclient t,Groups g where c.phone=f.phone and c.phone=t.phone and g.groupid=t.groupid and f.feedate=to_date('"
								+ nowDate
								+ "','yyyy,mm-dd') and  g.groupid='"
								+ groupid + "'";
						Query query = session.createQuery(hql);

						List list = query.list();
						return list;
					}

				});

		return list.size();

	}

	/**
	 * �����û�������Ϣ�б�
	 */
	public List<TFee> userFeeList(final String groupid, final int currentPage,
			final int pageSize) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select max(f.feedate) as  feedate,max(f.phone) as phone,sum(f.fullfee) as fullfee,sum(f.arrearage)  as arrearage  from TFee f, TGroupclient t,Groups g where f.phone=t.phone and g.groupid=t.groupid and  g.groupid='"
								+ groupid
								+ "' group by f.feedate,f.phone order by f.feedate desc";
						Query query = session.createQuery(hql);
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);
						List list = query.list();
						return list;
					}

				});

		return list;

	}

	/**
	 * ���Ѽ�¼��
	 * 
	 * @param groupid
	 * @return
	 */
	public Integer userFeeListCount(final String groupid) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select max(f.feedate) as  feedate,max(f.phone) as phone,sum(f.fullfee) as fullfee,sum(f.arrearage)  as arrearage   from TFee f, TGroupclient t,"
								+ "Groups g where f.phone=t.phone and g.groupid=t.groupid and  g.groupid='"
								+ groupid + "' group by f.feedate,f.phone";
						Query query = session.createQuery(hql);
						List list = query.list();
						return list;
					}

				});

		return list.size();

	}

	/**
	 * 
	 * �����б�(�л��ѵļ���)
	 * 
	 * @param groups
	 */
	public List<Groups> searchGroupList(final Groups groups,
			final int currentPage, final int pageSize, final Integer fcount,
			final Integer tcount, final Integer fmoney, final Integer tmoney) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sb = new StringBuffer();

						sb
								.append("from Groups where groupid in (select g.groupid from Groups g,TGroupfee f where g.groupid=f.groupid");
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							sb.append(" and g.groupid =:groupid");
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							sb.append(" and g.groupname like :groupname");
						}
						// ʡ
						if (groups.getPrivince() != null
								&& !"".equals(groups.getPrivince())) {
							sb.append(" and g.privince =:privince");
						}
						// ��

						if (groups.getCity() != null
								&& !"".equals(groups.getCity())) {
							sb.append(" and g.city =:city");
						}
						// ��ҵ

						if (groups.getVocation() != null
								&& !"".equals(groups.getVocation())) {
							sb.append(" and g.vocation =:vocation");
						}
						// ����

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {
							sb.append(" and g.manager =:manager");
						}
						// ����

						if (groups.getGrouplevel() != null
								&& !"".equals(groups.getGrouplevel())) {
							sb.append(" and g.grouplevel =:grouplevel");
						}
						if (groups.getGrouplevel() != null
								&& !"".equals(groups.getGrouplevel())) {
							sb.append(" and g.grouplevel =:grouplevel");
						}
						if (fcount != null) {
							sb.append(" and f.outcount>=" + fcount);

						}
						if (tcount != null) {
							sb.append(" and f.outcount<=" + tcount);

						}
						if (fmoney != null) {
							sb.append(" and f.fullfee>=" + fmoney);

						}
						if (tmoney != null) {
							sb.append(" and f.fullfee<=" + tmoney);
						}

						sb.append(" group by g.groupid)");

						Query query = session.createQuery(sb.toString());

						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}

						// ʡ
						if (groups.getPrivince() != null
								&& !"".equals(groups.getPrivince())) {

							query.setString("privince", groups.getPrivince());
						}
						// ��

						if (groups.getCity() != null
								&& !"".equals(groups.getCity())) {

							query.setString("city", groups.getCity());
						}
						// ��ҵ

						if (groups.getVocation() != null
								&& !"".equals(groups.getVocation())) {

							query.setString("vocation", groups.getVocation());
						}
						// ����

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {

							query.setString("manager", groups.getManager());
						}
						// ����

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
	 * ���ż�¼��
	 * 
	 * @return
	 */
	public int getCount(final Groups groups, final Integer fcount,
			final Integer tcount, final Integer fmoney, final Integer tmoney) {

		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer sb = new StringBuffer();
						sb
								.append("select count(*) from Groups g,TGroupfee f where g.groupid=f.groupid");
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							sb.append(" and g.groupid =:groupid");
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							sb.append(" and g.groupname like :groupname");
						}
						// ʡ
						if (groups.getPrivince() != null
								&& !"".equals(groups.getPrivince())) {
							sb.append(" and g.privince =:privince");
						}
						// ��

						if (groups.getCity() != null
								&& !"".equals(groups.getCity())) {
							sb.append(" and g.city =:city");
						}
						// ��ҵ

						if (groups.getVocation() != null
								&& !"".equals(groups.getVocation())) {
							sb.append(" and g.vocation =:vocation");
						}
						// ����

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {
							sb.append(" and g.manager =:manager");
						}
						// ����

						if (groups.getGrouplevel() != null
								&& !"".equals(groups.getGrouplevel())) {
							sb.append(" and g.grouplevel =:grouplevel");
						}
						if (fcount != null) {
							sb.append(" and f.outcount>=" + fcount);

						}
						if (tcount != null) {
							sb.append(" and f.outcount<=" + tcount);

						}
						if (fmoney != null) {
							sb.append(" and f.fullfee>=" + fmoney);

						}
						if (tmoney != null) {
							sb.append(" and f.fullfee<=" + tmoney);
						}
						sb.append(" group by g.groupid");
						Query query = session.createQuery(sb.toString());
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());
						}
						if (groups.getGroupname() != null
								&& !"".equals(groups.getGroupname())) {
							query.setString("groupname", "%"
									+ groups.getGroupname() + "%");
						}
						// ʡ
						if (groups.getPrivince() != null
								&& !"".equals(groups.getPrivince())) {

							query.setString("privince", groups.getPrivince());
						}
						// ��

						if (groups.getCity() != null
								&& !"".equals(groups.getCity())) {

							query.setString("city", groups.getCity());
						}
						// ��ҵ

						if (groups.getVocation() != null
								&& !"".equals(groups.getVocation())) {

							query.setString("vocation", groups.getVocation());
						}
						// ����

						if (groups.getManager() != null
								&& !"".equals(groups.getManager())) {

							query.setString("manager", groups.getManager());
						}
						// ����

						if (groups.getGrouplevel() != null
								&& !"".equals(groups.getGrouplevel())) {

							query.setString("grouplevel", groups
									.getGrouplevel());

						}
						List list = query.list();

						return list.size();
					}

				});
		return count;

	}

	/**
	 * �춯�б�
	 * 
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public List<TGrouplog> searchtLogList(final Groups groups,
			final int currentPage, final int pageSize) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = " from TGrouplog where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {

							hql += " and groupid='" + groups.getGroupid()+"'";

						}
						Query query = session.createQuery(hql);
						query.setFirstResult(currentPage);
						query.setMaxResults(pageSize);
						List list = query.list();
						return list;
					}

				});

		return list;

	}

	/**
	 * �����춯��
	 * 
	 * @param groups
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public Integer gettLogCount(final Groups groups) {

		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = " from TGrouplog l where 1=1";
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {

							hql += " and l.groupid=:groupid";
						}
						Query query = session.createQuery(hql);
						if (groups.getGroupid() != null
								&& !"".equals(groups.getGroupid())) {
							query.setString("groupid", groups.getGroupid());

						}
						
						return query.list();
					}

				});

		return list.size();

	}
	/**
	 * ����VCODE ȡ��ʡ
	 */
	
	
	public String getProvName( final String vcode){
		
		
	String name=(String)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
                      String hql="select v.VName from VipProvince v WHERE v.VCode="+vcode;
                      Query query=session.createQuery(hql);
				            return query.list().get(0);
			}											
		}
				
		);

		return name;
	}
	/**
	 * ����nid��ȡ������
	 * @param nid
	 * @return
	 */
	public String getAreaName(final Long nid){
		
		String name=(String)this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
                      String hql="select v.VName from VipArea v WHERE v.NId="+nid;
                      Query query=session.createQuery(hql);
				            return query.list().get(0);
			}											
		}
				
		);
		
		
		return name;
	}

}
