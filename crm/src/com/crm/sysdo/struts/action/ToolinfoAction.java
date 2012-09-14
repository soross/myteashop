/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.sysdo.struts.action;

import java.util.List;

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
import com.crm.sysdo.po.TToolinfo;
import com.crm.sysdo.service.inf.ToolinfoServiceDao;
import com.crm.sysdo.struts.form.ToolinfoForm;
import com.crm.tool.PinYinUtils;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class ToolinfoAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private ToolinfoServiceDao ToolinfoServiceDao;
	private Permission perDao;

	/**
	 * 跳转到添加数字字典界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddToolinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 32 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOL_INFO);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/tool/addtoolinfo.jsp");
	}

	/**
	 * 添加
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addToolinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ToolinfoForm ToolinfoForm = (ToolinfoForm) form;
		TToolinfo Toolinfo = new TToolinfo();
		BeanUtils.copyProperties(Toolinfo, ToolinfoForm);
		
		if(null!=ToolinfoForm.getToolname()&&!"".equalsIgnoreCase(ToolinfoForm.getToolname())){
			Toolinfo.setPinyin(PinYinUtils.getAllFirstLetter(ToolinfoForm.getToolname()));
		}
		if(null!=ToolinfoForm.getAliasname()&&!"".equalsIgnoreCase(ToolinfoForm.getAliasname())){
			Toolinfo.setAliaspinyin(PinYinUtils.getAllFirstLetter(ToolinfoForm.getAliasname()));
		}
		
		Boolean bool = this.ToolinfoServiceDao.addToolinfo(Toolinfo);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfo.do?task=toAddToolinfo';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfo.do?task=toolinfoList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfo.do?task=toAddToolinfo';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfo.do?task=toolinfoList';}</script>");
			return null;
		}
	}

	/**
	 * 数字字典列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toolinfoList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ToolinfoForm ToolinfoForm = (ToolinfoForm) form;
		TToolinfo toolinfo = new TToolinfo();
		//BeanUtils.copyProperties(toolinfo, ToolinfoForm);
		
		PageUtil pageUtil = new PageUtil(request, this.ToolinfoServiceDao
				.getCount(toolinfo), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		
		List list = this.ToolinfoServiceDao.getToolinfoList(pageUtil, toolinfo);
		request.setAttribute("toolinfoList", list);
		// 32 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_TOOL_INFO);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/tool/toolinfolist.jsp");
	}

	/**
	 * 删除数字字典
	 * 
	 * 连同子类一起删除
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteToolinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ToolinfoForm ToolinfoForm = (ToolinfoForm) form;

		TToolinfo Toolinfo = new TToolinfo();
		Toolinfo.setId(new Long(ToolinfoForm.getId()));

		Boolean bool = this.ToolinfoServiceDao.deleteToolinfo(Toolinfo);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/toolinfo.do?task=toolinfoList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/toolinfo.do?task=toolinfoList';</script>");
		}
		return null;
	}

	/**
	 * 跳转到修改页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateToolinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ToolinfoForm ToolinfoForm = (ToolinfoForm) form;
		TToolinfo Toolinfo = this.ToolinfoServiceDao.getToolinfoById(new Long(ToolinfoForm.getId()));
		BeanUtils.copyProperties(ToolinfoForm, Toolinfo);


		// 32 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOL_INFO);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/tool/updatetoolinfo.jsp");
	}

	/**
	 * 修改
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateToolinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ToolinfoForm ToolinfoForm = (ToolinfoForm) form;
		TToolinfo Toolinfo = this.ToolinfoServiceDao.getToolinfoById(new Long(ToolinfoForm.getId()));
		BeanUtils.copyProperties(Toolinfo, ToolinfoForm);
		
		if(null!=ToolinfoForm.getToolname()&&!"".equalsIgnoreCase(ToolinfoForm.getToolname())){
			Toolinfo.setPinyin(PinYinUtils.getAllFirstLetter(ToolinfoForm.getToolname()));
		}
		if(null!=ToolinfoForm.getAliasname()&&!"".equalsIgnoreCase(ToolinfoForm.getAliasname())){
			Toolinfo.setAliaspinyin(PinYinUtils.getAllFirstLetter(ToolinfoForm.getAliasname()));
		}
		
		Boolean bool = false;
		try {
			bool = this.ToolinfoServiceDao.updateToolinfo(Toolinfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfo.do?task=toUpdateToolinfo&id="
									+ Toolinfo.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfo.do?task=toolinfoList';}</script>");

		} else {
			response.getWriter().print("<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/toolinfo.do?task=toUpdateToolinfo&id='"
							+ Toolinfo.getId() + "';</script>");
		}
		return null;
	}

	public ToolinfoServiceDao getToolinfoServiceDao() {
		return ToolinfoServiceDao;
	}

	public void setToolinfoServiceDao(ToolinfoServiceDao ToolinfoServiceDao) {
		this.ToolinfoServiceDao = ToolinfoServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
}