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
	 * 添加
	 * @param Goods
	 * @return
	 */
	public Boolean addGoods(TGoods Goods){		
		return GoodsDao.addGoods(Goods);
	}
	
	/**
	 * 删除
	 * @param Goods
	 * @return
	 */
	public Boolean deleteGoods(TGoods Goods){		
		return GoodsDao.deleteGoods(Goods);
	}
	
	/**
	 * 更新
	 * @param Goods
	 * @return
	 */
	public Boolean updateGoods(TGoods Goods){
		return GoodsDao.updateGoods(Goods);
	}
	
	/**
	 * 取得总记录数
	 * @return
	 */
	public Integer getCount(TGoods Goods){
		return GoodsDao.getCount(Goods);
	}
	
	/**
	 * 取得列表
	 * @return
	 */
	public List getGoodsList(PageUtil pageUtil,TGoods Goods){
		
		return GoodsDao.getGoodsList(pageUtil,Goods);
	}
	
	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	public TGoods getGoodsById(Long id){
		return GoodsDao.getGoodsById(id);
	}
	

	public GoodsDao getGoodsDao() {
		return GoodsDao;
	}

	public void setGoodsDao(GoodsDao GoodsDao) {
		this.GoodsDao = GoodsDao;
	}
	
	

}
