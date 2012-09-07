package com.crm.sysdo.service.inf;


import java.util.List;

import com.crm.page.PageUtil;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TStaff;

/**
 * �����ֵ����Service
 * 
 * @author wjc
 * 
 * 10.22 am
 *
 */
public interface StaffServiceDao {
	
	/**
	 * ȡ���ܼ�¼��
	 * @return
	 */
	public Integer getCount(TStaff staff);
	/**
	 * ��������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean addStaff(TStaff staff);
	
	/**
	 * ɾ�������ֵ�
	 * @param data
	 * @return
	 */
	public Boolean deleteStaff(TStaff staff);
	
	/**
	 * ���������ֵ�
	 * @param Staff
	 * @return
	 */
	public Boolean updateStaff(TStaff staff);
	
	/**
	 * ȡ�������ֵ��б�
	 * @return
	 */
	public List searchStaff(PageUtil pageUtil,TStaff staff);
	
	/**
	 * ��ѯ�����ֵ����
	 * @param id
	 * @return
	 */
	public TStaff seachStaff(Long id);
	

}
