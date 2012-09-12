package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.po.TIcd;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface IcdServiceDao {
	
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
