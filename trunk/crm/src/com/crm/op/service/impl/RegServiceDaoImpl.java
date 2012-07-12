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
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRegCount(){
		return regDao.getRegCount();		
	}
	
	/**
	 * ȡ���ܼ�¼��
	 * 
	 * @return
	 */
	public Integer getRegCount(TRegister obj){
		return regDao.getRegCount(obj);		
	}

	/**
	 * ȡ�ü���
	 * 
	 * @return
	 */
	public List getRegList(PageUtil pageUtil){
		return regDao.getRegList(pageUtil);
	}
	/**
	 * ȡ�ü���
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
	 * ��Ա
	 * 
	 * @param cust
	 * @return
	 */
	public Boolean addReg(TRegister reg){
		return regDao.addReg(reg);
	}

	/**
	 * ȡ�����е���һ��ID
	 * 
	 * @return
	 */
	public Integer getSeqNextValue(){
		return regDao.getSeqNextValue();
	}

	/**
	 * �޸Ļ�Ա
	 * 
	 * @param clientrule
	 * @param rulelog
	 * @return
	 */
	public Boolean updateReg(TRegister obj){
		return regDao.updateReg(obj);
	}

	/**
	 * ɾ����Ա
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
