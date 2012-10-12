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

import com.crm.ddt.po.THis;
import com.crm.ddt.po.TProve;
import com.crm.ddt.service.intf.HisServiceDao;
import com.crm.ddt.service.intf.ProveServiceDao;
import com.crm.ddt.struts.form.HisForm;
import com.crm.ddt.struts.form.ProveForm;
import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.sysdo.service.inf.DeptServiceDao;
import com.crm.sysdo.service.inf.GoodsServiceDao;
import com.crm.tool.PinYinUtils;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class ProveAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private ProveServiceDao ProveServiceDao;
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
	public ActionForward toAddProve(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_PROVE);
		request.setAttribute("sonPowerByMenu", sl);
		
		return new ActionForward("/admin/ddt/prove/addprove.jsp");
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
	public ActionForward addProve(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProveForm ProveForm = (ProveForm) form;
		TProve Prove = new TProve();
		BeanUtils.copyProperties(Prove, ProveForm);
		Prove.setCreateDate(new Date());
		Boolean bool = this.ProveServiceDao.addProve(Prove);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/prove.do?task=toAddProve';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/prove.do?task=proveList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/prove.do?task=toAddProve';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/prove.do?task=proveList';}</script>");
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
	public ActionForward proveList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProveForm ProveForm = (ProveForm) form;
		TProve Prove = new TProve();
		BeanUtils.copyProperties(Prove, ProveForm);
		PageUtil pageUtil = new PageUtil(request, this.ProveServiceDao
				.getCount(Prove), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.ProveServiceDao.getProveList(pageUtil, Prove);
		request.setAttribute("ProveList", list);

		// 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_PROVE);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/ddt/prove/provelist.jsp");
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
	public ActionForward deleteProve(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProveForm ProveForm = (ProveForm) form;

		TProve Prove = new TProve();
		Prove.setId(new Long(ProveForm.getId()));

		Boolean bool = this.ProveServiceDao.deleteProve(Prove);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/prove.do?task=proveList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/prove.do?task=proveList';</script>");
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
	public ActionForward toUpdateProve(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProveForm ProveForm = (ProveForm) form;
		TProve Prove = this.ProveServiceDao.getProveById(new Long(ProveForm.getId()));
		BeanUtils.copyProperties(ProveForm, Prove);

		// 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_PROVE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/ddt/prove/updateprove.jsp");
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
	public ActionForward updateProve(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ProveForm ProveForm = (ProveForm) form;
		TProve Prove = this.ProveServiceDao.getProveById(new Long(ProveForm.getId()));
		BeanUtils.copyProperties(Prove, ProveForm);

		Boolean bool = false;
		try {
			bool = this.ProveServiceDao.updateProve(Prove);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response.getWriter().print(
					"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
							+ request.getContextPath()
							+ "/admin/prove/prove.do?task=toUpdateProve&id="
							+ Prove.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/prove/prove.do?task=ProveList';}</script>");

		} else {
			response.getWriter().print(
					"<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/prove/prove.do?task=toUpdateProve&id='"
							+ Prove.getId() + "';</script>");
		}
		return null;
	}

	public ProveServiceDao getProveServiceDao() {
		return ProveServiceDao;
	}

	public void setProveServiceDao(ProveServiceDao ProveServiceDao) {
		this.ProveServiceDao = ProveServiceDao;
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