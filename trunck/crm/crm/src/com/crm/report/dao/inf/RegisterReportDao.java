package com.crm.report.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.report.struts.bean.RegisterAmountBean;

public interface RegisterReportDao {
	
	/**
	 * 门诊汇总
	 * @return
	 */
	public List registerAmount(RegisterAmountBean regAmount);
	
	/**
	 * 门诊明细
	 * @param map
	 * @return
	 */
	public List getRegDetailsList(Map<String, Object> map);
	
	public List staffBusinessCount(final RegisterAmountBean regAmount);
	
	/**
	 * 职工业务收入统计
	 * @return
	 */
	public List staffBusinessIncome(final RegisterAmountBean regAmount);
	
	public List deptBusinessIncome(final RegisterAmountBean regAmount) ;

}
