package com.crm.sysdo.service.impl;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.UnitDao;
import com.crm.sysdo.po.TUnit;
import com.crm.sysdo.service.inf.UnitServiceDao;

public class UnitServiceDaoImpl implements UnitServiceDao{
	
	private UnitDao unitProxy;
	
	public List unitList(final TUnit tunit, final Map map,final PageUtil pageUtil){
		return unitProxy.unitList(tunit, map, pageUtil);
	}
	
	public Integer getCount(final TUnit tunit, Map map){
		return unitProxy.getCount(tunit, map);
	}
	
	public void addUnit(TUnit tunit) {
		unitProxy.addUnit(tunit);
	}
	
	public void delUnit(String id) {
		unitProxy.delUnit(id);
	}
	
	public TUnit get(String id){
		return unitProxy.get(id);
	}
	
	public void updateUnit(TUnit tunit) {
		unitProxy.updateUnit(tunit);
	}
	
	public UnitDao getUnitProxy() {
		return unitProxy;
	}

	public void setUnitProxy(UnitDao unitProxy) {
		this.unitProxy = unitProxy;
	}

	

	

	
	

}
