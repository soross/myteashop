package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.CollectDao;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.po.TCollect;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TSickbed;
import com.crm.sysdo.service.inf.CollectServiceDao;
import com.crm.sysdo.service.inf.DataServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class CollectServiceDaoImpl implements CollectServiceDao {
	
	private CollectDao collectDao;
	

	/**
	 * ���
	 * @param collect
	 * @return
	 */
	public Boolean addCollect(TCollect collect){		
		return collectDao.addCollect(collect);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param collect
	 * @return
	 */
	public Boolean deleteCollect(TCollect collect){		
		return collectDao.deleteCollect(collect);
	}
	
	/**
	 * ���������ֵ�
	 * @param collect
	 * @return
	 */
	public Boolean updateCollect(TCollect collect){
		return collectDao.updateCollect(collect);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TCollect collect){
		return collectDao.getCount(collect);
	} 
	
	public List getCollectList(final PageUtil pageUtil,final TCollect collect){
		return this.collectDao.getCollectList(pageUtil,collect);
	}
	
	/**
	 * ��ѯ����
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

	public List searchCollect(TCollect Collect) {
		// TODO Auto-generated method stub
		return null;
	}

}
