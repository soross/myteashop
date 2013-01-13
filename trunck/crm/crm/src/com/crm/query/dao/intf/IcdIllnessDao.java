package com.crm.query.dao.intf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.po.TIcdIllness;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdIllnessDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addIcdIllness(TIcdIllness IcdIllness);
	
	/**
	 * ɾ��
	 * @param IcdIllness
	 * @return
	 */
	public Boolean deleteIcdIllness(TIcdIllness IcdIllness);
	
	/**
	 * ����
	 * @param IcdIllness
	 * @return
	 */
	public Boolean updateIcdIllness(TIcdIllness IcdIllness);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIcdIllness IcdIllness);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getIcdIllnessList(PageUtil pageUtil ,TIcdIllness IcdIllness);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIcdIllness getIcdIllnessById(Long id);
}
