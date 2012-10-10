package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCardFee;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public interface CardFeeDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCardFeeCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCardFeeCount(TCardFee CardFee);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getCardFeeList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getCardFeeList(TCardFee CardFee, PageUtil pageUtil);

	public List getCardFeeList();

	public TCardFee getCardFeeByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param CardFee
	 * @return
	 */
	public Boolean addCardFee(TCardFee CardFee);

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateCardFee(TCardFee CardFee);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteCardFee(Long id);
}
