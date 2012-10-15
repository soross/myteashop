/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.sysdo.struts.action;

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
import com.crm.sysdo.po.TManufacturer;
import com.crm.sysdo.service.inf.ManufacturerServiceDao;
import com.crm.sysdo.struts.form.ManuFacturerForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class ManufacturerAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private ManufacturerServiceDao manuServiceDao;
	private Permission perDao;

	/**
	 * 跳转到生产厂家界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 32 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_MANUFACTURER);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/manu/addmanu.jsp");
	}

	/**
	 * 添加生产厂家
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ManuFacturerForm ManuForm = (ManuFacturerForm) form;
		TManufacturer Manu = new TManufacturer();
		BeanUtils.copyProperties(Manu, ManuForm);


		Boolean bool = this.manuServiceDao.addManufacturer(Manu);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=toAddManu';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=ManuList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=toAddManu';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=ManuList';}</script>");
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
	public ActionForward ManuList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ManuFacturerForm ManuForm = (ManuFacturerForm) form;
		TManufacturer tManufacturer = new TManufacturer();
		Map<String, Object> map = new HashMap<String, Object>();
		BeanUtils.copyProperties(tManufacturer, ManuForm);
		PageUtil pageUtil = new PageUtil(request, this.manuServiceDao
				.getCount(tManufacturer, map), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		List list = this.manuServiceDao.getManufacturerList(pageUtil, tManufacturer,map);
		request.setAttribute("manuList", list);

		// 32 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_MANUFACTURER);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/manu/manulist.jsp");
	}

	/**
	 * 删除生产厂家
	 * 
	 * 连同子类一起删除
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ManuFacturerForm ManuForm = (ManuFacturerForm) form;

		TManufacturer Manu = new TManufacturer();
		Manu.setId(new Long(ManuForm.getId()));

		Boolean bool = this.manuServiceDao.deleteManufacturer(Manu);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回生产厂家列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/manu.do?task=ManuList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/manu.do?task=ManuList';</script>");
		}
		return null;
	}

	/**
	 * 跳转到修改生产厂家页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ManuFacturerForm ManuForm = (ManuFacturerForm) form;
		String id = request.getParameter("id");
		TManufacturer Manu = this.manuServiceDao.getManufacturerById(Long.parseLong(id));
		BeanUtils.copyProperties(ManuForm, Manu);
		request.setAttribute("Manubean", Manu);
		// 32 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_MANUFACTURER);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/manu/updatemanu.jsp");
	}

	/**
	 * 修改生产厂家
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ManuFacturerForm ManuForm = (ManuFacturerForm) form;
		String id = request.getParameter("id");
		TManufacturer Manu1 = this.manuServiceDao.getManufacturerById(new Long(id));
		TManufacturer Manu = new TManufacturer();
		BeanUtils.copyProperties(Manu, ManuForm);
		Manu.setCreateDate(Manu1.getCreateDate());
		Boolean bool = false;
		try {
			bool = this.manuServiceDao.updateManufacturer(Manu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('生产厂家修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=toUpdateManu&id="
									+ Manu.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=ManuList';}</script>");

		} else {
			response.getWriter().print("<script>alert('生产厂家修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/manu.do?task=toUpdateManu&id='"
							+ Manu.getId() + "';</script>");
		}
		return null;
	}

	

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	public ManufacturerServiceDao getManuServiceDao() {
		return manuServiceDao;
	}

	public void setManuServiceDao(ManufacturerServiceDao manuServiceDao) {
		this.manuServiceDao = manuServiceDao;
	}

}