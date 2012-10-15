package com.crm.report.dao.impl;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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

/**
 * 
 * <p>类用途：门诊报表</p>
 * <p>特别声明：无</p>
 * <p>版权信息：FSTI Copyright (c) 2012</p>
 * ==============================================
 * @author ChenYS
 * @version 1.0
 * @data 2012-10-15 下午08:46:19
 * ==============================================
 * 修改日志:
 * ##############################################
 *     日期　　　　修改原因　　　　修改人员
 * 
 * ##############################################
 */
public class RegisterReportDaoImpl extends HibernateDaoSupport implements RegisterReportDao{
	
	/**
	 * 门诊汇总
	 * @return
	 */
	public List registerAmount(final RegisterAmountBean regAmount) {
		List list = this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuilder sql = new StringBuilder();
						sql.append("select SUM(tf.fee) as fee_sum, count(tr.id) as id_count from t_register tr, t_register_fee tf where tr.id = tf.order_id");
						if (!MatchUtil.isEmpty(regAmount)) {
							if (!MatchUtil.isEmpty(regAmount.getBeginDate())) {
								sql.append(" and tf.fee_date >= "
										+  "TO_DATE('" +DateUtil.DateToStringBy_YMDHMS(DateUtil.StringToDate_YMDHMS(regAmount.getBeginDate()), "yyyy-MM-dd HH/mm/ss")+"', 'YYYY-MM-DD HH24/MI/SS')");
							}
							if (!MatchUtil.isEmpty(regAmount.getEndDate())) {
								sql.append(" and tf.fee_date <= "
										+  "TO_DATE('" +DateUtil.DateToStringBy_YMDHMS(DateUtil.StringToDate_YMDHMS(regAmount.getEndDate()), "yyyy-MM-dd HH/mm/ss")+"', 'YYYY-MM-DD HH24/MI/SS')");
							}
						}
						SQLQuery query = session.createSQLQuery(sql.toString());
						query.addScalar("fee_sum", Hibernate.DOUBLE);
			            query.addScalar("id_count", Hibernate.INTEGER);
						List list = query.list();
						List<RegisterAmountBean> regList = new ArrayList<RegisterAmountBean>();
						for(Object obj : list){
							RegisterAmountBean regBean = new RegisterAmountBean();
							Object[] objArray = (Object[])obj;
							if(!MatchUtil.isEmpty(objArray[0])){
								regBean.setFeeSum(Double.valueOf(objArray[0].toString()));
							} else {
								regBean.setFeeSum(0);
							}
							if(!MatchUtil.isEmpty(objArray[1])){
								regBean.setCustSum(Integer.valueOf(objArray[1].toString()));
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

}
