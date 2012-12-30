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
import com.crm.sysdo.po.TTemplate;
import com.crm.sysdo.service.inf.TemplateServiceDao;
import com.crm.sysdo.struts.form.TemplateForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class TemplateAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private TemplateServiceDao TemplateServiceDao;
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
	public ActionForward toAddTemplate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// List list = this.getTemplateServiceDao().getTemplateList(null, null);
		// request.setAttribute("TemplateTypeList", list);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_TEMPLATE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/template/addtemplate.jsp");
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
	public ActionForward addTemplate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TemplateForm TemplateForm = (TemplateForm) form;
		TTemplate Template = new TTemplate();
		BeanUtils.copyProperties(Template, TemplateForm);
		Template.setStaffid(request.getParameter("staffid"));
		Boolean bool = this.TemplateServiceDao.addTemplate(Template);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/template.do?task=toAddTemplate';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/template.do?task=templateList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/template.do?task=toAddTemplate';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/template.do?task=templateList';}</script>");
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
	public ActionForward templateList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TemplateForm TemplateForm = (TemplateForm) form;
		TTemplate Template = new TTemplate();
		BeanUtils.copyProperties(Template, TemplateForm);
		PageUtil pageUtil = new PageUtil(request, this.TemplateServiceDao
				.getCount(Template), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.TemplateServiceDao.getTemplateList(pageUtil, Template);
		request.setAttribute("TemplateList", list);

		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_TEMPLATE);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/template/templatelist.jsp");
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
	public ActionForward deleteTemplate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TemplateForm TemplateForm = (TemplateForm) form;

		TTemplate Template = new TTemplate();
		Template.setId(new Long(TemplateForm.getId()));

		Boolean bool = this.TemplateServiceDao.deleteTemplate(Template);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> alert('删除成功!将返回列表!');location.href='"
									+ request.getContextPath()
									+ "/admin/Template.do?task=TemplateList';</script>");
		} else {
			response
					.getWriter()
					.print(
							"<script> alert('删除失败,请重试!');location.href='"
									+ request.getContextPath()
									+ "/admin/Template.do?task=TemplateList';</script>");
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
	public ActionForward toUpdateTemplate(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TemplateForm TemplateForm = (TemplateForm) form;
		TTemplate Template = this.TemplateServiceDao.getTemplateById(new Long(
				TemplateForm.getId()));
		BeanUtils.copyProperties(TemplateForm, Template);

		// List list = this.getTemplateServiceDao().getTemplateList(null, null);
		// request.setAttribute("TemplateTypeList", list);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_TEMPLATE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/template/updatetemplate.jsp");
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
	public ActionForward updateTemplate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TemplateForm TemplateForm = (TemplateForm) form;
		TTemplate Template = this.TemplateServiceDao.getTemplateById(new Long(
				TemplateForm.getId()));
		BeanUtils.copyProperties(Template, TemplateForm);

		Boolean bool = false;
		try {
			bool = this.TemplateServiceDao.updateTemplate(Template);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/template.do?task=toUpdateTemplate&id="
									+ Template.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/template.do?task=templateList';}</script>");

		} else {
			response.getWriter().print(
					"<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/Template.do?task=toUpdateTemplate&id='"
							+ Template.getId() + "';</script>");
		}
		return null;
	}

	public TemplateServiceDao getTemplateServiceDao() {
		return TemplateServiceDao;
	}

	public void setTemplateServiceDao(TemplateServiceDao TemplateServiceDao) {
		this.TemplateServiceDao = TemplateServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}