/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.report.struts.action;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.report.service.dao.RegisterReportServiceDao;
import com.crm.report.struts.bean.RegisterAmountBean;
import com.crm.report.struts.form.RegisterReportForm;

/** 
 * 门诊报表
 * MyEclipse Struts
 * Creation date: 10-15-2012
 * 
 * XDoclet definition:
 * @struts.action path="/registerReport" name="registerReportForm" scope="request" validate="true"
 */
public class RegisterReportAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private RegisterReportServiceDao registServiceDao;
	private Permission perDao;
	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
//	public ActionForward execute(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		RegisterReportForm registerReportForm = (RegisterReportForm) form;// TODO Auto-generated method stub
//		return null;
//	}
	
	public RegisterReportServiceDao getRegistServiceDao() {
		return registServiceDao;
	}

	public void setRegistServiceDao(RegisterReportServiceDao registServiceDao) {
		this.registServiceDao = registServiceDao;
	}

	/**
	 * 门诊汇总报表
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	public ActionForward regAmount(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException {
		RegisterReportForm registerReportForm = (RegisterReportForm) form;
		RegisterAmountBean registerAmountBean = new RegisterAmountBean();
		BeanUtils.copyProperties(registerAmountBean, registerReportForm);
		PageUtil pageUtil = new PageUtil(request, 1,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		List list = registServiceDao.registerAmount(registerAmountBean);
		request.setAttribute("regList", list);
		request.setAttribute("pageUtil", pageUtil);
		// 129角色
		List sl = perDao.getSonPerList(PowerKey.KEY_REGAMOUNT);
		return new ActionForward("/admin/report/register/regAmount.jsp");
	}
	
	/**
	 * 门诊明细
	 */
	public ActionForward regDetails(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		RegisterReportForm registerReportForm = (RegisterReportForm) form;
		String beginDate = registerReportForm.getBeginDate();
		String endDate = registerReportForm.getEndDate();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginDate", beginDate);
		map.put("endDate", endDate);
		List list = registServiceDao.getRegDetailsList(map);
		request.setAttribute("regList", list);
		PageUtil pageUtil = new PageUtil(request, 1,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		request.setAttribute("pageUtil", pageUtil);
		List sl = perDao.getSonPerList(PowerKey.KEY_REGDETAILS);
		return new ActionForward("/admin/report/register/regDetails.jsp");
	}
	
	/**
	 * 职工业务统计
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	public ActionForward staffBusinessCount(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException {
		RegisterReportForm registerReportForm = (RegisterReportForm) form;
		RegisterAmountBean registerAmountBean = new RegisterAmountBean();
		BeanUtils.copyProperties(registerAmountBean, registerReportForm);
		
		PageUtil pageUtil = new PageUtil(request, 1,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		List list = registServiceDao.staffBusinessCount(registerAmountBean);
		
		request.setAttribute("staffBusinessList", list);
		request.setAttribute("pageUtil", pageUtil);
		// 129角色
		List sl = perDao.getSonPerList(PowerKey.KEY_BUSINESSCOUNT);
		return new ActionForward("/admin/report/staff/staffbussiness.jsp");
	}
	
	/**
	 * 职工业务收入统计
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	public ActionForward staffBusinessIncome(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException {
		RegisterReportForm registerReportForm = (RegisterReportForm) form;
		RegisterAmountBean registerAmountBean = new RegisterAmountBean();
		BeanUtils.copyProperties(registerAmountBean, registerReportForm);
		
		PageUtil pageUtil = new PageUtil(request, 1,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		List list = registServiceDao.staffBusinessIncome(registerAmountBean);
		
		request.setAttribute("staffBusinessIncomeList", list);
		request.setAttribute("pageUtil", pageUtil);
		// 129角色
		List sl = perDao.getSonPerList(PowerKey.KEY_STAFFINCOME);
		return new ActionForward("/admin/report/staff/staffincome.jsp");
	}
	/**
	 * 部门业务收入统计
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	public ActionForward deptBusinessIncome(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException {
		RegisterReportForm registerReportForm = (RegisterReportForm) form;
		RegisterAmountBean registerAmountBean = new RegisterAmountBean();
		BeanUtils.copyProperties(registerAmountBean, registerReportForm);
		
		PageUtil pageUtil = new PageUtil(request, 1,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		List list = registServiceDao.deptBusinessIncome(registerAmountBean);
		
		request.setAttribute("deptBusinessIncomeList", list);
		request.setAttribute("pageUtil", pageUtil);
		// 129角色
		List sl = perDao.getSonPerList(PowerKey.KEY_DEPTINCOME);
		return new ActionForward("/admin/report/staff/deptincome.jsp");
	}
}