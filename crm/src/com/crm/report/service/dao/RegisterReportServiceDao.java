package com.crm.report.service.dao;

import java.util.List;

import com.crm.report.struts.bean.RegisterAmountBean;

public interface RegisterReportServiceDao {
	
	/**
	 * �������
	 * @return
	 */
	public List registerAmount(RegisterAmountBean regAmount);

}
