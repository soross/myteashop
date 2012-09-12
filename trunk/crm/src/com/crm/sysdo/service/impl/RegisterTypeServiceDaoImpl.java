package com.crm.sysdo.service.impl;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.dao.inf.RegisterTypeDao;
import com.crm.sysdo.po.TGoodsType;
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
	 * ���
	 * @param Goods
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType){		
		return RegisterTypeDao.addRegisterType(RegisterType);
	}
	
	/**
	 * ɾ��
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(TRegisterType RegisterType){		
		return RegisterTypeDao.deleteRegisterType(RegisterType);
	}
	
	/**
	 * ����
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType){
		return RegisterTypeDao.updateRegisterType(RegisterType);
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TRegisterType RegisterType){
		return RegisterTypeDao.getCount(RegisterType);
	}
	
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getRegisterTypeList(PageUtil pageUtil,TRegisterType RegisterType){
		
		return RegisterTypeDao.getRegisterTypeList(pageUtil,RegisterType);
	}
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TRegisterType getRegisterTypeById(Long id){
		return RegisterTypeDao.getRegisterTypeById(id);
	}

	public RegisterTypeDao getRegisterTypeDao() {
		return RegisterTypeDao;
	}

	public void setRegisterTypeDao(RegisterTypeDao RegisterTypeDao) {
		this.RegisterTypeDao = RegisterTypeDao;
	}
	
	

}
