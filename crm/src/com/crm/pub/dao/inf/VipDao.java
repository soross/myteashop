package com.crm.pub.dao.inf;

import java.util.List;

import com.crm.group.po.VipCity;
import com.crm.group.po.VipProvince;

public interface VipDao {
	/**
	 * ����ʡ��ȡ�ó���
	 * @param pro
	 * @return
	 */
	public List searchCityList(VipProvince pro);
	
	/**
	 * ȡ�����
	 * @return
	 */
	public List searchProince();
	
	/**
	 * ���ݳ���ȡ�õ���
	 * @param city
	 * @return
	 */
	public List searchAreaList(VipCity city);

}
