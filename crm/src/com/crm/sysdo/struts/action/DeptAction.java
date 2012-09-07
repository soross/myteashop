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
	 * �����б�
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
		
		// ���Ҳ���
		List perList = perDao.getSonPerList("79");
		request.setAttribute("sonPowerByMenu", perList);
		
		return new ActionForward("/admin/sysdo/dept/deptlist.jsp");
	}
	
	/**
	 * ��ת����������ҳ��
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
		// ���Ҳ���
		List perList = perDao.getSonPerList("79");
		request.setAttribute("sonPowerByMenu", perList);
		
		return new ActionForward("/admin/sysdo/dept/adddept.jsp");
	}
	
	/**
	 * ��������
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
					"<script>if(confirm('���Ҳ��������ɹ�,�Ƿ��������?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ�������ʧ��,�Ƿ�����?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toAddDept';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}
		return null;
	}
	
	/**
	 * ɾ������
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
					"<script>alert('���Ҳ���ɾ���ɹ�!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('���Ҳ���ɾ��ʧ��!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';</script>");
		}
		return null;
	}
	
	/**
	 * ��ת���޸Ĳ���
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
		
		// ���Ҳ���
		List perList = perDao.getSonPerList("79");
		request.setAttribute("sonPowerByMenu", perList);
		
		return new ActionForward("/admin/sysdo/dept/updatedept.jsp");
	}
	
	/**
	 * �޸Ĳ���
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
					"<script>if(confirm('���Ҳ��Ÿ��³ɹ�,�Ƿ��������?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="+dept.getId()+"';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ��Ÿ���ʧ��,�Ƿ�����?')){location.href='"
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
