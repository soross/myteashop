package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.CollectDao;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.service.inf.CollectServiceDao;
import com.crm.sysdo.service.inf.DataServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class CollectServiceDaoImpl implements CollectServiceDao {
	
	private CollectDao collectDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return collectDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param collect
	 * @return
	 */
	public Boolean addCollect(TCollect collect){		
		return collectDao.addCollect(collect);
	}
	
	/**
	 * 删除数据字典
	 * @param collect
	 * @return
	 */
	public Boolean deleteCollect(TCollect collect){		
		return collectDao.deleteCollect(collect);
	}
	
	/**
	 * 更新数据字典
	 * @param collect
	 * @return
	 */
	public Boolean updateCollect(TCollect collect){
		return collectDao.updateCollect(collect);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchCollect(TCollect collect){
		
		return collectDao.searchCollect(collect);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TCollect seachCollect(Long id){
		return collectDao.seachCollect(id);
	}
	

	public CollectDao getCollectDao() {
		return collectDao;
	}

	public void setCollectDao(CollectDao collectDao) {
		this.collectDao = collectDao;
	}

}
