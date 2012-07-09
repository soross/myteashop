package com.crm.pub.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;
import com.crm.pub.dao.inf.VipDao;

public class VipDaoImpl extends HibernateDaoSupport implements VipDao {
	/**
	 * 根据省份取得城市
	 * 
	 * @param pro
	 * @return
	 */
	public List searchCityList(VipProvince pro) {
		return this.getHibernateTemplate().find(
				"from VipCity where VProvince=?", pro.getVCode());
	}

	/**
	 * 取得身份
	 * 
	 * @return
	 */
	public List searchProince() {
		return this.getHibernateTemplate().find("from VipProvince");
	}

	/**
	 * 根据城市取得地区
	 * 
	 * @param city
	 * @return
	 */
	public List searchAreaList(VipCity city) {
		return this.getHibernateTemplate().find("from VipArea where VCity=?",
				city.getVProvince() + city.getVCode());

	}
}
