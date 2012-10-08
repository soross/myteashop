package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCustomer;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public interface SickDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCustCount();
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCustCount(TCustomer cust);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCustList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCustList(TCustomer cust, PageUtil pageUtil);

	public List getCustList();

	public TCustomer getCustByID(Long id);

	/**
	 * 会员
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addCust(TCustomer cust);

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
	public Boolean updateCust(TCustomer cust);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteCust(Long id);
}
