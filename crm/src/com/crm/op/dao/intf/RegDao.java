package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCustomer;
import com.crm.op.po.TRegister;
import com.crm.page.PageUtil;

public interface RegDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRegCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRegCount(TRegister reg);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRegList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRegList(TRegister reg, PageUtil pageUtil);

	public List getRegList();

	public TRegister getRegByID(Long id);

	/**
	 * ����
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addReg(TRegister reg);

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
	public Boolean updateReg(TRegister reg);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteReg(Long id);
}
