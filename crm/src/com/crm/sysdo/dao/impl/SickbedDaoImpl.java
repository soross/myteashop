package com.crm.sysdo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.SickbedDao;
import com.crm.sysdo.po.TSickbed;

public class SickbedDaoImpl extends HibernateDaoSupport implements SickbedDao {
	
	public TSickbed getSickbedById(Long id){
		return (TSickbed)this.getHibernateTemplate().get(TSickbed.class, id);
	}
	
	public Boolean addSickbed(TSickbed sickbed) {
		this.getHibernateTemplate().save(sickbed);		
		return null;
	}

	public Boolean deleteSickbed(Long id) {
		TSickbed sickbed = (TSickbed)this.getHibernateTemplate().get(TSickbed.class, id);
		this.getHibernateTemplate().delete(sickbed);
		return null;
	}

	public Integer getSickbedCount(final TSickbed sickbed) {
		return (Integer)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "select count(*) from TSickbed where 1=1 ";
				if(null!=sickbed.getCode() && !"".equalsIgnoreCase(sickbed.getCode())){
					hql=hql+ " and code='"+sickbed.getCode()+"'";
				}
				if(null!=sickbed.getSickbed() && !"".equalsIgnoreCase(sickbed.getSickbed())){
					hql=hql+ " and sickbed like '%"+sickbed.getSickbed()+"%'";
				}
				Query query =session.createQuery(hql);
				return query.uniqueResult();
			}			
		});
	}

	public List getSickbedList(final PageUtil pageUtil,final TSickbed sickbed) {
		return (List)this.getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from TSickbed where 1=1 ";
				if(null!=sickbed.getCode() && !"".equalsIgnoreCase(sickbed.getCode())){
					hql=hql+ " and code='"+sickbed.getCode()+"'";
				}
				if(null!=sickbed.getSickbed() && !"".equalsIgnoreCase(sickbed.getSickbed())){
					hql=hql+ " and sickbed like '%"+sickbed.getSickbed()+"%'";
				}
				Query query =session.createQuery(hql);
				query.setFirstResult(pageUtil.pastart());
				query.setMaxResults(pageUtil.getPagesize());
				return query.list();
			}			
		});
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateSickbed(TSickbed sickbed) {
		this.getHibernateTemplate().update(sickbed);
		return true;
	}

}
