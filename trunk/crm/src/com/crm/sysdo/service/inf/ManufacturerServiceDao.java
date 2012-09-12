package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TManufacturer;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ManufacturerServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ɾ��
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ����
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TManufacturer Manufacturer);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getManufacturerList(PageUtil pageUtil ,TManufacturer Manufacturer);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TManufacturer getManufacturerById(Long id);
	
}
