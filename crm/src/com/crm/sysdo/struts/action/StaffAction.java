/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
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
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.po.TStaff;
import com.crm.sysdo.service.inf.DataServiceDao;
import com.crm.sysdo.service.inf.DeptServiceDao;
import com.crm.sysdo.service.inf.StaffServiceDao;
import com.crm.sysdo.struts.form.DataForm;
import com.crm.sysdo.struts.form.StaffForm;
import com.crm.tool.DateUtil;
import com.crm.tool.PinYinUtils;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class StaffAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	
	private StaffServiceDao staffServiceDao;
	private Permission perDao;
	private DeptServiceDao deptServiceDao;
	/**
	 * 人事档案列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward staffList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffForm staffForm = (StaffForm) form;
		TStaff staff = new TStaff();
		staff.setStaffname(staffForm.getStaffname());
		staff.setTel(staffForm.getTel());
		staff.setSex(staffForm.getSex());
		staff.setDeptid(staffForm.getDeptid());
		staff.setState(staffForm.getState());
		
		PageUtil pageUtil = new PageUtil(request, this.staffServiceDao
				.getCount(staff), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		
		List list = this.staffServiceDao.searchStaff(pageUtil,staff);
		request.setAttribute("staffList", list);
		
		List deptList = deptServiceDao.getDeptList();
		request.setAttribute("deptList", deptList);
		
		// 80职员
		List sl = perDao.getSonPerList(PowerKey.KEY_STAFF);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/staff/stafflist.jsp");
	}
	
	/**
	 * 跳转到添加数字字典界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddStaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List deptList = deptServiceDao.getDeptList();
		request.setAttribute("deptList", deptList);
		//80
		List sonList = perDao.getSonPerList(PowerKey.KEY_STAFF);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/staff/addstaff.jsp");
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
	public ActionForward addStaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffForm staffForm = (StaffForm) form;
		TStaff staff = new TStaff();
		BeanUtils.copyProperties(staff, staffForm);
		
		if(null==staff.getStaffname()&&!"".equals(staff.getStaffname())){
			staff.setPinyin(PinYinUtils.getAllFirstLetter(staff.getStaffname()).toUpperCase());
		}
		if(null!=staffForm.getBirthdays()&&!"".equals(staffForm.getBirthdays())){
			staff.setBirthday(DateUtil.StringToDate_YMD(staffForm.getBirthdays()));
		}
		if(null!=staffForm.getWorkdates()&&!"".equals(staffForm.getWorkdates())){
			staff.setWorkdate(DateUtil.StringToDate_YMD(staffForm.getWorkdates()));
		}
		if(null!=staffForm.getIndates()&&!"".equals(staffForm.getIndates())){
			staff.setIndate(DateUtil.StringToDate_YMD(staffForm.getIndates()));
		}
		
		staff.setCreateDate(new Date());
		
		Boolean bool = this.staffServiceDao.addStaff(staff);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/staff.do?task=toAddStaff';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/staff.do?task=staffList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/staff.do?task=toAddStaff';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/staff.do?task=staffList';}</script>");
			return null;
		}
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
	public ActionForward deleteStaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffForm staffForm = (StaffForm) form;

		TStaff staff = new TStaff();
		staff.setId(new Long(staffForm.getId()));

		Boolean bool = this.staffServiceDao.deleteStaff(staff);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/staff.do?task=staffList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/staff.do?task=staffList';</script>");
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
	public ActionForward toUpdateStaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffForm staffForm = (StaffForm)form;
		String id = request.getParameter("id");
		TStaff staff = this.staffServiceDao.seachStaff(new Long(id));
		
		BeanUtils.copyProperties(staffForm, staff);
		if(null!=staff.getBirthday())
		staffForm.setBirthdays(DateUtil.DateToStringBy_YMD(staff.getBirthday()));
		if(null!=staff.getWorkdate())
		staffForm.setWorkdates(DateUtil.DateToStringBy_YMD(staff.getWorkdate()));
		if(null!=staff.getIndate())
		staffForm.setIndates(DateUtil.DateToStringBy_YMD(staff.getIndate()));
		
		List deptList = deptServiceDao.getDeptList();
		request.setAttribute("deptList", deptList);
		
		// 80
		List sonList = perDao.getSonPerList(PowerKey.KEY_STAFF);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/staff/updatestaff.jsp");
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
	public ActionForward updateStaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffForm staffForm = (StaffForm) form;
		TStaff staff = this.staffServiceDao.seachStaff(new Long(staffForm.getId()));
		BeanUtils.copyProperties(staff, staffForm);
		
		//设置拼音简码
		if(null==staff.getStaffname()&&!"".equals(staff.getStaffname())){
			staff.setPinyin(PinYinUtils.getAllFirstLetter(staff.getStaffname()).toUpperCase());
		}
		//设置3个时间
		if(null!=staffForm.getBirthdays()&&!"".equals(staffForm.getBirthdays())){
			staff.setBirthday(DateUtil.StringToDate_YMD(staffForm.getBirthdays()));
		}
		if(null!=staffForm.getWorkdates()&&!"".equals(staffForm.getWorkdates())){
			staff.setWorkdate(DateUtil.StringToDate_YMD(staffForm.getWorkdates()));
		}
		if(null!=staffForm.getIndates()&&!"".equals(staffForm.getIndates())){
			staff.setIndate(DateUtil.StringToDate_YMD(staffForm.getIndates()));
		}
		
		staff.setCreateDate(new Date());
		
		Boolean bool = false;
		try {
			bool = this.staffServiceDao.updateStaff(staff);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/staff.do?task=toUpdateStaff&id="
									+ staff.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/staff.do?task=staffList';}</script>");

		} else {
			response.getWriter().print("<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=toUpdateStaff&id='"
							+ staff.getId() + "';</script>");
		}
		return null;
	}

	public StaffServiceDao getStaffServiceDao() {
		return staffServiceDao;
	}

	public void setStaffServiceDao(StaffServiceDao staffServiceDao) {
		this.staffServiceDao = staffServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	public DeptServiceDao getDeptServiceDao() {
		return deptServiceDao;
	}

	public void setDeptServiceDao(DeptServiceDao deptServiceDao) {
		this.deptServiceDao = deptServiceDao;
	}
}