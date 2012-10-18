package com.crm.report.service.impl;

import java.util.List;
import java.util.Map;

import com.crm.report.dao.inf.RegisterReportDao;
import com.crm.report.service.dao.RegisterReportServiceDao;
import com.crm.report.struts.bean.RegisterAmountBean;

public class RegisterReportServiceDaoImpl implements RegisterReportServiceDao{
	
	private RegisterReportDao registDao;

	

	public RegisterReportDao getRegistDao() {
		return registDao;
	}



	public void setRegistDao(RegisterReportDao registDao) {
		this.registDao = registDao;
	}



	/**
	 * 门诊汇总
	 */
	@Override
	public List registerAmount(RegisterAmountBean regAmount) {
		
		return registDao.registerAmount(regAmount);
	}
	
	/**
	 * 门诊明细
	 * @param map
	 * @return
	 */
	public List getRegDetailsList(Map<String, Object> map) {
		return registDao.getRegDetailsList(map);
	}

}
