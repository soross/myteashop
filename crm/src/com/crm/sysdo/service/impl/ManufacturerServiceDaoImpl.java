package com.crm.sysdo.service.impl;

import java.util.List;

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

	private ManufacturerDao ManufacturerDao;

	/**
	 * ���
	 * @param Goods
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturer){		
		return ManufacturerDao.addManufacturer(Manufacturer);
	}
	
	/**
	 * ɾ��
	 * @param Manufacturer
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturer){		
		return ManufacturerDao.deleteManufacturer(Manufacturer);
	}
	
	/**
	 * ����
	 * @param Manufacturer
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturer){
		return ManufacturerDao.updateManufacturer(Manufacturer);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TManufacturer Manufacturer){
		return ManufacturerDao.getCount(Manufacturer);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getManufacturerList(PageUtil pageUtil,TManufacturer Manufacturer){
		
		return ManufacturerDao.getManufacturerList(pageUtil,Manufacturer);
	}
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TManufacturer getManufacturerById(Long id){
		return ManufacturerDao.getManufacturerById(id);
	}

	public ManufacturerDao getManufacturerDao() {
		return ManufacturerDao;
	}

	public void setManufacturerDao(ManufacturerDao ManufacturerDao) {
		this.ManufacturerDao = ManufacturerDao;
	}


}
