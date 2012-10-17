package com.crm.ddt.service.intf;


import java.util.List;

import com.crm.ddt.po.THis;
import com.crm.ddt.po.TIllness;
import com.crm.ddt.po.TProve;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IllnessServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addIllness(TIllness Illness);
	
	/**
	 * ɾ��
	 * @param Illness
	 * @return
	 */
	public Boolean deleteIllness(TIllness Illness);
	
	/**
	 * ����
	 * @param Illness
	 * @return
	 */
	public Boolean updateIllness(TIllness Illness);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIllness Illness);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getIllnessList(PageUtil pageUtil ,TIllness Illness);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIllness getIllnessById(Long id);
	
	

}
