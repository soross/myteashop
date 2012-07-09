package com.crm.pub.service.dao.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.pub.dao.inf.DataDao;
import com.crm.pub.po.TData;
import com.crm.pub.service.dao.inf.DataServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class DataServiceDaoImpl implements DataServiceDao {
	
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
		TData getData= dataDao.seachData(data.getId());
		if(data.getName()==null || "".equals(data.getName())){
			data.setName(getData.getName());
		}
		if(data.getPid()==null){
			data.setPid(getData.getPid());
		}
		if(data.getTrade()==null || "".equals(data.getTrade())){
			data.setTrade(getData.getTrade());
		}
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
