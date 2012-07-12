package com.crm.op.dao.intf;

import java.util.List;

import com.crm.op.po.TCustomer;
import com.crm.op.po.TOrder;
import com.crm.page.PageUtil;

public interface OrderDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getOrderCount();
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getOrderCount(TOrder order);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getOrderList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getOrderList(TOrder order, PageUtil pageUtil);

	public List getOrderList();

	public TOrder getOrderByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addOrder(TOrder order);

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
	public Boolean updateOrder(TOrder cust);

	/**
	 * ɾ��
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteOrder(Long id);
}
