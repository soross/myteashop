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
import com.crm.sysdo.po.TRegisterType;
import com.crm.sysdo.service.inf.RegisterTypeServiceDao;
import com.crm.sysdo.struts.form.RegisterTypeForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class RegisterTypeAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private RegisterTypeServiceDao RegisterTypeServiceDao;
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
	public ActionForward toAddRegisterType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 32 角色
		List sonList = perDao.getSonPerList("33");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/RegisterType/addRegisterType.jsp");
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
	public ActionForward addRegisterType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterTypeForm RegisterTypeForm = (RegisterTypeForm) form;
		TRegisterType RegisterType = new TRegisterType();
		BeanUtils.copyProperties(RegisterType, RegisterTypeForm);

		Boolean bool = this.RegisterTypeServiceDao.addRegisterType(RegisterType);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/RegisterType.do?task=toAddRegisterType';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/RegisterType.do?task=RegisterTypeList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/RegisterType.do?task=toAddRegisterType';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/RegisterType.do?task=RegisterTypeList';}</script>");
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
	public ActionForward RegisterTypeList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterTypeForm RegisterTypeForm = (RegisterTypeForm) form;
		PageUtil pageUtil = new PageUtil(request, this.RegisterTypeServiceDao
				.getCount(null), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		// 32 角色
		List sl = perDao.getSonPerList("33");
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/RegisterType/RegisterTypelist.jsp");
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
	public ActionForward deleteRegisterType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterTypeForm RegisterTypeForm = (RegisterTypeForm) form;

		TRegisterType RegisterType = new TRegisterType();
		RegisterType.setId(new Long(RegisterTypeForm.getId()));

		Boolean bool = this.RegisterTypeServiceDao.deleteRegisterType(RegisterType);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回数字字典列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/RegisterType.do?task=RegisterTypeList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/RegisterType.do?task=RegisterTypeList';</script>");
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
	public ActionForward toUpdateRegisterType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterTypeForm RegisterTypeForm = (RegisterTypeForm) form;
		TRegisterType RegisterType = this.RegisterTypeServiceDao.getRegisterTypeById(new Long(RegisterTypeForm.getId()));
		BeanUtils.copyProperties(RegisterTypeForm, RegisterType);

		// 32 角色
		List sonList = perDao.getSonPerList("33");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/RegisterType/updateRegisterType.jsp");
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
	public ActionForward updateRegisterType(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegisterTypeForm RegisterTypeForm = (RegisterTypeForm) form;
		TRegisterType RegisterType = this.RegisterTypeServiceDao.getRegisterTypeById(new Long(RegisterTypeForm.getId()));
		BeanUtils.copyProperties(RegisterType, RegisterTypeForm);

		Boolean bool = false;
		try {
			bool = this.RegisterTypeServiceDao.updateRegisterType(RegisterType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('数字字典修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/RegisterType.do?task=toUpdateRegisterType&id="
									+ RegisterType.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/RegisterType.do?task=RegisterTypeList';}</script>");

		} else {
			response.getWriter().print("<script>alert('数字字典修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/RegisterType.do?task=toUpdateRegisterType&id='"
							+ RegisterType.getId() + "';</script>");
		}
		return null;
	}

	
	public RegisterTypeServiceDao getRegisterTypeServiceDao() {
		return RegisterTypeServiceDao;
	}

	public void setRegisterTypeServiceDao(RegisterTypeServiceDao RegisterTypeServiceDao) {
		this.RegisterTypeServiceDao = RegisterTypeServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
}