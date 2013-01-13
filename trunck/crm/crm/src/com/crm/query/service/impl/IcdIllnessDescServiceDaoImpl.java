package com.crm.query.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.dao.intf.IcdIllnessDescDao;
import com.crm.query.po.TIcdIllnessDesc;
import com.crm.query.service.intf.IcdIllnessDescServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdIllnessDescServiceDaoImpl implements IcdIllnessDescServiceDao {
	
	private IcdIllnessDescDao IcdIllnessDescDao;
	/**
	 * ���
	 * @param Goods
	 * @return
	 */
	public Boolean addIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){		
		return IcdIllnessDescDao.addIcdIllnessDesc(IcdIllnessDesc);
	}
	
	/**
	 * ɾ��
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean deleteIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){		
		return IcdIllnessDescDao.deleteIcdIllnessDesc(IcdIllnessDesc);
	}
	
	/**
	 * ����
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean updateIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){
		return IcdIllnessDescDao.updateIcdIllnessDesc(IcdIllnessDesc);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIcdIllnessDesc IcdIllnessDesc){
		return IcdIllnessDescDao.getCount(IcdIllnessDesc);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getIcdIllnessDescList(PageUtil pageUtil,TIcdIllnessDesc IcdIllnessDesc){
		
		return IcdIllnessDescDao.getIcdIllnessDescList(pageUtil,IcdIllnessDesc);
	}
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIcdIllnessDesc getIcdIllnessDescById(Long id){
		return IcdIllnessDescDao.getIcdIllnessDescById(id);
	}
	

	public IcdIllnessDescDao getIcdIllnessDescDao() {
		return IcdIllnessDescDao;
	}

	public void setIcdIllnessDescDao(IcdIllnessDescDao IcdIllnessDescDao) {
		this.IcdIllnessDescDao = IcdIllnessDescDao;
	}
	
	
}
