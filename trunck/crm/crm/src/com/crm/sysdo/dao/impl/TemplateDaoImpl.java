package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.GoodsDao;
import com.crm.sysdo.dao.inf.TemplateDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TTemplate;

/**
 * 数字字典操作Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class TemplateDaoImpl extends HibernateDaoSupport implements TemplateDao {

	/**
	 * 添加
	 * 
	 * @param Template
	 * @return
	 */
	public Boolean addTemplate(TTemplate Template) {
		this.getHibernateTemplate().save(Template);
		return true;
	}

	/**
	 * 删除
	 * 
	 * @param Template
	 * @return
	 */
	public Boolean deleteTemplate(final TTemplate Template) {
		Boolean bool = (Boolean) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "delete TTemplate where id=:id";
						Query query = session.createQuery(hql);
						query.setLong("id", Template.getId());
						query.executeUpdate();
						return null;
					}
				});
		return true;
	}

	/**
	 * 更新
	 * 
	 * @param Template
	 * @return
	 */
	public Boolean updateTemplate(TTemplate Template) {
		this.getHibernateTemplate().update(Template);
		return true;
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(final TTemplate Template) {
		Integer i = (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from TTemplate where 1=1 ";
						if (null != Template
								&& null != Template.getTemplatename()
								&& !"".equals(Template.getTemplatename())) {
							hql = hql + " and Templatename like '%"
									+ Template.getTemplatename() + "%'";
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
	public List getTemplateList(final PageUtil pageUtil,
			final TTemplate Template) {
		List list = (List) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						StringBuffer hql = new StringBuffer(
								"from TTemplate where 1=1");

						if (null != Template
								&& null != Template.getTemplatename()
								&& !"".equals(Template.getTemplatename())) {
							hql.append(" and Templatename like '%"
									+ Template.getTemplatename() + "%' ");
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
	public TTemplate getTemplateById(Long id) {

		TTemplate Template = (TTemplate) this.getHibernateTemplate().get(
				TTemplate.class, id);
		return Template;
	}
}
