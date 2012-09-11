package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.IcdDao;
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
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		return IcdDao.getCount();
	}

	/**
	 * ��������ֵ�
	 * @param Icd
	 * @return
	 */
	public Boolean addIcd(TIcd Icd){		
		return IcdDao.addIcd(Icd);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd){		
		return IcdDao.deleteIcd(Icd);
	}
	
	/**
	 * ���������ֵ�
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd){
		return IcdDao.updateIcd(Icd);
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchIcd(TIcd Icd){
		
		return IcdDao.searchIcd(Icd);
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TIcd seachIcd(Long id){
		return IcdDao.seachIcd(id);
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonIcd(Long pid){
		return null;
	}
	
	/**
	 * ����С���ѯ�������
	 * 
	 * @return
	 */
	public List searchParentIcd(PageUtil pageUtil){
		
		return IcdDao.searchParentIcd(pageUtil);
	}

	public IcdDao getIcdDao() {
		return IcdDao;
	}

	public void setIcdDao(IcdDao IcdDao) {
		this.IcdDao = IcdDao;
	}
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageIcd(Long pid){
		return this.IcdDao.searchPageIcd(pid);
	}

}
