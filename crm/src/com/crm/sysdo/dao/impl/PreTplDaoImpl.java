package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.PreTplDao;
import com.crm.sysdo.po.TPreTpl;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class PreTplDaoImpl extends HibernateDaoSupport implements PreTplDao {

	/**
	 * 添加
	 * 
	 * @param PreTpl
	 * @return
	 */
	public Boolean addPreTpl(TPreTpl PreTpl) {
		this.getHibernateTemplate().save(PreTpl);
		return true;
	}

	/**
	 * 删除
	 * 
	 * @param PreTpl
	 * @return
	 */
	public Boolean deletePreTpl(final TPreTpl PreTpl) {
		Boolean bool = (Boolean) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "delete TPreTpl where id=:id";
						Query query = session.createQuery(hql);
						query.setLong("id", PreTpl.getId());
						query.executeUpdate();
						return null;
					}
				});
		return true;
	}

	/**
	 * 更新
	 * 
	 * @param PreTpl
	 * @return
	 */
	public Boolean updatePreTpl(TPreTpl PreTpl) {
		this.getHibernateTemplate().update(PreTpl);
		return true;
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(final TPreTpl PreTpl) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TPreTpl where 1=1 ";
						if (null != PreTpl
								&& null != PreTpl.getTemplatename()
								&& !"".equals(PreTpl.getTemplatename())) {
							hql = hql + " and PreTplname like '%"
									+ PreTpl.getTemplatename() + "%'";
						}

						Query query = session.createQuery(hql);
						Integer count = (Integer) query.uniqueResult();
						return count;
					}
				});

		return i;
	}

	/**
	 * 取得列表
	 * 
	 * @return
	 */
	public List getPreTplList(final PageUtil pageUtil,
			final TPreTpl PreTpl) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer hql = new StringBuffer(
								"from TPreTpl where 1=1");

						if (null != PreTpl
								&& null != PreTpl.getTemplatename()
								&& !"".equals(PreTpl.getTemplatename())) {
							hql.append(" and PreTplname like '%"
									+ PreTpl.getTemplatename() + "%' ");
						}

						Query query = session.createQuery(hql.toString());

						query.setFirstResult(pageUtil.pastart());
						query.setMaxResults(pageUtil.getPagesize());

						List list = query.list();
						return list;
					}
				});

		return list;
	}

	/**
	 * 查询对象
	 * 
	 * @param id
	 * @return
	 */
	public TPreTpl getPreTplById(Long id) {

		TPreTpl PreTpl = (TPreTpl) this.getHibernateTemplate().get(
				TPreTpl.class, id);
		return PreTpl;
	}
}
