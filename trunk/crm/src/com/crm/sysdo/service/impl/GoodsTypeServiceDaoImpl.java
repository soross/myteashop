package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.GoodsTypeDao;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.service.inf.GoodsTypeServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class GoodsTypeServiceDaoImpl implements GoodsTypeServiceDao {
	
	private GoodsTypeDao GoodsTypeDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return GoodsTypeDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param GoodsType
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.addGoodsType(GoodsType);
	}
	
	/**
	 * 删除数据字典
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.deleteGoodsType(GoodsType);
	}
	
	/**
	 * 更新数据字典
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType){
		return GoodsTypeDao.updateGoodsType(GoodsType);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchGoodsType(TGoodsType GoodsType){
		
		return GoodsTypeDao.searchGoodsType(GoodsType);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TGoodsType seachGoodsType(Long id){
		return GoodsTypeDao.seachGoodsType(id);
	}
	
	/**
	 * 根据父类ID查询小类
	 * @param pid
	 * @return
	 */
	public List searchSonGoodsType(Long pid){
		return null;
	}
	
	/**
	 * 根据小类查询父类对象
	 * 
	 * @return
	 */
	public List searchParentGoodsType(PageUtil pageUtil){
		
		return GoodsTypeDao.searchParentGoodsType(pageUtil);
	}

	public GoodsTypeDao getGoodsTypeDao() {
		return GoodsTypeDao;
	}

	public void setGoodsTypeDao(GoodsTypeDao GoodsTypeDao) {
		this.GoodsTypeDao = GoodsTypeDao;
	}
	
	/**
	 * 根据Pid分页
	 * @param pid
	 * @return
	 */
	public List searchPageGoodsType(Long pid){
		return this.GoodsTypeDao.searchPageGoodsType(pid);
	}

}
