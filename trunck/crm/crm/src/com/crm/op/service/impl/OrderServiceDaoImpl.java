package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.OrderDao;
import com.crm.op.po.TCustomer;
import com.crm.op.po.TOrder;
import com.crm.op.service.intf.OrderServiceDao;
import com.crm.page.PageUtil;

public class OrderServiceDaoImpl implements OrderServiceDao{
	OrderDao orderDao;
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getOrderCount(){
		return orderDao.getOrderCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getOrderCount(TOrder obj){
		return orderDao.getOrderCount(obj);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getOrderList(PageUtil pageUtil){
		return orderDao.getOrderList(pageUtil);
	}
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getOrderList(TOrder obj, PageUtil pageUtil){
		return orderDao.getOrderList(obj,pageUtil);
	}


	public TOrder getOrderByID(Long id){
		return orderDao.getOrderByID(id);
	}

	/**
	 * ��Ա
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addOrder(TOrder obj){
		return orderDao.addOrder(obj);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return orderDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateOrder(TOrder obj){
		return orderDao.updateOrder(obj);
	}

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteOrder(Long id){
		return orderDao.deleteOrder(id);
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
}
