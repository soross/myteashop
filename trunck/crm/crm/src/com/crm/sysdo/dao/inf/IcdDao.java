package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TIcd;
import com.crm.sysdo.po.TToolinfo;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdDao {
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addIcd(TIcd Icd);
	
	/**
	 * ɾ��
	 * @param Icd
	 * @return
	 */
	public Boolean deleteIcd(TIcd Icd);
	
	/**
	 * ����
	 * @param Icd
	 * @return
	 */
	public Boolean updateIcd(TIcd Icd);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TIcd Icd);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getIcdList(PageUtil pageUtil ,TIcd Icd);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TIcd getIcdById(Long id);
}
