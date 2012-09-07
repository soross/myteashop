package com.crm.sysdo.service.inf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public interface DeptServiceDao {

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getDeptCount();

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getDeptList(PageUtil pageUtil);
	public List getDeptList();
	
	public List getDeptList(String type);
	
	public TDept getDeptByID(Long id);

	/**
	 * 部门
	 * 
	 * @param dept
	 * @return
	 */
	public Boolean addDept(TDept dept);

	/**
	 * 取得序列的下一个ID
	 * 
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
	public Boolean updateDept(TDept dept);

	/**
	 * 删除规则
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteDept(Long id);

}
