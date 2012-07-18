package com.crm.op.service.intf;

import java.util.List;

import com.crm.op.po.TOrder;
import com.crm.page.PageUtil;

public interface OrderServiceDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getOrderCount();
	
	/**
	 * ȡ���ܼ�¼��-����
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
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateOrder(TOrder order);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteOrder(Long id);
}
