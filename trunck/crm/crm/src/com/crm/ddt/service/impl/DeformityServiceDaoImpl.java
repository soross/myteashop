package com.crm.ddt.service.impl;

import java.util.List;

import com.crm.ddt.dao.intf.DeformityDao;
import com.crm.ddt.po.TDeformity;
import com.crm.ddt.service.intf.DeformityServiceDao;
import com.crm.page.PageUtil;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class DeformityServiceDaoImpl implements DeformityServiceDao {

	private DeformityDao DeformityDao;

	/**
	 * 添加
	 * 
	 * @param Deformity
	 * @return
	 */
	public Boolean addDeformity(TDeformity Deformity) {
		return DeformityDao.addDeformity(Deformity);
	}

	/**
	 * 删除
	 * 
	 * @param Deformity
	 * @return
	 */
	public Boolean deleteDeformity(TDeformity Deformity) {
		return DeformityDao.deleteDeformity(Deformity);
	}

	/**
	 * 更新
	 * 
	 * @param Deformity
	 * @return
	 */
	public Boolean updateDeformity(TDeformity Deformity) {
		return DeformityDao.updateDeformity(Deformity);
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(TDeformity Deformity) {
		return DeformityDao.getCount(Deformity);
	}

	/**
	 * 取得列表
	 * 
	 * @return
	 */
	public List getDeformityList(PageUtil pageUtil, TDeformity Deformity) {

		return DeformityDao.getDeformityList(pageUtil, Deformity);
	}

	/**
	 * 查询对象
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
