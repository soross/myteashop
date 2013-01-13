package com.crm.stafffee.service.intf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.po.TStaffFee;

public interface StaffFeeServiceDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount();
	
	/**
	 * 取得总记录数-条件
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount(TStaffFee StaffFee);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getStaffFeeList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getStaffFeeList(TStaffFee StaffFee, PageUtil pageUtil);

	public List getStaffFeeList();

	public TStaffFee getStaffFeeByID(Long id);

	/**
	 * 会员
	 * 
	 * @param StaffFee
	 * @return
	 */
	public Boolean addStaffFee(TStaffFee StaffFee);

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
	public Boolean updateStaffFee(TStaffFee StaffFee);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteStaffFee(Long id);
}
