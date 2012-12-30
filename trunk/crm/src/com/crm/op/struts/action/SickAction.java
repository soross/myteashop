package com.crm.op.struts.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.po.TCardFee;
import com.crm.op.po.TOrder;
import com.crm.op.po.TSick;
import com.crm.op.service.intf.SickServiceDao;
import com.crm.op.struts.form.OrderForm;
import com.crm.op.struts.form.SickForm;
import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;
import com.crm.tool.DateUtil;

public class SickAction extends DispatchAction {
	private SickServiceDao SickServiceDao;
	private Permission perDao;

	/**
	 * 会员列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward sickList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		SickForm SickForm = (SickForm) form;
		TSick Sick = new TSick();
		BeanUtils.copyProperties(Sick, SickForm);

		Integer count = this.SickServiceDao.getSickCount(Sick);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.SickServiceDao.getSickList(Sick, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("SickList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_SICK);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/op/sick/sicklist.jsp");
	}

	/**
	 * 跳转到新增客户页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddSick(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);
		List sonList = perDao.getSonPerList(PowerKey.KEY_SICK);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/op/sick/addsick.jsp");
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
	public ActionForward toUpdateSick(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickForm SickForm = (SickForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TSick Sick = this.SickServiceDao.getSickByID(id);
		BeanUtils.copyProperties(SickForm, Sick);

		request.setAttribute("Sick", Sick);

		List sonList = perDao.getSonPerList(PowerKey.KEY_SICK);
		request.setAttribute("sonPowerByMenu", sonList);
		return new ActionForward("/admin/op/sick/updatesick.jsp");
	}

	public ActionForward addSick(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickForm SickForm = (SickForm) form;
		TSick sick = new TSick();
		BeanUtils.copyProperties(sick, SickForm);

		sick.setStaff(request.getParameter("staff").toString());

		Boolean bool = this.SickServiceDao.addSick(sick);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('新增成功,是否继续新增?')){location.href='"
									+ request.getContextPath()
									+ "/admin/sick.do?task=toAddSick';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/sick.do?task=sickList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('新增失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/sick.do?task=toAddSick';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/sick.do?task=sickList';}</script>");
		}
		return null;
	}

	public ActionForward updateSick(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickForm SickForm = (SickForm) form;
		TSick sick = new TSick();
		BeanUtils.copyProperties(sick, SickForm);

		sick.setStaff(request.getParameter("staff").toString());

		Boolean bool = this.SickServiceDao.updateSick(sick);
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('修改成功,是否继续修改?')){location.href='"
							+ request.getContextPath()
							+ "/admin/sick.do?task=toUpdateSick&id="
							+ SickForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/sick.do?task=sickList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('修改失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/sick.do?task=toUpdateSick&id="
							+ SickForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/sick.do?task=sickList';}</script>");
		}
		return null;
	}

	public ActionForward deleteSick(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickForm SickForm = (SickForm) form;
		Boolean bool = this.SickServiceDao.deleteSick(SickForm.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/sick.do?task=sickList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/sick.do?task=sickList';</script>");
		}
		return null;
	}

	public SickServiceDao getSickServiceDao() {
		return SickServiceDao;
	}

	public void setSickServiceDao(SickServiceDao SickServiceDao) {
		this.SickServiceDao = SickServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}
