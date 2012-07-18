package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TRegisterFee;
import com.crm.page.PageUtil;

public interface RegFeeDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRegFeeCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRegFeeCount(TRegisterFee of);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRegFeeList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRegFeeList(TRegisterFee of, PageUtil pageUtil);

	public TRegisterFee getRegFeeByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addRegFee(TRegisterFee of);

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * �޸�
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateRegFee(TRegisterFee of);

	/**
	 * ɾ��
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteRegFee(Long id);
}
