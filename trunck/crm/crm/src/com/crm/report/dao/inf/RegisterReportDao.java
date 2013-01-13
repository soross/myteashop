package com.crm.report.dao.inf;

import java.util.List;
import java.util.Map;

import com.crm.report.struts.bean.RegisterAmountBean;

public interface RegisterReportDao {
	
	/**
	 * �������
	 * @return
	 */
	public List registerAmount(RegisterAmountBean regAmount);
	
	/**
	 * ������ϸ
	 * @param map
	 * @return
	 */
	public List getRegDetailsList(Map<String, Object> map);
	
	public List staffBusinessCount(final RegisterAmountBean regAmount);
	
	/**
	 * ְ��ҵ������ͳ��
	 * @return
	 */
	public List staffBusinessIncome(final RegisterAmountBean regAmount);
	
	public List deptBusinessIncome(final RegisterAmountBean regAmount) ;

}
