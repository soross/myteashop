package com.crm.sysdo.service.impl;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.FeeItemDao;
import com.crm.sysdo.po.TFeeItem;
import com.crm.sysdo.service.inf.FeeItemServiceDao;

public class FeeItemServiceDaoImpl implements FeeItemServiceDao {
	
	private FeeItemDao feeItemProxy;

	public void addFeeItem(TFeeItem tFeeItem) {
	    feeItemProxy.addFeeItem(tFeeItem);
	}

	public void delFeeItem(String id) {
		feeItemProxy.delFeeItem(id);
	}

	public List feeItemList(TFeeItem tFeeItem, Map map, PageUtil pageUtil) {
		return feeItemProxy.feeItemList(tFeeItem, map, pageUtil);
	}

	public TFeeItem get(String id) {
		return feeItemProxy.get(id);
	}

	public Integer getCount(TFeeItem tFeeItem, Map map) {
		return feeItemProxy.getCount(tFeeItem, map);
	}

	public void updateFeeItem(TFeeItem tFeeItem) {
		feeItemProxy.updateFeeItem(tFeeItem);
	}

	public FeeItemDao getFeeItemProxy() {
		return feeItemProxy;
	}

	public void setFeeItemProxy(FeeItemDao feeItemProxy) {
		this.feeItemProxy = feeItemProxy;
	}

}
