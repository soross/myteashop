package com.crm.ddt.dao.intf;


import java.util.List;

import com.crm.ddt.po.TMedical;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface MedicalDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addMedical(TMedical Medical);
	
	/**
	 * ɾ��
	 * @param Medical
	 * @return
	 */
	public Boolean deleteMedical(TMedical Medical);
	
	/**
	 * ����
	 * @param Medical
	 * @return
	 */
	public Boolean updateMedical(TMedical Medical);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TMedical Medical);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getMedicalList(PageUtil pageUtil ,TMedical Medical);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TMedical getMedicalById(Long id);
	
	
}
