package com.crm.stafffee.service.intf;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.po.TStaffFee;

public interface StaffFeeServiceDao {
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount();
	
	/**
	 * ȡ���ܼ�¼��-����
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount(TStaffFee StaffFee);

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getStaffFeeList(PageUtil pageUtil);
	
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getStaffFeeList(TStaffFee StaffFee, PageUtil pageUtil);

	public List getStaffFeeList();

	public TStaffFee getStaffFeeByID(Long id);

	/**
	 * ��Ա
	 * 
	 * @param StaffFee
	 * @return
	 */
	public Boolean addStaffFee(TStaffFee StaffFee);

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue();

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateStaffFee(TStaffFee StaffFee);

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteStaffFee(Long id);
}
