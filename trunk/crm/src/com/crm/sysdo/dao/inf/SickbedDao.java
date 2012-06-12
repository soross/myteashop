package com.crm.sysdo.dao.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TSickbed;

public interface SickbedDao {
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getSickbedCount();
	/**
	 * 取得集合
	 * @return
	 */	
	public List getSickbedList(PageUtil pageUtil);
	
	/**
	 * 部门
	 * @param dept
	 * @return
	 */
	public Boolean addSickbed(TSickbed sickbed);
	
	/**
	 * 取得序列的下一个ID
	 * @return
	 */
	public Integer getSeqNextValue();
	/**
	 * 修改规则
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateSickbed(TSickbed sickbed);
	/**
	 * 删除规则
	 * @param id
	 * @return
	 */
	public Boolean deleteSickbed(Long id);
}
