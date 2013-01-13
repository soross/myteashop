package com.crm.query.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.dao.intf.IcdIllnessDao;
import com.crm.query.po.TIcdIllness;
import com.crm.query.service.intf.IcdIllnessServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdIllnessServiceDaoImpl implements IcdIllnessServiceDao {
	
	private IcdIllnessDao IcdIllnessDao;
	/**
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addIcdIllness(TIcdIllness IcdIllness){		
		return IcdIllnessDao.addIcdIllness(IcdIllness);
	}
	
	/**
	 * 删除
	 * @param IcdIllness
	 * @return
	 */
	public Boolean deleteIcdIllness(TIcdIllness IcdIllness){		
		return IcdIllnessDao.deleteIcdIllness(IcdIllness);
	}
	
	/**
	 * 更新
	 * @param IcdIllness
	 * @return
	 */
	public Boolean updateIcdIllness(TIcdIllness IcdIllness){
		return IcdIllnessDao.updateIcdIllness(IcdIllness);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcdIllness IcdIllness){
		return IcdIllnessDao.getCount(IcdIllness);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getIcdIllnessList(PageUtil pageUtil,TIcdIllness IcdIllness){
		
		return IcdIllnessDao.getIcdIllnessList(pageUtil,IcdIllness);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TIcdIllness getIcdIllnessById(Long id){
		return IcdIllnessDao.getIcdIllnessById(id);
	}
	

	public IcdIllnessDao getIcdIllnessDao() {
		return IcdIllnessDao;
	}

	public void setIcdIllnessDao(IcdIllnessDao IcdIllnessDao) {
		this.IcdIllnessDao = IcdIllnessDao;
	}
	
	
}
