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
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 * 
 */
public class IllnessServiceDaoImpl implements IllnessServiceDao {

	private IllnessDao IllnessDao;

	/**
	 * 添加
	 * 
	 * @param Illness
	 * @return
	 */
	public Boolean addIllness(TIllness Illness) {
		return IllnessDao.addIllness(Illness);
	}

	/**
	 * 删除
	 * 
	 * @param Illness
	 * @return
	 */
	public Boolean deleteIllness(TIllness Illness) {
		return IllnessDao.deleteIllness(Illness);
	}

	/**
	 * 更新
	 * 
	 * @param Illness
	 * @return
	 */
	public Boolean updateIllness(TIllness Illness) {
		return IllnessDao.updateIllness(Illness);
	}

	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getCount(TIllness Illness) {
		return IllnessDao.getCount(Illness);
	}

	/**
	 * 取得列表
	 * 
	 * @return
	 */
	public List getIllnessList(PageUtil pageUtil, TIllness Illness) {

		return IllnessDao.getIllnessList(pageUtil, Illness);
	}

	/**
	 * 查询对象
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
