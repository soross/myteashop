package com.crm.stafffee.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.dao.intf.StaffFeeDao;
import com.crm.stafffee.po.TStaffFee;
import com.crm.stafffee.service.intf.StaffFeeServiceDao;

public class StaffFeeServiceDaoImpl implements StaffFeeServiceDao{
	StaffFeeDao StaffFeeDao;
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount(){
		return StaffFeeDao.getStaffFeeCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount(TStaffFee StaffFee){
		return StaffFeeDao.getStaffFeeCount(StaffFee);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getStaffFeeList(PageUtil pageUtil){
		return StaffFeeDao.getStaffFeeList(pageUtil);
	}
	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getStaffFeeList(TStaffFee StaffFee, PageUtil pageUtil){
		return StaffFeeDao.getStaffFeeList(StaffFee,pageUtil);
	}

	public List getStaffFeeList(){
		return StaffFeeDao.getStaffFeeList();
	}

	public TStaffFee getStaffFeeByID(Long id){
		return StaffFeeDao.getStaffFeeByID(id);
	}

	/**
	 * ��Ա
	 * 
	 * @param StaffFee
	 * @return
	 */
	public Boolean addStaffFee(TStaffFee StaffFee){
		return StaffFeeDao.addStaffFee(StaffFee);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return StaffFeeDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateStaffFee(TStaffFee StaffFee){
		return StaffFeeDao.updateStaffFee(StaffFee);
	}

	/**
	 * ɾ����Ա
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteStaffFee(Long id){
		return StaffFeeDao.deleteStaffFee(id);
	}

	public StaffFeeDao getStaffFeeDao() {
		return StaffFeeDao;
	}

	public void setStaffFeeDao(StaffFeeDao StaffFeeDao) {
		this.StaffFeeDao = StaffFeeDao;
	}
}
