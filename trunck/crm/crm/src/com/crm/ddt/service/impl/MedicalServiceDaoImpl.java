package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.MedicalDao;
import com.crm.ddt.po.TMedical;
import com.crm.ddt.service.intf.MedicalServiceDao;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class MedicalServiceDaoImpl implements MedicalServiceDao {

	private MedicalDao MedicalDao;

	/**
	 * ���
	 * 
	 * @param Medical
	 * @return
	 */
	public Boolean addMedical(TMedical Medical) {
		return MedicalDao.addMedical(Medical);
	}

	/**
	 * ɾ��
	 * 
	 * @param Medical
	 * @return
	 */
	public Boolean deleteMedical(TMedical Medical) {
		return MedicalDao.deleteMedical(Medical);
	}

	/**
	 * ����
	 * 
	 * @param Medical
	 * @return
	 */
	public Boolean updateMedical(TMedical Medical) {
		return MedicalDao.updateMedical(Medical);
	}

	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCount(TMedical Medical) {
		return MedicalDao.getCount(Medical);
	}

	/**
	 * ȡ���б�
	 * 
	 * @return
	 */
	public List getMedicalList(PageUtil pageUtil, TMedical Medical) {

		return MedicalDao.getMedicalList(pageUtil, Medical);
	}

	/**
	 * ��ѯ����
	 * 
	 * @param id
	 * @return
	 */
	public TMedical getMedicalById(Long id) {
		return MedicalDao.getMedicalById(id);
	}

	public MedicalDao getMedicalDao() {
		return MedicalDao;
	}

	public void setMedicalDao(MedicalDao MedicalDao) {
		this.MedicalDao = MedicalDao;
	}

}
