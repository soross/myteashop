package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.DeformityDao;
import com.crm.ddt.po.TDeformity;
import com.crm.ddt.service.intf.DeformityServiceDao;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class DeformityServiceDaoImpl implements DeformityServiceDao {

	private DeformityDao DeformityDao;

	/**
	 * ���
	 * 
	 * @param Deformity
	 * @return
	 */
	public Boolean addDeformity(TDeformity Deformity) {
		return DeformityDao.addDeformity(Deformity);
	}

	/**
	 * ɾ��
	 * 
	 * @param Deformity
	 * @return
	 */
	public Boolean deleteDeformity(TDeformity Deformity) {
		return DeformityDao.deleteDeformity(Deformity);
	}

	/**
	 * ����
	 * 
	 * @param Deformity
	 * @return
	 */
	public Boolean updateDeformity(TDeformity Deformity) {
		return DeformityDao.updateDeformity(Deformity);
	}

	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCount(TDeformity Deformity) {
		return DeformityDao.getCount(Deformity);
	}

	/**
	 * ȡ���б�
	 * 
	 * @return
	 */
	public List getDeformityList(PageUtil pageUtil, TDeformity Deformity) {

		return DeformityDao.getDeformityList(pageUtil, Deformity);
	}

	/**
	 * ��ѯ����
	 * 
	 * @param id
	 * @return
	 */
	public TDeformity getDeformityById(Long id) {
		return DeformityDao.getDeformityById(id);
	}

	public DeformityDao getDeformityDao() {
		return DeformityDao;
	}

	public void setDeformityDao(DeformityDao DeformityDao) {
		this.DeformityDao = DeformityDao;
	}

}
