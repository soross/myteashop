package com.crm.query.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.dao.intf.IcdIllnessDescDao;
import com.crm.query.po.TIcdIllnessDesc;
import com.crm.query.service.intf.IcdIllnessDescServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdIllnessDescServiceDaoImpl implements IcdIllnessDescServiceDao {
	
	private IcdIllnessDescDao IcdIllnessDescDao;
	/**
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){		
		return IcdIllnessDescDao.addIcdIllnessDesc(IcdIllnessDesc);
	}
	
	/**
	 * 删除
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean deleteIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){		
		return IcdIllnessDescDao.deleteIcdIllnessDesc(IcdIllnessDesc);
	}
	
	/**
	 * 更新
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean updateIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc){
		return IcdIllnessDescDao.updateIcdIllnessDesc(IcdIllnessDesc);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcdIllnessDesc IcdIllnessDesc){
		return IcdIllnessDescDao.getCount(IcdIllnessDesc);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getIcdIllnessDescList(PageUtil pageUtil,TIcdIllnessDesc IcdIllnessDesc){
		
		return IcdIllnessDescDao.getIcdIllnessDescList(pageUtil,IcdIllnessDesc);
	}
	
	/**
	 * 查询对象
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
