package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TRegisterType;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface RegisterTypeServiceDao {
	
	/**
	 * ����
	 * @param data
	 * @return
	 */
	public Boolean addRegisterType(TRegisterType RegisterType);
	
	/**
	 * ɾ��
	 * @param RegisterType
	 * @return
	 */
	public Boolean deleteRegisterType(TRegisterType RegisterType);
	
	/**
	 * ����
	 * @param RegisterType
	 * @return
	 */
	public Boolean updateRegisterType(TRegisterType RegisterType);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TRegisterType RegisterType);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getRegisterTypeList(PageUtil pageUtil ,TRegisterType RegisterType);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TRegisterType getRegisterTypeById(Long id);

}