package com.crm.sysdo.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TSignUnit;

public interface SignUnitDao {
	
	public List signunitList(final TSignUnit tSignUnit, final Map map,final PageUtil pageUtil);
	
	public Integer getCount(final TSignUnit tSignUnit, Map map);

	public void addSignUnit(TSignUnit tSignUnit);
	
	public void delSignUnit(String id);
	
	public TSignUnit get(String id);
	
	public void updateSignUnit(TSignUnit tSignUnit);

}
