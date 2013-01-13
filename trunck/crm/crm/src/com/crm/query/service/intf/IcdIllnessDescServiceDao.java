package com.crm.query.service.intf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.query.po.TIcdIllnessDesc;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdIllnessDescServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * ɾ��
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean deleteIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * ����
	 * @param IcdIllnessDesc
	 * @return
	 */
	public Boolean updateIcdIllnessDesc(TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIcdIllnessDesc IcdIllnessDesc);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getIcdIllnessDescList(PageUtil pageUtil ,TIcdIllnessDesc IcdIllnessDesc);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIcdIllnessDesc getIcdIllnessDescById(Long id);

}
