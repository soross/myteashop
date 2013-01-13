package com.crm.op.service.intf;

import java.util.List;

import com.crm.op.po.TOrder;
import com.crm.page.PageUtil;

public interface OrderServiceDao {
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getOrderCount();
	
	/**
	 * 取得总记录数-条件
	 * 
	 * @return
	 */
	public Integer getOrderCount(TOrder order);

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getOrderList(PageUtil pageUtil);
	
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getOrderList(TOrder order, PageUtil pageUtil);


	public TOrder getOrderByID(Long id);

	/**
	 * 会员
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addOrder(TOrder order);

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
	public Boolean updateOrder(TOrder order);

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteOrder(Long id);
}
