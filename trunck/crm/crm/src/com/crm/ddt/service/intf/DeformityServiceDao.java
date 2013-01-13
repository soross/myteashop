package com.crm.ddt.service.intf;


import java.util.List;

import com.crm.ddt.po.TDeformity;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface DeformityServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addDeformity(TDeformity Deformity);
	
	/**
	 * ɾ��
	 * @param Deformity
	 * @return
	 */
	public Boolean deleteDeformity(TDeformity Deformity);
	
	/**
	 * ����
	 * @param Deformity
	 * @return
	 */
	public Boolean updateDeformity(TDeformity Deformity);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TDeformity Deformity);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getDeformityList(PageUtil pageUtil ,TDeformity Deformity);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TDeformity getDeformityById(Long id);
	
	

}
