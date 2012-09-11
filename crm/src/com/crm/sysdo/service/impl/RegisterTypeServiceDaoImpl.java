package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.RegisterTypeDao;
import com.crm.sysdo.po.TRegisterType;
import com.crm.sysdo.service.inf.RegisterTypeServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class RegisterTypeServiceDaoImpl implements RegisterTypeServiceDao {
	
	private RegisterTypeDao RegisterTypeDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return RegisterTypeDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param RegisterType
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType){		
		return RegisterTypeDao.addRegisterType(RegisterType);
	}
	
	/**
	 * 删除数据字典
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(TRegisterType RegisterType){		
		return RegisterTypeDao.deleteRegisterType(RegisterType);
	}
	
	/**
	 * 更新数据字典
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType){
		return RegisterTypeDao.updateRegisterType(RegisterType);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchRegisterType(TRegisterType RegisterType){
		
		return RegisterTypeDao.searchRegisterType(RegisterType);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TRegisterType seachRegisterType(Long id){
		return RegisterTypeDao.seachRegisterType(id);
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonRegisterType(Long pid){
		return null;
	}
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentRegisterType(PageUtil pageUtil){
		
		return RegisterTypeDao.searchParentRegisterType(pageUtil);
	}

	public RegisterTypeDao getRegisterTypeDao() {
		return RegisterTypeDao;
	}

	public void setRegisterTypeDao(RegisterTypeDao RegisterTypeDao) {
		this.RegisterTypeDao = RegisterTypeDao;
	}
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageRegisterType(Long pid){
		return this.RegisterTypeDao.searchPageRegisterType(pid);
	}

}
