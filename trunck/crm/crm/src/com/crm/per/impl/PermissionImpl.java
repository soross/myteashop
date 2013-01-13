package com.crm.per.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.per.po.TLog;
import com.crm.pub.po.TPower;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;
import com.crm.report.struts.bean.RegisterAmountBean;
import com.crm.tool.DateUtil;
import com.crm.tool.MatchUtil;

public class PermissionImpl extends HibernateDaoSupport implements Permission {

	// //验证是否具备权限
	public boolean checkPermission(final String userID, final String id) {
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
			if (id.equalsIgnoreCase((power.getId()).toString())) {
				bool = true;
				break;
			}
		}
		if (!bool) {
			Set<TRole> roles = tuser.getRoles();
			for (Object o : roles) {
				TRole role = (TRole) o;
				Set<TPower> powers = role.getPowers();
				for (Object obj : powers) {
					TPower power = (TPower) obj;
					if (id.equalsIgnoreCase((power.getId()).toString())) {
						bool = true;
						break;
					}
				}
			}
		}
		return bool;
	}

	// 取得子权限列表
	public List getSonPerList(final String id) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TPower t where sortid<>'-1' and parentid='"
								+ id + "' order by sortid,id";
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
		return list;
	}

	// 获取五笔
	public String getAllWubi(final String str) {
		char[] cs = str.toCharArray();
		String allWubi = "";
		for (int j = 0; j < cs.length; j++) {
			String wubi = getWubi(str);
			allWubi = allWubi + wubi.substring(0, 1);
		}
		return allWubi;
	}

	// 获取五笔
	public String getWubi(final String str) {
		String wubi = "";
		final String unicode = gbEncoding(str);
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						SQLQuery query = session
								.createSQLQuery("select * from t_word_wubi where text like '%"
										+ str
										+ "%' or unicode ='"
										+ unicode
										+ "'");
						List list = query.list();
						return list;
					}
				});

		if (list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {
				Map map = (Map) list.get(i);
				wubi = map.get("wubi_86").toString();
				if (null == wubi || "".equalsIgnoreCase(wubi)) {
					wubi = map.get("wubi_98").toString();
				}

				if (null != wubi && !"".equalsIgnoreCase(wubi)) {
					break;
				}
			}
		}
		return wubi;
	}

	/**
	 * 中文 转换成 unicode
	 * 
	 * @author wjc
	 * @param theString
	 * @return
	 */
	public static String gbEncoding(final String gbString) {
		char[] utfBytes = gbString.toCharArray();
		StringBuffer buffer = new StringBuffer();
		for (int byteIndex = 0; byteIndex < utfBytes.length; byteIndex++) {
			String hexB = Integer.toHexString(utfBytes[byteIndex]);
			if (hexB.length() <= 2) {
				hexB = "00" + hexB;
			}
			buffer.append("" + hexB);
		}
		return buffer.substring(0);
	}

	/**
	 * unicode 转换成 中文
	 * 
	 * @author wjc
	 * @param theString
	 * @return
	 */
	public static String decodeUnicode(String theString) {
		char aChar;
		int len = theString.length();
		StringBuffer outBuffer = new StringBuffer(len);
		for (int x = 0; x < len;) {
			aChar = theString.charAt(x++);
			if (aChar == '\\') {
				aChar = theString.charAt(x++);
				if (aChar == 'u') {
					int value = 0;
					for (int i = 0; i < 4; i++) {
						aChar = theString.charAt(x++);
						switch (aChar) {
						case '0':
						case '1':
						case '2':
						case '3':
						case '4':
						case '5':
						case '6':
						case '7':
						case '8':
						case '9':
							value = (value << 4) + aChar - '0';
							break;
						case 'a':
						case 'b':
						case 'c':
						case 'd':
						case 'e':
						case 'f':
							value = (value << 4) + 10 + aChar - 'a';
							break;
						case 'A':
						case 'B':
						case 'C':
						case 'D':
						case 'E':
						case 'F':
							value = (value << 4) + 10 + aChar - 'A';
							break;
						default:
							throw new IllegalArgumentException(
									"Malformed      encoding.");
						}
					}
					outBuffer.append((char) value);
				} else {
					if (aChar == 't') {
						aChar = '\t';
					} else if (aChar == 'r') {
						aChar = '\r';
					} else if (aChar == 'n') {
						aChar = '\n';
					} else if (aChar == 'f') {
						aChar = '\f';
					}
					outBuffer.append(aChar);
				}
			} else {
				outBuffer.append(aChar);
			}
		}
		return outBuffer.toString();

	}

	public void addLog(TLog log) {
		this.getHibernateTemplate().save(log);
	}

	// 登入日志
	public List<TLog> queryLoginLog(final TLog log, final PageUtil pageutil) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TLog t where 1=1";

						if (null != log.getUserid()
								&& !"".equals(log.getUserid())) {
							hql += " and userid like '%" + log.getUserid()
									+ "%'";
						}

						if (null != log.getStartCreateDate()
								&& !"".equals(log.getStartCreateDate())) {
							hql += " and create_Date>=to_date('"
									+ log.getStartCreateDate()
									+ "','yyyy-mm-dd HH24:mi:ss') ";
						}

						if (null != log.getEndCreateDate()
								&& !"".equals(log.getEndCreateDate())) {
							hql += " and create_Date<=to_date('"
									+ log.getEndCreateDate()
									+ "','yyyy-mm-dd HH24:mi:ss') ";
						}

						if (null != log.getAction()
								&& !"".equalsIgnoreCase(log.getAction())) {
							hql += " and action ='" + log.getAction() + "'";
						}
						Query query = session.createQuery(hql);
						query.setMaxResults(pageutil.getPagesize());
						query.setFirstResult(pageutil.pastart());
						return query.list();
					}
				});
		return list;
	}

	// 登入日志统计
	public int queryLoginLogCount(final TLog log) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "select count(*) from TLog where 1=1";
						if (null != log.getUserid()
								&& !"".equals(log.getUserid())) {
							hql += " and userid like '%" + log.getUserid()
									+ "%'";
						}

						if (null != log.getStartCreateDate()
								&& !"".equals(log.getStartCreateDate())) {
							hql += " and create_Date>=to_date('"
									+ log.getStartCreateDate()
									+ "','yyyy-mm-dd HH24:mi:ss') ";
						}

						if (null != log.getEndCreateDate()
								&& !"".equals(log.getEndCreateDate())) {
							hql += " and create_Date<=to_date('"
									+ log.getEndCreateDate()
									+ "','yyyy-mm-dd HH24:mi:ss') ";
						}

						if (null != log.getAction()
								&& !"".equalsIgnoreCase(log.getAction())) {
							hql += " and action ='" + log.getAction() + "'";
						}
						Query query = session.createQuery(hql);
						Integer count = (Integer) query.uniqueResult();

						return count;
					}
				});
		return i;
	}

	// 删除登入日志
	public Boolean deleteLoginLog(TLog log) {
		this.getHibernateTemplate().delete(log);
		return true;
	}

	// 删除登入日志
	public Boolean deleteLoginLogByMonth(final String mon) {
		this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				StringBuilder sql = new StringBuilder();
				sql.append("truncate table t_log" + mon);
				SQLQuery query = session.createSQLQuery(sql.toString());
				return query.executeUpdate();
			}
		});
		return true;
	}
}
