package com.crm.pub.dao.inf;

import java.util.List;

public interface VipDao {
	/**
	 * 根据省份取得城市
	 * @param pro
	 * @return
	 */
	//public List searchCityList(VipProvince pro);
	
	/**
	 * 取得身份
	 * @return
	 */
	public List searchProince();
	
	/**
	 * 根据城市取得地区
	 * @param city
	 * @return
	 */
	//public List searchAreaList(VipCity city);

}
