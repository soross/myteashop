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

	public void deleteFeeItem(String id) {
		feeItemProxy.deleteFeeItem(id);
	}

	public List getFeeItemList( PageUtil pageUtil,TFeeItem tFeeItem) {
		return feeItemProxy.getFeeItemList(pageUtil, tFeeItem);
	}

	public TFeeItem getFeeItemById(String id) {
		return feeItemProxy.getFeeItemById(id);
	}

	public Integer getCount(TFeeItem tFeeItem) {
		return feeItemProxy.getCount(tFeeItem);
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
