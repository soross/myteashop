package com.crm.sysdo.service.inf;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TOrderManufacturer;

public interface OrderManufacturerServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addOrderManufacturer(TOrderManufacturer tOrderManufacturer);
	
	/**
	 * ɾ��
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteOrderManufacturer(TOrderManufacturer tOrderManufacturer);
	
	/**
	 * ����
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateOrderManufacturer(TOrderManufacturer tOrderManufacturer);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TOrderManufacturer tOrderManufacturer,Map map);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getOrderManufacturerList(PageUtil pageUtil ,TOrderManufacturer tOrderManufacturer,Map map);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TOrderManufacturer getOrderManufacturerById(Long id);
	

}
