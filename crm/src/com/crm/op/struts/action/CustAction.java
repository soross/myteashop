package com.crm.op.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.service.intf.CustServiceDao;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;

public class CustAction extends DispatchAction{
	private CustServiceDao custServiceDao;
	
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
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		//List list = this.deptServiceDao.getDeptList();
		//request.setAttribute("deptList", list);
		
		return new ActionForward("/admin/sysdo/dept/deptlist.jsp");
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
	public ActionForward toAddCust(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//Integer count = this.deptServiceDao.getDeptCount();
		//PageUtil pageUtil = new PageUtil(request, count, count);		
		//List list = this.deptServiceDao.getDeptList(pageUtil);		
		//request.setAttribute("deptList", list);
		
		return new ActionForward("/admin/op/index.jsp");
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
				
		//Boolean bool = this.deptServiceDao.addDept(dept);
		boolean bool = false;
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
		
		//Boolean bool = this.deptServiceDao.deleteDept(dept.getId());
		boolean bool = false;
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
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);
		
		//TDept info = this.deptServiceDao.getDeptByID(dept.getId());
		//request.setAttribute("deptInfo", info);
		
		//Integer count = this.deptServiceDao.getDeptCount();
		//PageUtil pageUtil = new PageUtil(request, count, count);
		///List list = this.deptServiceDao.getDeptList(pageUtil);
		//request.setAttribute("deptList", list);
		
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
		
		//boolean bool = this.deptServiceDao.updateDept(dept);
		boolean bool = false;
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

	public CustServiceDao getCustServiceDao() {
		return custServiceDao;
	}

	public void setCustServiceDao(CustServiceDao custServiceDao) {
		this.custServiceDao = custServiceDao;
	}

}
