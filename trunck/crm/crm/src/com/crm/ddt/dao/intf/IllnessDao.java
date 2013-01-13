package com.crm.ddt.dao.intf;


import java.util.List;

import com.crm.ddt.po.THis;
import com.crm.ddt.po.TIllness;
import com.crm.ddt.po.TProve;
import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IllnessDao {
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
