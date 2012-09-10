package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.DataDao;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.service.inf.DataServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class RegisterTypeServiceDaoImpl implements DataServiceDao {
	
	private DataDao dataDao;
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		return dataDao.getCount();
	}

	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addData(TData data){		
		return dataDao.addData(data);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean deleteData(TData data){		
		return dataDao.deleteData(data);
	}
	
	/**
	 * ���������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean updateData(TData data){
		return dataDao.updateData(data);
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchData(TData data){
		
		return dataDao.searchData(data);
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TData seachData(Long id){
		return dataDao.seachData(id);
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonData(Long pid){
		return null;
	}
	
	/**
	 * ����С���ѯ�������
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
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageData(Long pid){
		return this.dataDao.searchPageData(pid);
	}

}
