package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.service.inf.DataServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class RegisterTypeServiceDaoImpl implements DataServiceDao {
	
	private DataDao dataDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return dataDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param data
	 * @return
	 */
	public Boolean addData(TData data){		
		return dataDao.addData(data);
	}
	
	/**
	 * 删除数据字典
	 * @param data
	 * @return
	 */
	public Boolean deleteData(TData data){		
		return dataDao.deleteData(data);
	}
	
	/**
	 * 更新数据字典
	 * @param data
	 * @return
	 */
	public Boolean updateData(TData data){
		return dataDao.updateData(data);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchData(TData data){
		
		return dataDao.searchData(data);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TData seachData(Long id){
		return dataDao.seachData(id);
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid){
		return null;
	}
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentData(PageUtil pageUtil){
		
		return dataDao.searchParentData(pageUtil);
	}

	public DataDao getDataDao() {
		return dataDao;
	}

	public void setDataDao(DataDao dataDao) {
		this.dataDao = dataDao;
	}
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageData(Long pid){
		return this.dataDao.searchPageData(pid);
	}

}
