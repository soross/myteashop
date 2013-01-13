package com.crm.sysdo.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TFeeItem;

public interface FeeItemDao {
	
public List getFeeItemList( PageUtil pageUtil, TFeeItem tFeeItem);
	
	public Integer getCount( TFeeItem tFeeItem );
	
	public void addFeeItem(TFeeItem tFeeItem);

	public void deleteFeeItem(String id);
	
	public TFeeItem getFeeItemById(String id);
	
	public void updateFeeItem(TFeeItem tFeeItem);

}
