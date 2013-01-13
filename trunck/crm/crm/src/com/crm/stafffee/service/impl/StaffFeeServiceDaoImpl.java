package com.crm.stafffee.service.impl;

import java.util.List;

import com.crm.page.PageUtil;
import com.crm.stafffee.dao.intf.StaffFeeDao;
import com.crm.stafffee.po.TStaffFee;
import com.crm.stafffee.service.intf.StaffFeeServiceDao;

public class StaffFeeServiceDaoImpl implements StaffFeeServiceDao{
	StaffFeeDao StaffFeeDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount(){
		return StaffFeeDao.getStaffFeeCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getStaffFeeCount(TStaffFee StaffFee){
		return StaffFeeDao.getStaffFeeCount(StaffFee);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getStaffFeeList(PageUtil pageUtil){
		return StaffFeeDao.getStaffFeeList(pageUtil);
	}
	/**
	 * 取得集合
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
	 * 会员
	 * 
	 * @param StaffFee
	 * @return
	 */
	public Boolean addStaffFee(TStaffFee StaffFee){
		return StaffFeeDao.addStaffFee(StaffFee);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return StaffFeeDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateStaffFee(TStaffFee StaffFee){
		return StaffFeeDao.updateStaffFee(StaffFee);
	}

	/**
	 * 删除会员
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
