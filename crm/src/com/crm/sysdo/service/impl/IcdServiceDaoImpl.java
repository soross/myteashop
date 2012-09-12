package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.IcdDao;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TIcd;
import com.crm.sysdo.service.inf.IcdServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdServiceDaoImpl implements IcdServiceDao {
	
	private IcdDao IcdDao;
	/**
	 * ���
	 * @param Goods
	 * @return
	 */
	public Boolean addIcd(TIcd Icd){		
		return IcdDao.addIcd(Icd);
	}
	
	/**
	 * ɾ��
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd){		
		return IcdDao.deleteIcd(Icd);
	}
	
	/**
	 * ����
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd){
		return IcdDao.updateIcd(Icd);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIcd Icd){
		return IcdDao.getCount(Icd);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getIcdList(PageUtil pageUtil,TIcd Icd){
		
		return IcdDao.getIcdList(pageUtil,Icd);
	}
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIcd getIcdById(Long id){
		return IcdDao.getIcdById(id);
	}
	

	public IcdDao getIcdDao() {
		return IcdDao;
	}

	public void setIcdDao(IcdDao IcdDao) {
		this.IcdDao = IcdDao;
	}
	
	
}
