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
import com.crm.sysdo.po.TFeeItem;
import com.crm.sysdo.service.inf.FeeItemServiceDao;
import com.crm.sysdo.struts.form.FeeItemForm;
import com.crm.tool.DateUtil;

public class FeeItemAction extends DispatchAction{
	
	private FeeItemServiceDao feeItemServiceDao;
	
	/**
	 * 跳转收费项目列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward feeItemList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		TFeeItem tFeeItem = new TFeeItem();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		PageUtil pageUtil = new PageUtil(request, this.feeItemServiceDao
				.getCount(tFeeItem, map), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		
		List list = this.feeItemServiceDao. feeItemList(tFeeItem, map, pageUtil);
		request.setAttribute("feeItemList", list);
		
		return new ActionForward("/admin/sysdo/feeitem/feeItemList.jsp");
	}
	
	
	/**
	 * 跳转收费项目增加的页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddFeeItem(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return new ActionForward("/admin/sysdo/feeitem/addFeeItem.jsp");
	}
	
	
	/**
	 * 收费项目增加
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addFeeItem(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		FeeItemForm feeItemForm =(FeeItemForm) form;
		TFeeItem tFeeItem = new TFeeItem();
	    BeanUtils.copyProperties(tFeeItem, feeItemForm);
	    tFeeItem.setCreateDate(DateUtil.StringToDate_YMD(DateUtil.DateToStringBy_YMD(new Date())));
	    feeItemServiceDao.addFeeItem(tFeeItem);
	    response.getWriter().write(
				"<script>location.href='"
						+ request.getContextPath()
						+ "/admin/feeItem.do?task=feeItemList';</script>");
	    return null;
	}
	
	
	/**
	 * 收费项目跳转到更新页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateFeeItem(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id =request.getParameter("id");
		TFeeItem tFeeItem = feeItemServiceDao.get(id);
		request.setAttribute("feeItem", tFeeItem);
		return new ActionForward("/admin/sysdo/feeitem/updateFeeItem.jsp");
	}
	
	
	
	
	/**
	 * 收费项目更新
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateFeeItem(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		FeeItemForm feeItemForm =(FeeItemForm) form;
		TFeeItem tFeeItem = new TFeeItem();
	    BeanUtils.copyProperties(tFeeItem, feeItemForm);
	    feeItemServiceDao.updateFeeItem(tFeeItem);
	    response.getWriter().write(
				"<script>alert('收费项目修改成功！');location.href='"
						+ request.getContextPath()
						+ "/admin/feeItem.do?task=feeItemList';</script>");
	    return null;
	}
	
	
	
	/**
	 * 收费项目删除
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward delFeeItem(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("id");
	    this.feeItemServiceDao.delFeeItem(id);
	    response.getWriter().write(
				"<script>alert('收费项目删除！');location.href='"
						+ request.getContextPath()
						+ "/admin/feeItem.do?task=feeItemList';</script>");
	    
	    return null;
	}
	
	
	public FeeItemServiceDao getFeeItemServiceDao() {
		return feeItemServiceDao;
	}

	public void setFeeItemServiceDao(FeeItemServiceDao feeItemServiceDao) {
		this.feeItemServiceDao = feeItemServiceDao;
	}

}
