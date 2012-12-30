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
import com.crm.sysdo.po.TDisTpl;
import com.crm.sysdo.service.inf.DisTplServiceDao;
import com.crm.sysdo.struts.form.DisTplForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class DisTplAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private DisTplServiceDao DisTplServiceDao;
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
	public ActionForward toAddDisTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// List list = this.getDisTplServiceDao().getDisTplList(null, null);
		// request.setAttribute("DisTplTypeList", list);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_DISTPL);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/distpl/addtemplate.jsp");
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
	public ActionForward addDisTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DisTplForm DisTplForm = (DisTplForm) form;
		TDisTpl DisTpl = new TDisTpl();
		BeanUtils.copyProperties(DisTpl, DisTplForm);
		DisTpl.setStaffid(request.getParameter("staffid"));
		Boolean bool = this.DisTplServiceDao.addDisTpl(DisTpl);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=toAddDisTpl';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=disTplList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=toAddDisTpl';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=disTplList';}</script>");
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
	public ActionForward disTplList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DisTplForm DisTplForm = (DisTplForm) form;
		TDisTpl DisTpl = new TDisTpl();
		BeanUtils.copyProperties(DisTpl, DisTplForm);
		PageUtil pageUtil = new PageUtil(request, this.DisTplServiceDao
				.getCount(DisTpl), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.DisTplServiceDao.getDisTplList(pageUtil, DisTpl);
		request.setAttribute("DisTplList", list);

		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_DISTPL);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/distpl/templatelist.jsp");
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
	public ActionForward deleteDisTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DisTplForm DisTplForm = (DisTplForm) form;

		TDisTpl DisTpl = new TDisTpl();
		DisTpl.setId(new Long(DisTplForm.getId()));

		Boolean bool = this.DisTplServiceDao.deleteDisTpl(DisTpl);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> alert('删除成功!将返回列表!');location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=disTplList';</script>");
		} else {
			response
					.getWriter()
					.print(
							"<script> alert('删除失败,请重试!');location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=disTplList';</script>");
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
	public ActionForward toUpdateDisTpl(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		DisTplForm DisTplForm = (DisTplForm) form;
		TDisTpl DisTpl = this.DisTplServiceDao.getDisTplById(new Long(
				DisTplForm.getId()));
		BeanUtils.copyProperties(DisTplForm, DisTpl);

		// List list = this.getDisTplServiceDao().getDisTplList(null, null);
		// request.setAttribute("DisTplTypeList", list);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_DISTPL);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/distpl/updatetemplate.jsp");
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
	public ActionForward updateDisTpl(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DisTplForm DisTplForm = (DisTplForm) form;
		TDisTpl DisTpl = this.DisTplServiceDao.getDisTplById(new Long(
				DisTplForm.getId()));
		BeanUtils.copyProperties(DisTpl, DisTplForm);

		Boolean bool = false;
		try {
			bool = this.DisTplServiceDao.updateDisTpl(DisTpl);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=toUpdateDisTpl&id="
									+ DisTpl.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/disTpl.do?task=disTplList';}</script>");

		} else {
			response.getWriter().print(
					"<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/DisTpl.do?task=toUpdateDisTpl&id='"
							+ DisTpl.getId() + "';</script>");
		}
		return null;
	}

	public DisTplServiceDao getDisTplServiceDao() {
		return DisTplServiceDao;
	}

	public void setDisTplServiceDao(DisTplServiceDao DisTplServiceDao) {
		this.DisTplServiceDao = DisTplServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}