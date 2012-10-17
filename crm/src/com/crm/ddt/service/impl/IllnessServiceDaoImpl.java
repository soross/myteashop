package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.HisDao;
import com.crm.ddt.dao.intf.IllnessDao;
import com.crm.ddt.dao.intf.ProveDao;
import com.crm.ddt.po.THis;
import com.crm.ddt.po.TIllness;
import com.crm.ddt.po.TProve;
import com.crm.ddt.service.intf.HisServiceDao;
import com.crm.ddt.service.intf.IllnessServiceDao;
import com.crm.ddt.service.intf.ProveServiceDao;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class IllnessServiceDaoImpl implements IllnessServiceDao {

	private IllnessDao IllnessDao;

	/**
	 * ���
	 * 
	 * @param Illness
	 * @return
	 */
	public Boolean addIllness(TIllness Illness) {
		return IllnessDao.addIllness(Illness);
	}

	/**
	 * ɾ��
	 * 
	 * @param Illness
	 * @return
	 */
	public Boolean deleteIllness(TIllness Illness) {
		return IllnessDao.deleteIllness(Illness);
	}

	/**
	 * ����
	 * 
	 * @param Illness
	 * @return
	 */
	public Boolean updateIllness(TIllness Illness) {
		return IllnessDao.updateIllness(Illness);
	}

	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getCount(TIllness Illness) {
		return IllnessDao.getCount(Illness);
	}

	/**
	 * ȡ���б�
	 * 
	 * @return
	 */
	public List getIllnessList(PageUtil pageUtil, TIllness Illness) {

		return IllnessDao.getIllnessList(pageUtil, Illness);
	}

	/**
	 * ��ѯ����
	 * 
	 * @param id
	 * @return
	 */
	public TIllness getIllnessById(Long id) {
		return IllnessDao.getIllnessById(id);
	}

	public IllnessDao getIllnessDao() {
		return IllnessDao;
	}

	public void setIllnessDao(IllnessDao IllnessDao) {
		this.IllnessDao = IllnessDao;
	}

}
