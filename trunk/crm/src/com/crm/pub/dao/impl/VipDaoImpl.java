package com.crm.pub.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.pub.dao.inf.VipDao;

public class VipDaoImpl extends HibernateDaoSupport implements VipDao {
	/**
	 * ����ʡ��ȡ�ó���
	 * 
	 * @param pro
	 * @return
	 */
	//public List searchCityList(VipProvince pro) {
	//	return this.getHibernateTemplate().find(
	//			"from VipCity where VProvince=?", pro.getVCode());
	//}

	/**
	 * ȡ�����
	 * 
	 * @return
	 */
	public List searchProince() {
		return this.getHibernateTemplate().find("from VipProvince");
	}

	/**
	 * ���ݳ���ȡ�õ���
	 * 
	 * @param city
	 * @return
	 */
	//public List searchAreaList(VipCity city) {
	//	return this.getHibernateTemplate().find("from VipArea where VCity=?",
	//			city.getVProvince() + city.getVCode());
//
	//}
}
