package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCardFee;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public interface CardFeeDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCardFeeCount();
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCardFeeCount(TCardFee CardFee);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCardFeeList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCardFeeList(TCardFee CardFee, PageUtil pageUtil);

	public List getCardFeeList();

	public TCardFee getCardFeeByID(Long id);

	/**
	 * 会员
	 * 
	 * @param CardFee
	 * @return
	 */
	public Boolean addCardFee(TCardFee CardFee);

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
	public Boolean updateCardFee(TCardFee CardFee);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteCardFee(Long id);
}
