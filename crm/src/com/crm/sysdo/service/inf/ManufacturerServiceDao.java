package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
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
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount();
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ɾ�������ֵ�
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ���������ֵ�
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchManufacturer(TManufacturer Manufacturer);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TManufacturer seachManufacturer(Long id);
	
}
