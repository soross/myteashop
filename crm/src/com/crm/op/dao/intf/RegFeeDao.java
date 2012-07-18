package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TRegisterFee;
import com.crm.page.PageUtil;

public interface RegFeeDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRegFeeCount();
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRegFeeCount(TRegisterFee of);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRegFeeList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRegFeeList(TRegisterFee of, PageUtil pageUtil);

	public TRegisterFee getRegFeeByID(Long id);

	/**
	 * 会员
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addRegFee(TRegisterFee of);

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * 修改
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateRegFee(TRegisterFee of);

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteRegFee(Long id);
}
