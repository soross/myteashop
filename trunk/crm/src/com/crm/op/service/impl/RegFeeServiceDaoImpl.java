package com.crm.op.service.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.op.dao.intf.RegFeeDao;
import com.crm.op.po.TRegisterFee;
import com.crm.op.service.intf.RegFeeServiceDao;
import com.crm.page.PageUtil;

public class RegFeeServiceDaoImpl implements RegFeeServiceDao {
    private RegFeeDao regFeeDao;
	
	
	public Boolean addRegFee(TRegisterFee of) {
		return regFeeDao.addRegFee(of);
	}

	public Boolean deleteRegFee(Long id) {
		return regFeeDao.deleteRegFee(id);
	}

	public Integer getRegFeeCount() {
		return regFeeDao.getRegFeeCount();
	}

	public Integer getRegFeeCount(final TRegisterFee of) {
		return regFeeDao.getRegFeeCount(of);
	}

	public List getRegFeeList(final PageUtil pageUtil) {
		return regFeeDao.getRegFeeList(pageUtil);
	}

	public List getRegFeeList(final TRegisterFee of, final PageUtil pageUtil) {
		return regFeeDao.getRegFeeList(of, pageUtil);
	}

	public TRegisterFee getRegFeeByID(Long id) {
		return regFeeDao.getRegFeeByID(id);
	}
	
	public List getRegFeeByOrderID(String orderID){
		return regFeeDao.getRegFeeByOrderID(orderID);
	}

	public Integer getSeqNextValue() {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean updateRegFee(TRegisterFee of) {
		return regFeeDao.updateRegFee(of);
	}

	public RegFeeDao getRegFeeDao() {
		return regFeeDao;
	}

	public void setRegFeeDao(RegFeeDao RegFeeDao) {
		this.regFeeDao = RegFeeDao;
	}
}
