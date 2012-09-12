package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.GoodsTypeDao;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TGoodsType;
import com.crm.sysdo.service.inf.GoodsTypeServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class GoodsTypeServiceDaoImpl implements GoodsTypeServiceDao {
	
	private GoodsTypeDao GoodsTypeDao;
	
	/**
	 * ���
	 * @param Goods
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.addGoodsType(GoodsType);
	}
	
	/**
	 * ɾ��
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.deleteGoodsType(GoodsType);
	}
	
	/**
	 * ����
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType){
		return GoodsTypeDao.updateGoodsType(GoodsType);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TGoodsType GoodsType){
		return GoodsTypeDao.getCount(GoodsType);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getGoodsTypeList(PageUtil pageUtil,TGoodsType GoodsType){
		
		return GoodsTypeDao.getGoodsTypeList(pageUtil,GoodsType);
	}
	
	/**
	 * ��ѯ����
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
