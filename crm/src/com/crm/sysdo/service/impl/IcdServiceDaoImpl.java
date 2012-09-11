package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.IcdDao;
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
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return IcdDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param Icd
	 * @return
	 */
	public Boolean addIcd(TIcd Icd){		
		return IcdDao.addIcd(Icd);
	}
	
	/**
	 * 删除数据字典
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd){		
		return IcdDao.deleteIcd(Icd);
	}
	
	/**
	 * 更新数据字典
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd){
		return IcdDao.updateIcd(Icd);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchIcd(TIcd Icd){
		
		return IcdDao.searchIcd(Icd);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TIcd seachIcd(Long id){
		return IcdDao.seachIcd(id);
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonIcd(Long pid){
		return null;
	}
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentIcd(PageUtil pageUtil){
		
		return IcdDao.searchParentIcd(pageUtil);
	}

	public IcdDao getIcdDao() {
		return IcdDao;
	}

	public void setIcdDao(IcdDao IcdDao) {
		this.IcdDao = IcdDao;
	}
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageIcd(Long pid){
		return this.IcdDao.searchPageIcd(pid);
	}

}
