package com.crm.account.dao.intf;

import java.util.List;

import com.crm.account.po.TSickFeeBill;
import com.crm.page.PageUtil;

public interface BillDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getBillCount();
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getBillCount(TSickFeeBill Bill);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getBillList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getBillList(TSickFeeBill Bill, PageUtil pageUtil);

	public List getBillList();

	public TSickFeeBill getBillByID(Long id);

	/**
	 * 会员
	 * 
	 * @param Bill
	 * @return
	 */
	public Boolean addBill(TSickFeeBill Bill);

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
	public Boolean updateBill(TSickFeeBill Bill);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteBill(Long id);
}
