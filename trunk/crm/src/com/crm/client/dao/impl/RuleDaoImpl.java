package com.crm.client.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.client.dao.inf.RuleDao;
import com.crm.client.po.TClientrule;
import com.crm.client.po.TRuleexp;
import com.crm.client.po.TRulelog;
import com.crm.page.PageUtil;

public class RuleDaoImpl extends HibernateDaoSupport implements RuleDao {
	/**
	 * 取得日志记录数
	 * @return
	 */
	public Integer getRuleLogCount(){
		return (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TRulelog";
				Query query =session.createQuery(hql);
				return query.uniqueResult();
			}			
		});
	}
	
	
	/**
	 * 取得日志集合
	 * @return
	 */	
	public List getRuleLogList(final PageUtil pageUtil){
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TRulelog order by operdate desc,createdate desc";
				Query query =session.createQuery(hql);
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}			
		});
	}
	
	
	/**
	 * 添加规则表达式
	 * @param ruleexp
	 * @return
	 */
	public Boolean addRuleExp(TRuleexp ruleexp){
		this.getHibernateTemplate().save(ruleexp);		
		return true;
	}
	
	
	/**
	 * 取得序列的下一个ID
	 * @return
	 */
	public Integer getSeqNextValue(){
		String sql = "select SEQ_CLIENTRULE.nextval as nextval from dual";
		SQLQuery query = this.getHibernateTemplate().getSessionFactory().openSession().createSQLQuery(sql);
		query.addScalar("nextval", Hibernate.INTEGER);		
		return (Integer)query.uniqueResult();
		
	}
	
	/**
	 * 添加规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean addClientRule(final TClientrule clientrule ,final TRulelog rulelog){
		
		return (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				session.save(clientrule);
				session.save(rulelog);
				
				return true;
			}
		});
	}
	/**
	 * 修改规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateClientRule(final TClientrule clientrule ,final TRulelog rulelog){
		return (Boolean)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "delete TRuleexp where ruleid="+clientrule.getId(); 
				Query query = session.createQuery(hql);
				query.executeUpdate();
				session.update(clientrule);
				session.save(rulelog);
				return true;
			}
		});
	}
	/**
	 * 查询规则列表
	 * 
	 * @return
	 */
	public List searchRuleList(final TClientrule clientrule ,final PageUtil pageUtil) {
		
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sbf = new StringBuffer("from TClientrule where 1=1 ");
				if(null!= clientrule.getRulename() && !"".equals(clientrule.getRulename())){
					sbf.append(" and rulename like :rulename");
				}
//				if(null!=clientrule.getId()&&!"".equals(clientrule.getId())){
//					sbf.append(" and id=:id");
//				}
				sbf.append(" order by id desc");
				Query query = session.createQuery(sbf.toString());
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				if(null!= clientrule.getRulename() && !"".equals(clientrule.getRulename())){
					query.setString("rulename", "%"+clientrule.getRulename()+"%");
				}
//				if(null!=clientrule.getId()&&!"".equals(clientrule.getId())){
//					query.setLong("id", new Long(clientrule.getId()));
//				}
				List list = query.list();
				
				
				return list;
			}
		});
	}

	/**
	 * 删除规则
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteClientRule(final Long id,TRulelog rulelog) {
		
		TClientrule clientrule = (TClientrule)this.getHibernateTemplate().get(TClientrule.class, id);
		this.getHibernateTemplate().delete(clientrule);
		this.getHibernateTemplate().save(rulelog);
		return true;
	}

	/**
	 * 锁定规则
	 * 
	 * @param clientrule
	 * @return
	 */
	public Boolean updateClientRule(final TClientrule clientrule) {
		return (Boolean) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						TClientrule rule = (TClientrule) session.get(
								TClientrule.class, clientrule.getId());

						rule.setIslock(clientrule.getIslock());
						session.update(rule);
						return true;
					}
				});
	}

	/**
	 * 客户规则
	 * 
	 * @param
	 * @return
	 */
	public TClientrule searchClientrule(final TClientrule clientrule) {
		return (TClientrule) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from TClientrule where id = :id";
						Query query = session.createQuery(hql);
						query.setLong("id", clientrule.getId());
						TClientrule rule = (TClientrule) query.uniqueResult();
						Hibernate.initialize(rule.getRuleExps());
						return rule;
					}
				});
	}
	/**
	 * 取得记录集数量值
	 * @param clientrule
	 * @return
	 */
	public Integer getCount(final TClientrule clientrule){
		
		return (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				StringBuffer sbf = new StringBuffer("select count(*) from TClientrule where 1=1 ");
				if(null!= clientrule.getRulename() && !"".equals(clientrule.getRulename())){
					sbf.append(" and rulename like :rulename");
				}
//				if(null!=clientrule.getId()&&!"".equals(clientrule.getId())){
//					sbf.append(" and id=:id");
//				}
				Query query = session.createQuery(sbf.toString());
				
				if(null!= clientrule.getRulename() && !"".equals(clientrule.getRulename())){
					query.setString("rulename", "%"+clientrule.getRulename()+"%");
				}
//				if(null!=clientrule.getId()&&!"".equals(clientrule.getId())){
//					query.setLong("id", new Long(clientrule.getId()));
//				}
				return query.uniqueResult();
			}
		});
	}
}
