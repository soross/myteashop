package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DisTplDao;
import com.crm.sysdo.po.TDisTpl;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class DisTplDaoImpl extends HibernateDaoSupport implements DisTplDao {

	/**
	 * 添加
	 * 
	 * @param DisTpl
	 * @return
	 */
	public Boolean addDisTpl(TDisTpl DisTpl) {
		this.getHibernateTemplate().save(DisTpl);
		return true;
	}

	/**
	 * 删除
	 * 
	 * @param DisTpl
	 * @return
	 */
	public Boolean deleteDisTpl(final TDisTpl DisTpl) {
		Boolean bool = (Boolean) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "delete TDisTpl where id=:id";
						Query query = session.createQuery(hql);
						query.setLong("id", DisTpl.getId());
						query.executeUpdate();
						return null;
					}
				});
		return true;
	}

	/**
	 * 更新
	 * 
	 * @param DisTpl
	 * @return
	 */
	public Boolean updateDisTpl(TDisTpl DisTpl) {
		this.getHibernateTemplate().update(DisTpl);
		return true;
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(final TDisTpl DisTpl) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TDisTpl where 1=1 ";
						if (null != DisTpl
								&& null != DisTpl.getTemplatename()
								&& !"".equals(DisTpl.getTemplatename())) {
							hql = hql + " and DisTplname like '%"
									+ DisTpl.getTemplatename() + "%'";
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
	public List getDisTplList(final PageUtil pageUtil,
			final TDisTpl DisTpl) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer hql = new StringBuffer(
								"from TDisTpl where 1=1");

						if (null != DisTpl
								&& null != DisTpl.getTemplatename()
								&& !"".equals(DisTpl.getTemplatename())) {
							hql.append(" and DisTplname like '%"
									+ DisTpl.getTemplatename() + "%' ");
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
	public TDisTpl getDisTplById(Long id) {

		TDisTpl DisTpl = (TDisTpl) this.getHibernateTemplate().get(
				TDisTpl.class, id);
		return DisTpl;
	}
}
