package com.crm.ddt.service.intf;


import java.util.List;

import com.crm.ddt.po.THis;
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
public interface ProveServiceDao {
	
	/**
	 * ���
	 * @param data
	 * @return
	 */
	public Boolean addProve(TProve Prove);
	
	/**
	 * ɾ��
	 * @param Prove
	 * @return
	 */
	public Boolean deleteProve(TProve Prove);
	
	/**
	 * ����
	 * @param Prove
	 * @return
	 */
	public Boolean updateProve(TProve Prove);
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TProve Prove);
	/**
	 * ȡ���б�
	 * @return
	 */
	public List getProveList(PageUtil pageUtil ,TProve Prove);
	
	/**
	 * ��ѯ����
	 * @param id
	 * @return
	 */
	public TProve getProveById(Long id);
	
	

}
