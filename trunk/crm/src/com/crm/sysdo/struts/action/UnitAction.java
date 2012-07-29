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
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TUnit;
import com.crm.sysdo.service.inf.UnitServiceDao;
import com.crm.sysdo.struts.form.UnitForm;
import com.crm.tool.DateUtil;
import com.mchange.v2.beans.BeansUtils;

public class UnitAction extends DispatchAction {
	
	private UnitServiceDao unitServiceDao;
	
	/**
	 * ��ת����ǩԼ��λ�б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward unitList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TUnit tunit = new TUnit();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		PageUtil pageUtil = new PageUtil(request, this.unitServiceDao
				.getCount(tunit, map), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		
		List list = this.unitServiceDao.unitList(tunit, map, pageUtil);
		request.setAttribute("unitList", list);
		
		return new ActionForward("/admin/sysdo/unit/unitlist.jsp");
	}
	
	
	/**
	 * ��ת����ǩԼ��λ���ӵ�ҳ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return new ActionForward("/admin/sysdo/unit/addunit.jsp");
	}
	
	
	/**
	 * ����ǩԼ��λ����
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UnitForm unitForm =(UnitForm) form;
		TUnit tunit = new TUnit();
	    BeanUtils.copyProperties(tunit, unitForm);
	    tunit.setCreateDate(DateUtil.StringToDate_YMD(DateUtil.DateToStringBy_YMD(new Date())));
	    unitServiceDao.addUnit(tunit);
	    response.getWriter().write(
				"<script>location.href='"
						+ request.getContextPath()
						+ "/admin/unit.do?task=unitList';</script>");
	    return null;
	}
	
	
	/**
	 * ����ǩԼ��λ��ת������ҳ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id =request.getParameter("id");
		TUnit tunit = unitServiceDao.get(id);
		request.setAttribute("unit", tunit);
		return new ActionForward("/admin/sysdo/unit/updateunit.jsp");
	}
	
	
	
	
	/**
	 * ����ǩԼ��λ����
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UnitForm unitForm =(UnitForm) form;
		TUnit tunit = new TUnit();
	    BeanUtils.copyProperties(tunit, unitForm);
	    unitServiceDao.updateUnit(tunit);
	    response.getWriter().write(
				"<script>alert('����ǩԼ��λ�޸ĳɹ���');location.href='"
						+ request.getContextPath()
						+ "/admin/unit.do?task=unitList';</script>");
	    return null;
	}
	
	
	
	/**
	 * ����ǩԼ��λɾ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward delUnit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("id");
	    this.unitServiceDao.delUnit(id);
	    response.getWriter().write(
				"<script>alert('����ǩԼ��λɾ����');location.href='"
						+ request.getContextPath()
						+ "/admin/unit.do?task=unitList';</script>");
	    
	    return null;
	}
	
	

	public UnitServiceDao getUnitServiceDao() {
		return unitServiceDao;
	}

	public void setUnitServiceDao(UnitServiceDao unitServiceDao) {
		this.unitServiceDao = unitServiceDao;
	}

}
