package com.crm.sysdo.service.impl;

import java.util.List;
import java.util.Map;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.ManufacturerDao;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TManufacturer;
import com.crm.sysdo.service.inf.ManufacturerServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class ManufacturerServiceDaoImpl implements ManufacturerServiceDao {

	private ManufacturerDao manuFacturerProxy;

	/**
	 * ���
	 * @param Goods
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturer){		
		return manuFacturerProxy.addManufacturer(Manufacturer);
	}
	
	/**
	 * ɾ��
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturer){		
		return manuFacturerProxy.deleteManufacturer(Manufacturer);
	}
	
	/**
	 * ����
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer){
		return manuFacturerProxy.updateManufacturer(Manufacturer);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TManufacturer Manufacturer, Map map){
		return manuFacturerProxy.getCount(Manufacturer,map);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getManufacturerList(PageUtil pageUtil,TManufacturer Manufacturer,Map map){
		
		return manuFacturerProxy.getManufacturerList(pageUtil,Manufacturer,map);
	}
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TManufacturer getManufacturerById(Long id){
		return manuFacturerProxy.getManufacturerById(id);
	}

	public ManufacturerDao getManuFacturerProxy() {
		return manuFacturerProxy;
	}

	public void setManuFacturerProxy(ManufacturerDao manuFacturerProxy) {
		this.manuFacturerProxy = manuFacturerProxy;
	}




}
