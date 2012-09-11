package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.RegisterTypeDao;
import com.crm.sysdo.po.TRegisterType;
import com.crm.sysdo.service.inf.RegisterTypeServiceDao;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public class RegisterTypeServiceDaoImpl implements RegisterTypeServiceDao {
	
	private RegisterTypeDao RegisterTypeDao;
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(){
		return RegisterTypeDao.getCount();
	}

	/**
	 * ��������ֵ�
	 * @param RegisterType
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType){		
		return RegisterTypeDao.addRegisterType(RegisterType);
	}
	
	/**
	 * ɾ�������ֵ�
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(TRegisterType RegisterType){		
		return RegisterTypeDao.deleteRegisterType(RegisterType);
	}
	
	/**
	 * ���������ֵ�
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType){
		return RegisterTypeDao.updateRegisterType(RegisterType);
	}
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchRegisterType(TRegisterType RegisterType){
		
		return RegisterTypeDao.searchRegisterType(RegisterType);
	}
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TRegisterType seachRegisterType(Long id){
		return RegisterTypeDao.seachRegisterType(id);
	}
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonRegisterType(Long pid){
		return null;
	}
	
	/**
	 * ����С���ѯ�������
	 * 
	 * @return
	 */
	public List searchParentRegisterType(PageUtil pageUtil){
		
		return RegisterTypeDao.searchParentRegisterType(pageUtil);
	}

	public RegisterTypeDao getRegisterTypeDao() {
		return RegisterTypeDao;
	}

	public void setRegisterTypeDao(RegisterTypeDao RegisterTypeDao) {
		this.RegisterTypeDao = RegisterTypeDao;
	}
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageRegisterType(Long pid){
		return this.RegisterTypeDao.searchPageRegisterType(pid);
	}

}
