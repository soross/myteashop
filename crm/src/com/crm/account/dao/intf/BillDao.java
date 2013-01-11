package com.crm.account.dao.intf;

import java.util.List;

import com.crm.account.po.TSickFeeBill;
import com.crm.page.PageUtil;

public interface BillDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getBillCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getBillCount(TSickFeeBill Bill);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getBillList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getBillList(TSickFeeBill Bill, PageUtil pageUtil);

	public List getBillList();

	public TSickFeeBill getBillByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param Bill
	 * @return
	 */
	public Boolean addBill(TSickFeeBill Bill);

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
	public Boolean updateBill(TSickFeeBill Bill);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteBill(Long id);
}
