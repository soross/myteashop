package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.GoodsTypeDao;
import com.crm.sysdo.po.TGoods;
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
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.addGoodsType(GoodsType);
	}
	
	/**
	 * 删除
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.deleteGoodsType(GoodsType);
	}
	
	/**
	 * 更新
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType){
		return GoodsTypeDao.updateGoodsType(GoodsType);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TGoodsType GoodsType){
		return GoodsTypeDao.getCount(GoodsType);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getGoodsTypeList(PageUtil pageUtil,TGoodsType GoodsType){
		
		return GoodsTypeDao.getGoodsTypeList(pageUtil,GoodsType);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TGoodsType getGoodsTypeById(Long id){
		return GoodsTypeDao.getGoodsTypeById(id);
	}

	
	
	public GoodsTypeDao getGoodsTypeDao() {
		return GoodsTypeDao;
	}

	public void setGoodsTypeDao(GoodsTypeDao GoodsTypeDao) {
		this.GoodsTypeDao = GoodsTypeDao;
	}
	
}
