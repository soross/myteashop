package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCustomer;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TDept;

public interface SickDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCustCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCustCount(TCustomer cust);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getCustList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getCustList(TCustomer cust, PageUtil pageUtil);

	public List getCustList();

	public TCustomer getCustByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addCust(TCustomer cust);

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
	public Boolean updateCust(TCustomer cust);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteCust(Long id);
}
