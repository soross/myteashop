package com.crm.ddt.service.intf;


import java.util.List;

import com.crm.ddt.po.THis;
import com.crm.page.PageUtil;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface HisServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addHis(THis His);
	
	/**
	 * ɾ��
	 * @param His
	 * @return
	 */
	public Boolean deleteHis(THis His);
	
	/**
	 * ����
	 * @param His
	 * @return
	 */
	public Boolean updateHis(THis His);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(THis His);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getHisList(PageUtil pageUtil ,THis His);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public THis getHisById(Long id);
	
	

}
