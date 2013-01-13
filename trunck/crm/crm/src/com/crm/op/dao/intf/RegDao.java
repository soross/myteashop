package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCustomer;
import com.crm.op.po.TRegister;
import com.crm.page.PageUtil;

public interface RegDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRegCount();
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRegCount(TRegister reg);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRegList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRegList(TRegister reg, PageUtil pageUtil);

	public List getRegList();

	public TRegister getRegByID(Long id);

	/**
	 * 新增
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addReg(TRegister reg);

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
	public Boolean updateReg(TRegister reg);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteReg(Long id);
}
