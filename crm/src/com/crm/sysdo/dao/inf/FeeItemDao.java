package com.crm.sysdo.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TFeeItem;

public interface FeeItemDao {
	
	public List feeItemList(final TFeeItem tFeeItem, final Map map,final PageUtil pageUtil);
	
	public Integer getCount(final TFeeItem tFeeItem, Map map);
	
	public void addFeeItem(TFeeItem tFeeItem);

	public void delFeeItem(String id);
	
	public TFeeItem get(String id);
	
	public void updateFeeItem(TFeeItem tFeeItem);

}
