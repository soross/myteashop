package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TManufacturer;
import com.crm.sysdo.po.TToolinfo;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ManufacturerDao {
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
