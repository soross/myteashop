package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.dao.inf.GoodsDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.service.inf.DataServiceDao;
import com.crm.sysdo.service.inf.GoodsServiceDao;

/**
 * 数字字典操作Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class GoodsServiceDaoImpl implements GoodsServiceDao {
	
	private GoodsDao GoodsDao;
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(){
		return GoodsDao.getCount();
	}

	/**
	 * 添加数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean addGoods(TGoods Goods){		
		return GoodsDao.addGoods(Goods);
	}
	
	/**
	 * 删除数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(TGoods Goods){		
		return GoodsDao.deleteGoods(Goods);
	}
	
	/**
	 * 更新数据字典
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods){
		return GoodsDao.updateGoods(Goods);
	}
	
	/**
	 * 取得数据字典列表
	 * @return
	 */
	public List searchGoods(TGoods Goods){
		
		return GoodsDao.searchGoods(Goods);
	}
	
	/**
	 * 查询数据字典对象
	 * @param id
	 * @return
	 */
	public TGoods seachGoods(Long id){
		return GoodsDao.seachGoods(id);
	}
	

	public GoodsDao getGoodsDao() {
		return GoodsDao;
	}

	public void setGoodsDao(GoodsDao GoodsDao) {
		this.GoodsDao = GoodsDao;
	}
	
	

}
