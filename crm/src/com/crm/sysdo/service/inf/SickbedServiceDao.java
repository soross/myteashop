package com.crm.sysdo.service.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.po.TSickbed;

public interface SickbedServiceDao {

	public Boolean addSickbed(TSickbed sickbed);

	public Boolean deleteSickbed(Long id);

	public Integer getSickbedCount();

	public List getSickbedList(PageUtil pageUtil) ;

	public Integer getSeqNextValue() ;

	public Boolean updateSickbed(TSickbed sickbed) ;

}
