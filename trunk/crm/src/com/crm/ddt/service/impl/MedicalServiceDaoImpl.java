package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.MedicalDao;
import com.crm.ddt.po.TMedical;
import com.crm.ddt.service.intf.MedicalServiceDao;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class MedicalServiceDaoImpl implements MedicalServiceDao {

	private MedicalDao MedicalDao;

	/**
	 * 添加
	 * 
	 * @param Medical
	 * @return
	 */
	public Boolean addMedical(TMedical Medical) {
		return MedicalDao.addMedical(Medical);
	}

	/**
	 * 删除
	 * 
	 * @param Medical
	 * @return
	 */
	public Boolean deleteMedical(TMedical Medical) {
		return MedicalDao.deleteMedical(Medical);
	}

	/**
	 * 更新
	 * 
	 * @param Medical
	 * @return
	 */
	public Boolean updateMedical(TMedical Medical) {
		return MedicalDao.updateMedical(Medical);
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(TMedical Medical) {
		return MedicalDao.getCount(Medical);
	}

	/**
	 * 取得列表
	 * 
	 * @return
	 */
	public List getMedicalList(PageUtil pageUtil, TMedical Medical) {

		return MedicalDao.getMedicalList(pageUtil, Medical);
	}

	/**
	 * 查询对象
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
