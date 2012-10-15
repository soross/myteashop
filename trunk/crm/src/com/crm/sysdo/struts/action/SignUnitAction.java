package com.crm.sysdo.struts.action;

import java.util.Date;
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
import com.crm.sysdo.po.TSignUnit;
import com.crm.sysdo.service.inf.SignUnitServiceDao;
import com.crm.sysdo.struts.form.SickbedForm;
import com.crm.sysdo.struts.form.SignUnitForm;
import com.crm.tool.DateUtil;

public class SignUnitAction extends DispatchAction {
	private SignUnitServiceDao signUnitServiceDao;
	private Permission perDao;

	/**
	 * 跳转签约单位列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward signUnitList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SignUnitForm signUnitForm = (SignUnitForm) form;
		TSignUnit tSignUnit = new TSignUnit();
		 BeanUtils.copyProperties(tSignUnit, signUnitForm);
		Map<String, Object> map = new HashMap<String, Object>();
		PageUtil pageUtil = new PageUtil(request, this.signUnitServiceDao
				.getCount(tSignUnit, map), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		List list = this.signUnitServiceDao.signunitList(tSignUnit, map, pageUtil);
		request.setAttribute("signunitList", list);
		// 32 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_SINGUNIT);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/signunit/signunitlist.jsp");
	}
	
	
	/**
	 * 跳转往来签约单位增加的页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddSignUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// 32 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_SINGUNIT);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/signunit/addsignunit.jsp");
	}
	
	
	/**
	 * 签约单位增加
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addSignUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SignUnitForm signUnitForm =(SignUnitForm) form;
		TSignUnit tSignUnit = new TSignUnit();
		BeanUtils.copyProperties(tSignUnit, signUnitForm);
		tSignUnit.setCreateDate(DateUtil.StringToDate_YMD(DateUtil.DateToStringBy_YMD(new Date())));
		signUnitServiceDao.addSignUnit(tSignUnit);
	    response.getWriter().write(
				"<script>location.href='"
						+ request.getContextPath()
						+ "/admin/signUnit.do?task=signUnitList&modfunid=85';</script>");
	    return null;
	}
	
	
	/**
	 * 签约单位跳转到更新页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateSignUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SignUnitForm signUnitForm =(SignUnitForm) form;
		String id =request.getParameter("id");
		TSignUnit tSignUnit = signUnitServiceDao.get(id);
		request.setAttribute("tSignUnit", tSignUnit);
		BeanUtils.copyProperties(signUnitForm, tSignUnit);
		
		// 32 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_SINGUNIT);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/signunit/updatesignunit.jsp");
	}
	
	
	
	
	/**
	 * 签约单位更新
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateSignUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		SignUnitForm signUnitForm =(SignUnitForm) form;
		
		TSignUnit tSignUnit = new TSignUnit();
	    BeanUtils.copyProperties(tSignUnit, signUnitForm);
	    TSignUnit tSignUnit1 = signUnitServiceDao.get(String.valueOf(tSignUnit.getId()));
	    tSignUnit.setCreateDate(tSignUnit1.getCreateDate());
	    signUnitServiceDao.updateSignUnit(tSignUnit);
	    response.getWriter().write(
				"<script>alert('签约单位修改成功！');location.href='"
						+ request.getContextPath()
						+ "/admin/signUnit.do?task=signUnitList';</script>");
	    return null;
	}
	
	
	
	/**
	 * 签约单位删除
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward delSignUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("id");
	    this.signUnitServiceDao.delSignUnit(id);
	    response.getWriter().write(
				"<script>alert('签约单位删除！');location.href='"
						+ request.getContextPath()
						+ "/admin/signUnit.do?task=signUnitList&modfunid=85';</script>");
	    
	    return null;
	}


	public SignUnitServiceDao getSignUnitServiceDao() {
		return signUnitServiceDao;
	}


	public void setSignUnitServiceDao(SignUnitServiceDao signUnitServiceDao) {
		this.signUnitServiceDao = signUnitServiceDao;
	}


	public Permission getPerDao() {
		return perDao;
	}


	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
	




}
