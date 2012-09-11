package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.GoodsTypeDao;
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
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		return GoodsTypeDao.getCount();
	}

	/**
	 * ��������ֵ�
	 * @param GoodsType
	 * @return
	 */
	public Boolean addGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.addGoodsType(GoodsType);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param GoodsType
	 * @return
	 */
	public Boolean deleteGoodsType(TGoodsType GoodsType){		
		return GoodsTypeDao.deleteGoodsType(GoodsType);
	}
	
	/**
	 * ���������ֵ�
	 * @param GoodsType
	 * @return
	 */
	public Boolean updateGoodsType(TGoodsType GoodsType){
		return GoodsTypeDao.updateGoodsType(GoodsType);
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchGoodsType(TGoodsType GoodsType){
		
		return GoodsTypeDao.searchGoodsType(GoodsType);
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TGoodsType seachGoodsType(Long id){
		return GoodsTypeDao.seachGoodsType(id);
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonGoodsType(Long pid){
		return null;
	}
	
	/**
	 * ����С���ѯ�������
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
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageGoodsType(Long pid){
		return this.GoodsTypeDao.searchPageGoodsType(pid);
	}

}
