package com.crm.report.dao.inf;

import java.util.List;

import com.crm.report.struts.bean.RegisterAmountBean;

public interface RegisterReportDao {
	
	/**
	 * �������
	 * @return
	 */
	public List registerAmount(RegisterAmountBean regAmount);

}
