/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.ddt.struts.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.ddt.po.TDeformity;
import com.crm.ddt.service.intf.DeformityServiceDao;
import com.crm.ddt.struts.form.DeformityForm;
import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.sysdo.service.inf.DeptServiceDao;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class DeformityAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private DeformityServiceDao DeformityServiceDao;
	private DeptServiceDao DeptServiceDao;
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
	public ActionForward toAddDeformity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_DEFORMITY);
		request.setAttribute("sonPowerByMenu", sl);
		
		return new ActionForward("/admin/ddt/deformity/adddeformity.jsp");
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
	public ActionForward addDeformity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeformityForm DeformityForm = (DeformityForm) form;
		TDeformity Deformity = new TDeformity();
		BeanUtils.copyProperties(Deformity, DeformityForm);
		Deformity.setCreateDate(new Date());
		Boolean bool = this.DeformityServiceDao.addDeformity(Deformity);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/deformity.do?task=toAddDeformity';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/deformity.do?task=deformityList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/deformity.do?task=toAddDeformity';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/deformity.do?task=deformityList';}</script>");
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
	public ActionForward deformityList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeformityForm DeformityForm = (DeformityForm) form;
		TDeformity Deformity = new TDeformity();
		BeanUtils.copyProperties(Deformity, DeformityForm);
		PageUtil pageUtil = new PageUtil(request, this.DeformityServiceDao
				.getCount(Deformity), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.DeformityServiceDao.getDeformityList(pageUtil, Deformity);
		request.setAttribute("DeformityList", list);

		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_DEFORMITY);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/ddt/deformity/deformitylist.jsp");
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
	public ActionForward deleteDeformity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeformityForm DeformityForm = (DeformityForm) form;

		TDeformity Deformity = new TDeformity();
		Deformity.setId(new Long(DeformityForm.getId()));

		Boolean bool = this.DeformityServiceDao.deleteDeformity(Deformity);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/deformity.do?task=deformityList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/deformity.do?task=deformityList';</script>");
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
	public ActionForward toUpdateDeformity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeformityForm DeformityForm = (DeformityForm) form;
		TDeformity Deformity = this.DeformityServiceDao.getDeformityById(new Long(DeformityForm.getId()));
		BeanUtils.copyProperties(DeformityForm, Deformity);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_DEFORMITY);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/ddt/deformity/updatedeformity.jsp");
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
	public ActionForward updateDeformity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeformityForm DeformityForm = (DeformityForm) form;
		TDeformity Deformity = this.DeformityServiceDao.getDeformityById(new Long(DeformityForm.getId()));
		//BeanUtils.copyProperties(Deformity, DeformityForm);
		Deformity.setSickid(DeformityForm.getSickid());
		Deformity.setSickname(DeformityForm.getSickname());
		Deformity.setLinkman(DeformityForm.getLinkman());
		Deformity.setMobile(DeformityForm.getMobile());
		Deformity.setState(DeformityForm.getState());
		Deformity.setCreateStaff(DeformityForm.getCreateStaff());

		Boolean bool = false;
		try {
			bool = this.DeformityServiceDao.updateDeformity(Deformity);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response.getWriter().print(
					"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
							+ request.getContextPath()
							+ "/admin/deformity.do?task=toUpdateDeformity&id="
							+ Deformity.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/deformity.do?task=deformityList';}</script>");

		} else {
			response.getWriter().print(
					"<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/deformity.do?task=toUpdateDeformity&id='"
							+ Deformity.getId() + "';</script>");
		}
		return null;
	}

	public DeformityServiceDao getDeformityServiceDao() {
		return DeformityServiceDao;
	}

	public void setDeformityServiceDao(DeformityServiceDao DeformityServiceDao) {
		this.DeformityServiceDao = DeformityServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	public DeptServiceDao getDeptServiceDao() {
		return DeptServiceDao;
	}

	public void setDeptServiceDao(DeptServiceDao DeptServiceDao) {
		this.DeptServiceDao = DeptServiceDao;
	}
}