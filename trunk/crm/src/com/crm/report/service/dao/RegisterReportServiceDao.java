package com.crm.report.service.dao;

import java.util.List;
import java.util.Map;

import com.crm.report.struts.bean.RegisterAmountBean;

public interface RegisterReportServiceDao {
	
	/**
	 * �������
	 * @return
	 */
	public List registerAmount(RegisterAmountBean regAmount);
	
	/**
	 * ������ϸ
	 */
	public List getRegDetailsList(Map<String, Object> map);

}
