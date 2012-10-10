package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.CardFeeDao;
import com.crm.op.dao.intf.CustDao;
import com.crm.op.po.TCardFee;
import com.crm.op.service.intf.CardFeeServiceDao;
import com.crm.page.PageUtil;

public class CardFeeServiceDaoImpl implements CardFeeServiceDao {
	CardFeeDao CardFeeDao;

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCardFeeCount() {
		return CardFeeDao.getCardFeeCount();
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCardFeeCount(TCardFee CardFee) {
		return CardFeeDao.getCardFeeCount(CardFee);
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCardFeeList(PageUtil pageUtil) {
		return CardFeeDao.getCardFeeList(pageUtil);
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getCardFeeList(TCardFee CardFee, PageUtil pageUtil) {
		return CardFeeDao.getCardFeeList(CardFee, pageUtil);
	}

	public List getCardFeeList() {
		return CardFeeDao.getCardFeeList();
	}

	public TCardFee getCardFeeByID(Long id) {
		return CardFeeDao.getCardFeeByID(id);
	}

	/**
	 * 会员
	 * 
	 * @param CardFee
	 * @return
	 */
	public Boolean addCardFee(TCardFee CardFee) {
		return CardFeeDao.addCardFee(CardFee);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue() {
		return CardFeeDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateCardFee(TCardFee CardFee) {
		return CardFeeDao.updateCardFee(CardFee);
	}

	/**
	 * 删除会员
	 * 
	 * @param ids
	 * @return
	 */
	public Boolean deleteCardFee(Long id) {
		return CardFeeDao.deleteCardFee(id);
	}

	public CardFeeDao getCardFeeDao() {
		return CardFeeDao;
	}

	public void setCardFeeDao(CardFeeDao CardFeeDao) {
		this.CardFeeDao = CardFeeDao;
	}
}
