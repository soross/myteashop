package com.crm.sysdo.struts.action;

import java.util.Date;
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
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.service.inf.DeptServiceDao;
import com.crm.sysdo.struts.form.DeptForm;
import com.crm.tool.PinYinUtils;

public class DeptAction extends DispatchAction{
	private DeptServiceDao deptServiceDao;
	private Permission perDao;
	
	/**
	 * 部门列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deptList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		String type = request.getParameter("type");
		List list = this.deptServiceDao.getDeptList(type);
		request.setAttribute("deptList", list);
		
		// 科室部门
		List perList = perDao.getSonPerList("79");
		request.setAttribute("sonPowerByMenu", perList);
		
		return new ActionForward("/admin/sysdo/dept/deptlist.jsp");
	}
	
	/**
	 * 跳转到新增部门页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {		
		// 科室部门
		List perList = perDao.getSonPerList("79");
		request.setAttribute("sonPowerByMenu", perList);
		
		return new ActionForward("/admin/sysdo/dept/adddept.jsp");
	}
	
	/**
	 * 新增部门
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		Date date = new Date();
		dept.setCreateDate(date);
		
		if(null==dept.getPinyin()||"".equals(dept.getPinyin())){
			dept.setPinyin(PinYinUtils.getAllFirstLetter(dept.getDeptName()).toUpperCase());
		}
	
		
		Boolean bool = this.deptServiceDao.addDept(dept);
		
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('科室部门新增成功,是否继续新增?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('科室部门新增失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		return null;
	}
	
	/**
	 * 删除部门
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		Boolean bool = this.deptServiceDao.deleteDept(dept.getId());
		
		if (bool) {
			response.getWriter().write(
					"<script>alert('科室部门删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('科室部门删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';</script>");
		}
		return null;
	}
	
	/**
	 * 跳转到修改部门
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward  toUpdateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = this.deptServiceDao.getDeptByID(deptForm.getId());
		BeanUtils.copyProperties(deptForm, dept);
		
		// 科室部门
		List perList = perDao.getSonPerList("79");
		request.setAttribute("sonPowerByMenu", perList);
		
		return new ActionForward("/admin/sysdo/dept/updatedept.jsp");
	}
	
	/**
	 * 修改部门
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward  updateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		dept.setCreateDate(new Date());
		
		if(null==dept.getPinyin()||"".equals(dept.getPinyin())){
			dept.setPinyin(PinYinUtils.getAllFirstLetter(dept.getDeptName()).toUpperCase());
		}
		
		boolean bool = this.deptServiceDao.updateDept(dept);
		
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新成功,是否继续更新?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		
		return null;
	}

	public DeptServiceDao getDeptServiceDao() {
		return deptServiceDao;
	}

	public void setDeptServiceDao(DeptServiceDao deptServiceDao) {
		this.deptServiceDao = deptServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
	
}
