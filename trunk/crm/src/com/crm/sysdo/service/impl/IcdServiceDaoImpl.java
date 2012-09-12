package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.IcdDao;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.po.TIcd;
import com.crm.sysdo.service.inf.IcdServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class IcdServiceDaoImpl implements IcdServiceDao {
	
	private IcdDao IcdDao;
	/**
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addIcd(TIcd Icd){		
		return IcdDao.addIcd(Icd);
	}
	
	/**
	 * 删除
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd){		
		return IcdDao.deleteIcd(Icd);
	}
	
	/**
	 * 更新
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd){
		return IcdDao.updateIcd(Icd);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TIcd Icd){
		return IcdDao.getCount(Icd);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getIcdList(PageUtil pageUtil,TIcd Icd){
		
		return IcdDao.getIcdList(pageUtil,Icd);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TIcd getIcdById(Long id){
		return IcdDao.getIcdById(id);
	}
	

	public IcdDao getIcdDao() {
		return IcdDao;
	}

	public void setIcdDao(IcdDao IcdDao) {
		this.IcdDao = IcdDao;
	}
	
	
}
