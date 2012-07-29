package com.crm.sysdo.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TUnit;

public interface UnitDao {
	
	public List unitList(final TUnit tunit, final Map map,final PageUtil pageUtil);
	
	public Integer getCount(final TUnit tunit, Map map);

	public void addUnit(TUnit tunit);
	
	public void delUnit(String id);
	
	public TUnit get(String id);
	
	public void updateUnit(TUnit tunit);
}
