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
import com.crm.sysdo.po.TPreTpl;
import com.crm.sysdo.service.inf.PreTplServiceDao;
import com.crm.sysdo.struts.form.PreTplForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class PreTplAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private PreTplServiceDao PreTplServiceDao;
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
	public ActionForward toAddPreTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// List list = this.getPreTplServiceDao().getPreTplList(null, null);
		// request.setAttribute("PreTplTypeList", list);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_PRETPL);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/pretpl/addtemplate.jsp");
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
	public ActionForward addPreTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PreTplForm PreTplForm = (PreTplForm) form;
		TPreTpl PreTpl = new TPreTpl();
		BeanUtils.copyProperties(PreTpl, PreTplForm);
		PreTpl.setStaffid(request.getParameter("staffid"));
		Boolean bool = this.PreTplServiceDao.addPreTpl(PreTpl);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=toAddPreTpl';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=preTplList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=toAddPreTpl';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=preTplList';}</script>");
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
	public ActionForward preTplList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PreTplForm PreTplForm = (PreTplForm) form;
		TPreTpl PreTpl = new TPreTpl();
		BeanUtils.copyProperties(PreTpl, PreTplForm);
		int cnt = this.PreTplServiceDao.getCount(PreTpl);
		PageUtil pageUtil = new PageUtil(request,cnt , GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.PreTplServiceDao.getPreTplList(pageUtil, PreTpl);
		request.setAttribute("PreTplList", list);

		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_PRETPL);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/pretpl/templatelist.jsp");
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
	public ActionForward deletePreTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PreTplForm PreTplForm = (PreTplForm) form;

		TPreTpl PreTpl = new TPreTpl();
		PreTpl.setId(new Long(PreTplForm.getId()));

		Boolean bool = this.PreTplServiceDao.deletePreTpl(PreTpl);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> alert('删除成功!将返回列表!');location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=preTplList';</script>");
		} else {
			response
					.getWriter()
					.print(
							"<script> alert('删除失败,请重试!');location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=preTplList';</script>");
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
	public ActionForward toUpdatePreTpl(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PreTplForm PreTplForm = (PreTplForm) form;
		TPreTpl PreTpl = this.PreTplServiceDao.getPreTplById(new Long(
				PreTplForm.getId()));
		BeanUtils.copyProperties(PreTplForm, PreTpl);

		// List list = this.getPreTplServiceDao().getPreTplList(null, null);
		// request.setAttribute("PreTplTypeList", list);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_PRETPL);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/pretpl/updatetemplate.jsp");
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
	public ActionForward updatePreTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PreTplForm PreTplForm = (PreTplForm) form;
		TPreTpl PreTpl = this.PreTplServiceDao.getPreTplById(new Long(
				PreTplForm.getId()));
		BeanUtils.copyProperties(PreTpl, PreTplForm);

		Boolean bool = false;
		try {
			bool = this.PreTplServiceDao.updatePreTpl(PreTpl);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=toUpdatePreTpl&id="
									+ PreTpl.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/preTpl.do?task=preTplList';}</script>");

		} else {
			response.getWriter().print(
					"<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/preTpl.do?task=toUpdatePreTpl&id='"
							+ PreTpl.getId() + "';</script>");
		}
		return null;
	}

	public PreTplServiceDao getPreTplServiceDao() {
		return PreTplServiceDao;
	}

	public void setPreTplServiceDao(PreTplServiceDao PreTplServiceDao) {
		this.PreTplServiceDao = PreTplServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}