package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TSick;
import com.crm.page.PageUtil;

public interface SickDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getSickCount();
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getSickCount(TSick Sick);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getSickList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getSickList(TSick Sick, PageUtil pageUtil);

	public List getSickList();

	public TSick getSickByID(Long id);

	/**
	 * 会员
	 * 
	 * @param Sick
	 * @return
	 */
	public Boolean addSick(TSick Sick);

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateSick(TSick Sick);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteSick(Long id);
}
