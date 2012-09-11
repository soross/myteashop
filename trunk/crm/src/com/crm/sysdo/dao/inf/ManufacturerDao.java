package com.crm.sysdo.dao.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TManufacturer;

/**
 * �����ֵ����Inf
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface ManufacturerDao {
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount();
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addManufacturer(TManufacturer Manufacturing);
	
	/**
	 * ɾ�������ֵ�
	 * @param Manufacturing
	 * @return
	 */
	public Boolean deleteManufacturer(TManufacturer Manufacturing);
	
	/**
	 * ���������ֵ�
	 * @param Manufacturing
	 * @return
	 */
	public Boolean updateManufacturer(TManufacturer Manufacturing);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchManufacturer(TManufacturer Manufacturing);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TManufacturer seachManufacturer(Long id);
	
	/**
	 * ���ݸ���ID��ѯС��
	 * @param pid
	 * @return
	 */
	public List searchSonManufacturer(Long pid);
	
	/**
	 * ����С���ѯ�������
	 * @param id
	 * @return
	 */
	public List searchParentManufacturer(PageUtil pageUtil);
	
	/**
	 * ����Pid��ҳ
	 * @param pid
	 * @return
	 */
	public List searchPageManufacturer(Long pid);
}
