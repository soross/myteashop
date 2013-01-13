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
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class TemplateDaoImpl extends HibernateDaoSupport implements TemplateDao {

	/**
	 * ���
	 * 
	 * @param Template
	 * @return
	 */
	public Boolean addTemplate(TTemplate Template) {
		this.getHibernateTemplate().save(Template);
		return true;
	}

	/**
	 * ɾ��
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
	 * ����
	 * 
	 * @param Template
	 * @return
	 */
	public Boolean updateTemplate(TTemplate Template) {
		this.getHibernateTemplate().update(Template);
		return true;
	}

	/**
	 * ȡ���ܼ�¼��
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
	 * ȡ���б�
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
	 * ��ѯ����
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
