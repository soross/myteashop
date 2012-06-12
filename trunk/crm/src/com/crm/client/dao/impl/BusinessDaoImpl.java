package com.crm.client.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.dao.inf.BusinessDao;
import com.crm.client.po.TClient;
import com.crm.client.po.TOperation;
import com.crm.client.po.TOperlog;
import com.crm.page.PageUtil;

public class BusinessDaoImpl extends HibernateDaoSupport implements BusinessDao {

	/**
	 * 查询业务下的所有操作日志
	 * 
	 * @param operlog
	 * @return
	 */
	public List searchBusinessStateLog(final TOperlog operlog){
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TOperlog where operid=:operid";
				Query query =session.createQuery(hql);
				query.setLong("operid", operlog.getOperid());
				return query.list();
			}
		});
	}
	/**
	 * 更新状态 处理业务
	 * 
	 * @param operation
	 * @return
	 */
	public Boolean updateBusinessState(final TOperation operation) {
		TOperation oper = (TOperation) this.getHibernateTemplate().get(
				TOperation.class, operation.getId());
		
			TOperlog operlog = new TOperlog();
			operlog.setOperid(oper.getId());
			operlog.setChangeuser(operation.getCheckuser());
			operlog.setOldstate(oper.getState());
			operlog.setNewstate(operation.getState());
			operlog.setRegdate(new Date());
			operlog.setResult(operation.getResult());			
			this.getHibernateTemplate().save(operlog);
			
			oper.setState(operation.getState());
			oper.setCheckdate(operation.getCheckdate());
			oper.setCheckuser(operation.getCheckuser());
			oper.setResult(operation.getResult());
			this.getHibernateTemplate().update(oper);
		
		return true;
	}

	/**
	 * 根据主键取得对象
	 * 
	 * @param id
	 * @return
	 */
	public List getBusiness(final TOperation operation) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TOperation where phone=:phone and type2=:type2";
						Query query = session.createQuery(hql);
						query.setString("phone", operation.getPhone());
						query.setString("type2", operation.getType2());
						return query.list();
					}
				});
	}

	/**
	 * 根据主键取得对象
	 * 
	 * @param id
	 * @return
	 */
	public TOperation getBusiness(Long id) {
		return (TOperation) this.getHibernateTemplate().get(TOperation.class,
				id);
	}

	/**
	 * 取得业务列表
	 * 
	 * @param operation
	 * @param pageUtil
	 * @return
	 */
	public List searchBusinessList(final TOperation operation,
			final PageUtil pageUtil) {
		List list = (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"from TOperation where 1=1");

						if (null != operation.getId()
								&& !"".equals(operation.getId())
								&& 0 != operation.getId()) {
							hql.append(" and id=:id ");
						}
						if (null != operation.getPhone()
								&& !"".equals(operation.getPhone())) {
							hql.append(" and phone=:phone");
						}
						if (null != operation.getState()
								&& !"".equals(operation.getState())
								&& !"0".equals(operation.getState())) {
							hql.append(" and state=:state");
						}
						// //************************************************************
						if (null != operation.getRegdate()
								&& !"".equals(operation.getRegdate())) {
							hql.append(" and regdate > :regdate");
						}
						if (null != operation.getCheckdate()
								&& !"".equals(operation.getCheckdate())) {
							hql.append(" and regdate < :checkdate");
						}
						// //************************************************************
						if (null != operation.getCanuserdate()
								&& !"".equals(operation.getCanuserdate())
								&& !"0".equals(operation.getCanuserdate())) {
							hql.append(" and canuserdate =:canuserdate");
						}
						if (null != operation.getType1()
								&& !"".equals(operation.getType1())
								&& !"0".equals(operation.getType1())) {
							hql.append(" and type1=:type1");
						}
						if (null != operation.getType2()
								&& !"".equals(operation.getType2())
								&& !"0".equals(operation.getType2())) {
							hql.append(" and type2=:type2");
						}
						if (null != operation.getReguser()
								&& !"".equals(operation.getReguser())) {
							hql.append(" and reguser=:reguser");
						}
						if (null != operation.getCheckuser()
								&& !"".equals(operation.getCheckuser())) {
							hql.append(" and checkuser=:checkuser");
						}

						hql.append(" order by regdate desc");

						Query query = session.createQuery(hql.toString());

						if (null != operation.getId()
								&& !"".equals(operation.getId())
								&& 0 != operation.getId()) {
							query.setLong("id", operation.getId());
						}
						if (null != operation.getPhone()
								&& !"".equals(operation.getPhone())) {
							query.setString("phone", operation.getPhone());
						}
						if (null != operation.getState()
								&& !"".equals(operation.getState())
								&& !"0".equals(operation.getState())) {
							query.setString("state", operation.getState());
						}
						// ************************************************************
						if (null != operation.getRegdate()
								&& !"".equals(operation.getRegdate())) {
							query.setTimestamp("regdate", operation
									.getRegdate());
						}
						if (null != operation.getCheckdate()
								&& !"".equals(operation.getCheckdate())) {
							query.setTimestamp("checkdate", operation
									.getCheckdate());
						}
						// //************************************************************
						if (null != operation.getCanuserdate()
								&& !"".equals(operation.getCanuserdate())
								&& !"0".equals(operation.getCanuserdate())) {
							query.setString("canuserdate", operation
									.getCanuserdate());
						}
						if (null != operation.getType1()
								&& !"".equals(operation.getType1())
								&& !"0".equals(operation.getType1())) {
							query.setString("type1", operation.getType1());
						}
						if (null != operation.getType2()
								&& !"".equals(operation.getType2())
								&& !"0".equals(operation.getType2())) {
							query.setString("type2", operation.getType2());
						}
						if (null != operation.getReguser()
								&& !"".equals(operation.getReguser())) {
							query.setString("reguser", operation.getReguser());
						}
						if (null != operation.getCheckuser()
								&& !"".equals(operation.getCheckuser())) {
							query.setString("checkuser", operation
									.getCheckuser());
						}

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());

						return query.list();
					}
				});
		return list;
	}

	/**
	 * 取得记录数
	 * 
	 * @param operation
	 * @return
	 */
	public Integer getCount(final TOperation operation) {
		Integer count = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						StringBuffer hql = new StringBuffer(
								"select count(*) from TOperation where 1=1");

						if (null != operation.getId()
								&& !"".equals(operation.getId())
								&& 0 != operation.getId()) {
							hql.append(" and id=:id ");
						}
						if (null != operation.getPhone()
								&& !"".equals(operation.getPhone())) {
							hql.append(" and phone=:phone");
						}
						if (null != operation.getState()
								&& !"".equals(operation.getState())
								&& !"0".equals(operation.getState())) {
							hql.append(" and state=:state");
						}

						// ***************************
						if (null != operation.getRegdate()
								&& !"".equals(operation.getRegdate())) {
							hql.append(" and regdate > :regdate ");
						}
						if (null != operation.getCheckdate()
								&& !"".equals(operation.getCheckdate())) {
							hql.append(" and regdate < :checkdate ");
						}
						// ***************************

						if (null != operation.getCanuserdate()
								&& !"".equals(operation.getCanuserdate())
								&& !"0".equals(operation.getCanuserdate())) {
							hql.append(" and canuserdate =:canuserdate");
						}//
						if (null != operation.getType1()
								&& !"".equals(operation.getType1())
								&& !"0".equals(operation.getType1())) {
							hql.append(" and type1=:type1");
						}
						if (null != operation.getType2()
								&& !"".equals(operation.getType2())
								&& !"0".equals(operation.getType2())) {
							hql.append(" and type2=:type2");
						}//
						if (null != operation.getReguser()
								&& !"".equals(operation.getReguser())) {
							hql.append(" and reguser=:reguser");
						}
						if (null != operation.getCheckuser()
								&& !"".equals(operation.getCheckuser())) {
							hql.append(" and checkuser=:checkuser");
						}

						Query query = session.createQuery(hql.toString());

						if (null != operation.getId()
								&& !"".equals(operation.getId())
								&& 0 != operation.getId()) {
							query.setLong("id", operation.getId());
						}
						if (null != operation.getPhone()
								&& !"".equals(operation.getPhone())) {
							query.setString("phone", operation.getPhone());
						}
						if (null != operation.getState()
								&& !"".equals(operation.getState())
								&& !"0".equals(operation.getState())) {
							query.setString("state", operation.getState());
						}

						if (null != operation.getRegdate()
								&& !"".equals(operation.getRegdate())) {
							query.setTimestamp("regdate", operation
									.getRegdate());
						}
						if (null != operation.getCheckdate()
								&& !"".equals(operation.getCheckdate())) {
							query.setTimestamp("checkdate", operation
									.getCheckdate());
						}

						if (null != operation.getCanuserdate()
								&& !"".equals(operation.getCanuserdate())
								&& !"0".equals(operation.getCanuserdate())) {
							query.setString("canuserdate", operation
									.getCanuserdate());
						}
						if (null != operation.getType1()
								&& !"".equals(operation.getType1())
								&& !"0".equals(operation.getType1())) {
							query.setString("type1", operation.getType1());
						}
						if (null != operation.getType2()
								&& !"".equals(operation.getType2())
								&& !"0".equals(operation.getType2())) {
							query.setString("type2", operation.getType2());
						}
						if (null != operation.getReguser()
								&& !"".equals(operation.getReguser())) {
							query.setString("reguser", operation.getReguser());
						}
						if (null != operation.getCheckuser()
								&& !"".equals(operation.getCheckuser())) {
							query.setString("checkuser", operation
									.getCheckuser());
						}

						System.out.println(hql.toString());

						return query.uniqueResult();
					}
				});

		return count;
	}

	/**
	 * 根据父类ID取得子类
	 * 
	 * @param pid
	 * @return
	 */
	public List searchSonBusiness(final Long pid) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TOperationtype where pid = " + pid;
						Query query = session.createQuery(hql);
						return query.list();
					}
				});
	}

	/**
	 * 检查手机号是否存在
	 * 
	 * @param phone
	 * @return
	 */
	public TClient getPhoneCheck(String phone) {
		TClient client = (TClient) this.getHibernateTemplate().get(
				TClient.class, phone);

		return client;
	}

	/**
	 * 业务登记
	 * 
	 * @param operation
	 * @return
	 */
	public Boolean addBusiness(TOperation operation) {
		this.getHibernateTemplate().save(operation);
		return true;
	}

	/**
	 * 取得业务类型
	 * 
	 * @return
	 */
	public List searchBusinessTypeList() {
		return this.getHibernateTemplate().find("from TOperationtype");
	}

}
