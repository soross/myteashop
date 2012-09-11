package com.crm.sysdo.service.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.po.TSickbed;

public interface SickbedServiceDao {
	public TSickbed getSickbedById(Long id);
	
	public Boolean addSickbed(TSickbed sickbed);

	public Boolean deleteSickbed(Long id);

	public Integer getSickbedCount(TSickbed sickbed);

	public List getSickbedList(PageUtil pageUtil,TSickbed sickbed) ;

	public Integer getSeqNextValue() ;

	public Boolean updateSickbed(TSickbed sickbed) ;

}
