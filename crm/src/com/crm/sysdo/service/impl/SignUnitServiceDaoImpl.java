package com.crm.sysdo.service.impl;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.SignUnitDao;
import com.crm.sysdo.po.TSignUnit;
import com.crm.sysdo.service.inf.SignUnitServiceDao;

public class SignUnitServiceDaoImpl implements SignUnitServiceDao{

	private SignUnitDao signUnitProxy;
	
	public void addSignUnit(TSignUnit tSignUnit) {
		// TODO Auto-generated method stub
		signUnitProxy.addSignUnit(tSignUnit);
	}

	public void delSignUnit(String id) {
		// TODO Auto-generated method stub
		signUnitProxy.delSignUnit(id);
	}

	public TSignUnit get(String id) {
		// TODO Auto-generated method stub
		return signUnitProxy.get(id);
	}

	public Integer getCount(TSignUnit tSignUnit, Map map) {
		// TODO Auto-generated method stub
		return signUnitProxy.getCount(tSignUnit, map);
	}

	public List signunitList(TSignUnit tSignUnit, Map map, PageUtil pageUtil) {
		// TODO Auto-generated method stub
		return signUnitProxy.signunitList(tSignUnit, map, pageUtil);
	}

	public void updateSignUnit(TSignUnit tSignUnit) {
		// TODO Auto-generated method stub
		signUnitProxy.updateSignUnit(tSignUnit);
	}

	public SignUnitDao getSignUnitProxy() {
		return signUnitProxy;
	}

	public void setSignUnitProxy(SignUnitDao signUnitProxy) {
		this.signUnitProxy = signUnitProxy;
	}
	
	

}
