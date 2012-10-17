package com.crm.sysdo.service.impl;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.OrderManufacturerDao;
import com.crm.sysdo.po.TOrderManufacturer;
import com.crm.sysdo.service.inf.OrderManufacturerServiceDao;

public class OrderManufacturerServiceDaoImpl implements OrderManufacturerServiceDao {
	
	
	private OrderManufacturerDao orderManuFacturerProxy;

	public Boolean addOrderManufacturer(TOrderManufacturer tOrderManufacturer) {
		// TODO Auto-generated method stub
		return orderManuFacturerProxy.addOrderManufacturer(tOrderManufacturer);
	}

	public Boolean deleteOrderManufacturer(TOrderManufacturer tOrderManufacturer) {
		// TODO Auto-generated method stub
		return orderManuFacturerProxy.deleteOrderManufacturer(tOrderManufacturer);
	}

	public Integer getCount(TOrderManufacturer tOrderManufacturer, Map map) {
		// TODO Auto-generated method stub
		return orderManuFacturerProxy.getCount(tOrderManufacturer, map);
	}

	public TOrderManufacturer getOrderManufacturerById(Long id) {
		// TODO Auto-generated method stub
		return orderManuFacturerProxy.getOrderManufacturerById(id);
	}

	public List getOrderManufacturerList(PageUtil pageUtil,
			TOrderManufacturer tOrderManufacturer, Map map) {
		// TODO Auto-generated method stub
		return orderManuFacturerProxy.getOrderManufacturerList(pageUtil, tOrderManufacturer, map);
	}

	public Boolean updateOrderManufacturer(TOrderManufacturer tOrderManufacturer) {
		// TODO Auto-generated method stub
		return orderManuFacturerProxy.updateOrderManufacturer(tOrderManufacturer);
	}

	public OrderManufacturerDao getOrderManuFacturerProxy() {
		return orderManuFacturerProxy;
	}

	public void setOrderManuFacturerProxy(
			OrderManufacturerDao orderManuFacturerProxy) {
		this.orderManuFacturerProxy = orderManuFacturerProxy;
	}


}
