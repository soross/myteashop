package com.crm.report.dao.impl;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.report.dao.inf.RegisterReportDao;
import com.crm.report.struts.bean.RegisterAmountBean;
import com.crm.tool.DateUtil;
import com.crm.tool.MatchUtil;
import com.crm.tool.StringUtil;

/**
 * 
 * <p>
 * 类用途：门诊报表
 * </p>
 * <p>
 * 特别声明：无
 * </p>
 * <p>
 * 版权信息：FSTI Copyright (c) 2012
 * </p>
 * ==============================================
 * 
 * @author ChenYS
 * @version 1.0
 * @data 2012-10-15 下午08:46:19 ==============================================
 *       修改日志: ############################################## 日期 修改原因 修改人员
 * 
 * ##############################################
 */
public class RegisterReportDaoImpl extends HibernateDaoSupport implements
		RegisterReportDao {

	/**
	 * 门诊汇总
	 * 
	 * @return
	 */
	public List registerAmount(final RegisterAmountBean regAmount) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuilder sql = new StringBuilder();
						sql
								.append("select SUM(tf.fee) as fee_sum, count(tr.id) as id_count from t_register tr, t_register_fee tf where tr.id = tf.order_id");
						if (!MatchUtil.isEmpty(regAmount)) {
							if (!MatchUtil.isEmpty(regAmount.getBeginDate())) {
								sql
										.append(" and tf.fee_date >= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getBeginDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
							if (!MatchUtil.isEmpty(regAmount.getEndDate())) {
								sql
										.append(" and tf.fee_date <= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getEndDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
						}
						SQLQuery query = session.createSQLQuery(sql.toString());
						query.addScalar("fee_sum", Hibernate.DOUBLE);
						query.addScalar("id_count", Hibernate.INTEGER);
						List list = query.list();
						List<RegisterAmountBean> regList = new ArrayList<RegisterAmountBean>();
						for (Object obj : list) {
							RegisterAmountBean regBean = new RegisterAmountBean();
							Object[] objArray = (Object[]) obj;
							if (!MatchUtil.isEmpty(objArray[0])) {
								regBean.setFeeSum(Double.valueOf(objArray[0]
										.toString()));
							} else {
								regBean.setFeeSum(0);
							}
							if (!MatchUtil.isEmpty(objArray[1])) {
								regBean.setCustSum(Integer.valueOf(objArray[1]
										.toString()));
							} else {
								regBean.setCustSum(0);
							}
							regList.add(regBean);
						}
						return regList;
					}
				});
		return list;
	}

	/**
	 * 门诊明细
	 * 
	 * @param map
	 * @return
	 */
	public List getRegDetailsList(final Map<String, Object> map) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer sql = new StringBuffer();
						sql
								.append("select t.id as id, t.cust_name as cust_name, t.doctor as doctor, t.create_date as cust_create_date, t.staff as staff, t.old as old, t.garden as garden, "
										+ "rf.fee as fee, rf.create_date as fee_create_date, rf.fee_date as fee_date, rf.fee_staff as fee_staff from t_register t, t_register_fee rf "
										+ "where t.id = rf.order_id");
						if (!MatchUtil.isEmpty(map)) {
							String beginDate = StringUtil.toString(map
									.get("beginDate"));
							String endDate = StringUtil.toString(map
									.get("endDate"));
							if (!MatchUtil.isEmpty(beginDate)) {
								sql
										.append(" and rf.fee_date >= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(beginDate),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
							if (!MatchUtil.isEmpty(endDate)) {
								sql
										.append(" and rf.fee_date <= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(endDate),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
						}
						SQLQuery query = session.createSQLQuery(sql.toString());
						query.addScalar("id", Hibernate.LONG);
						query.addScalar("cust_name", Hibernate.STRING);
						query.addScalar("doctor", Hibernate.STRING);
						query.addScalar("cust_create_date", Hibernate.STRING);
						query.addScalar("staff", Hibernate.STRING);
						query.addScalar("old", Hibernate.INTEGER);
						query.addScalar("garden", Hibernate.STRING);
						query.addScalar("fee", Hibernate.DOUBLE);
						query.addScalar("fee_create_date", Hibernate.STRING);
						query.addScalar("fee_date", Hibernate.STRING);
						query.addScalar("fee_staff", Hibernate.STRING);
						return query.list();
					}
				});
		return list;

	}

	/**
	 * 职工业务统计
	 * 
	 * @return
	 */
	public List staffBusinessCount(final RegisterAmountBean regAmount) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuilder sql = new StringBuilder();
						sql
								.append("select a.staff,a.cnt,u.username from(select staff,count(*) cnt from t_register t where 1=1 ");
						if (!MatchUtil.isEmpty(regAmount)) {
							if (!MatchUtil.isEmpty(regAmount.getBeginDate())) {
								sql
										.append(" and t.create_date >= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getBeginDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
							if (!MatchUtil.isEmpty(regAmount.getEndDate())) {
								sql
										.append(" and t.create_date <= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getEndDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
						}
						sql
								.append(" group by t.staff ) a,t_user u where a.staff=u.userid   ");

						SQLQuery query = session.createSQLQuery(sql.toString());
						query.addScalar("staff", Hibernate.STRING);
						query.addScalar("cnt", Hibernate.INTEGER);
						query.addScalar("username", Hibernate.STRING);
						List list = query.list();
						List<RegisterAmountBean> regList = new ArrayList<RegisterAmountBean>();
						for (Object obj : list) {
							RegisterAmountBean regBean = new RegisterAmountBean();
							Object[] objArray = (Object[]) obj;

							regBean.setStaffid(objArray[0].toString());

							if (!MatchUtil.isEmpty(objArray[1])) {
								regBean.setCustSum(Integer.valueOf(objArray[1]
										.toString()));
							} else {
								regBean.setCustSum(0);
							}

							regBean.setStaffname(objArray[2].toString());

							regList.add(regBean);
						}
						return regList;
					}
				});
		return list;
	}

	/**
	 * 职工业务收入统计
	 * 
	 * @return
	 */
	public List staffBusinessIncome(final RegisterAmountBean regAmount) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuilder sql = new StringBuilder();
						sql
								.append("select a.staff,a.sumfee,u.username from (select aaa.staff,sum(aaa.fee) sumfee from ("
										+ "select r.staff,rf.fee*sg.ratio/100 fee from t_register_fee rf,t_register r,t_staff_getfee sg"
										+ " where rf.order_id=r.id and r.staff = sg.staffid ");
						if (!MatchUtil.isEmpty(regAmount)) {
							if (!MatchUtil.isEmpty(regAmount.getBeginDate())) {
								sql
										.append(" and r.create_date >= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getBeginDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
							if (!MatchUtil.isEmpty(regAmount.getEndDate())) {
								sql
										.append(" and r.create_date <= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getEndDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
						}
						sql
								.append(")aaa group by aaa.staff ) a,t_user u where a.staff=u.userid   ");

						SQLQuery query = session.createSQLQuery(sql.toString());
						query.addScalar("staff", Hibernate.STRING);
						query.addScalar("sumfee", Hibernate.DOUBLE);
						query.addScalar("username", Hibernate.STRING);
						List list = query.list();
						List<RegisterAmountBean> regList = new ArrayList<RegisterAmountBean>();
						for (Object obj : list) {
							RegisterAmountBean regBean = new RegisterAmountBean();
							Object[] objArray = (Object[]) obj;

							regBean.setStaffid(objArray[0].toString());

							if (!MatchUtil.isEmpty(objArray[1])) {
								regBean.setIncome(objArray[1].toString());
							} else {
								regBean.setIncome("0");
							}

							regBean.setStaffname(objArray[2].toString());

							regList.add(regBean);
						}
						return regList;
					}
				});
		return list;
	}
	
	/**
	 * 部门业务收入统计
	 * 
	 * @return
	 */
	public List deptBusinessIncome(final RegisterAmountBean regAmount) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuilder sql = new StringBuilder();
						sql
								.append("select d.dept_name, sum(a.sumfee) sumfee  from  (select aaa.staff,sum(aaa.fee) sumfee from ("
										+ "select r.staff,rf.fee*sg.ratio/100 fee from t_register_fee rf,t_register r,t_staff_getfee sg"
										+ " where rf.order_id=r.id and r.staff = sg.staffid ");
						if (!MatchUtil.isEmpty(regAmount)) {
							if (!MatchUtil.isEmpty(regAmount.getBeginDate())) {
								sql
										.append(" and r.create_date >= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getBeginDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
							if (!MatchUtil.isEmpty(regAmount.getEndDate())) {
								sql
										.append(" and r.create_date <= "
												+ "TO_DATE('"
												+ DateUtil
														.DateToStringBy_YMDHMS(
																DateUtil
																		.StringToDate_YMDHMS(regAmount
																				.getEndDate()),
																"yyyy-MM-dd HH/mm/ss")
												+ "', 'YYYY-MM-DD HH24/MI/SS')");
							}
						}
						sql
								.append(")aaa group by aaa.staff ) a,     t_user_dept ud,t_dept d where " +
										"a.staff = ud.userid and ud.deptid = d.id group by d.dept_name ");

						SQLQuery query = session.createSQLQuery(sql.toString());
						query.addScalar("dept_name", Hibernate.STRING);
						query.addScalar("sumfee", Hibernate.DOUBLE);
						
						List list = query.list();
						List<RegisterAmountBean> regList = new ArrayList<RegisterAmountBean>();
						for (Object obj : list) {
							RegisterAmountBean regBean = new RegisterAmountBean();
							Object[] objArray = (Object[]) obj;
							regBean.setStaffid(objArray[0].toString());
							if (!MatchUtil.isEmpty(objArray[1])) {
								regBean.setIncome(objArray[1].toString());
							} else {
								regBean.setIncome("0");
							}

							regList.add(regBean);
						}
						return regList;
					}
				});
		return list;
	}

}
