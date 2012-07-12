package com.crm.op.service.impl;

import java.util.List;

import com.crm.op.dao.intf.RegDao;
import com.crm.op.po.TCustomer;
import com.crm.op.po.TRegister;
import com.crm.op.service.intf.RegServiceDao;
import com.crm.page.PageUtil;

public class RegServiceDaoImpl implements RegServiceDao{
	RegDao regDao;
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRegCount(){
		return regDao.getRegCount();		
	}
	
	/**
	 * 取得总记录数
	 * 
	 * @return
	 */
	public Integer getRegCount(TRegister obj){
		return regDao.getRegCount(obj);		
	}

	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRegList(PageUtil pageUtil){
		return regDao.getRegList(pageUtil);
	}
	/**
	 * 取得集合
	 * 
	 * @return
	 */
	public List getRegList(TRegister obj, PageUtil pageUtil){
		return regDao.getRegList(obj,pageUtil);
	}

	public List getRegList(){
		return regDao.getRegList();
	}

	public TRegister getRegByID(Long id){
		return regDao.getRegByID(id);
	}

	/**
	 * 会员
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addReg(TRegister reg){
		return regDao.addReg(reg);
	}

	/**
	 * 取得序列的下一个ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return regDao.getSeqNextValue();
	}

	/**
	 * 修改会员
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateReg(TRegister obj){
		return regDao.updateReg(obj);
	}

	/**
	 * 删除会员
	 * 
	 * @param id
	 * @return
	 */
	public Boolean deleteReg(Long id){
		return regDao.deleteReg(id);
	}

	public RegDao getRegDao() {
		return regDao;
	}

	public void setRegDao(RegDao regDao) {
		this.regDao = regDao;
	}
}
