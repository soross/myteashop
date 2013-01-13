package com.crm.stafffee.dao.intf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.po.TStaffFee;
import com.crm.stafffee.po.TStaffGetfee;

public interface RatioDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRatioCount();

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRatioCount(TStaffGetfee Ratio);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRatioList(PageUtil pageUtil);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRatioList(TStaffGetfee Ratio, PageUtil pageUtil);

	public List getRatioList();

	public TStaffGetfee getRatioByID(Long id);

	/**
	 * 会员
	 * 
	 * @param Ratio
	 * @return
	 */
	public Boolean addRatio(TStaffGetfee Ratio);

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
	public Boolean updateRatio(TStaffGetfee Ratio);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteRatio(Long id);
}
