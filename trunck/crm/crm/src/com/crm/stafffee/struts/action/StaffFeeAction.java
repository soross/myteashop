package com.crm.stafffee.struts.action;

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
import com.crm.pub.po.TUser;
import com.crm.stafffee.po.TStaffFee;
import com.crm.stafffee.service.intf.StaffFeeServiceDao;
import com.crm.stafffee.struts.form.StaffFeeForm;

public class StaffFeeAction extends DispatchAction {
	private StaffFeeServiceDao StaffFeeServiceDao;
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
	public ActionForward staffFeeList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		StaffFeeForm StaffFeeForm = (StaffFeeForm) form;
		TStaffFee StaffFee = new TStaffFee();
		BeanUtils.copyProperties(StaffFee, StaffFeeForm);

		Integer count = this.StaffFeeServiceDao.getStaffFeeCount(StaffFee);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.StaffFeeServiceDao.getStaffFeeList(StaffFee, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("StaffFeeList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_STAFFFEE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/stafffee/stafffeelist.jsp");
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
	public ActionForward toAddStaffFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);
		List sonList = perDao.getSonPerList(PowerKey.KEY_STAFFFEE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/stafffee/addstafffee.jsp");
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
	public ActionForward toUpdateStaffFee(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		StaffFeeForm StaffFeeForm = (StaffFeeForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TStaffFee StaffFee = this.StaffFeeServiceDao.getStaffFeeByID(id);
		BeanUtils.copyProperties(StaffFeeForm, StaffFee);

		request.setAttribute("StaffFee", StaffFee);

		List sonList = perDao.getSonPerList(PowerKey.KEY_STAFFFEE);
		request.setAttribute("sonPowerByMenu", sonList);
		return new ActionForward("/admin/stafffee/updatestafffee.jsp");
	}

	public ActionForward addStaffFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffFeeForm StaffFeeForm = (StaffFeeForm) form;
		TStaffFee StaffFee = new TStaffFee();
		BeanUtils.copyProperties(StaffFee, StaffFeeForm);
		StaffFee.setCreateDate(new Date());
		StaffFee.setState("0");
		StaffFee.setCreateStaff(request.getParameter("staff").toString());

		Boolean bool = this.StaffFeeServiceDao.addStaffFee(StaffFee);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('新增成功,是否继续新增?')){location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=toAddStaffFee';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('新增失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=toAddStaffFee';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';}</script>");
		}
		return null;
	}

	public ActionForward payStaffFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffFeeForm StaffFeeForm = (StaffFeeForm) form;
		TStaffFee StaffFee = this.StaffFeeServiceDao
				.getStaffFeeByID(StaffFeeForm.getId());

		TUser user = (TUser) request.getSession().getAttribute("user");
		StaffFee.setCreateStaff(user.getUserid());
		StaffFee.setCreateDate(new Date());
		StaffFee.setState("1");

		Boolean bool = this.StaffFeeServiceDao.updateStaffFee(StaffFee);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>alert('支付成功!');location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>alert('支付失败,请重试!');location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';</script>");
		}
		return null;
	}

	public ActionForward updateStaffFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffFeeForm StaffFeeForm = (StaffFeeForm) form;
		TStaffFee StaffFee = this.StaffFeeServiceDao
				.getStaffFeeByID(StaffFeeForm.getId());
		StaffFee.setCreateDate(new Date());
		StaffFee.setCreateStaff(request.getParameter("staff").toString());
		StaffFee.setFee(StaffFeeForm.getFee());
		StaffFee.setFeeDesc(StaffFeeForm.getFeeDesc());
		StaffFee.setStaffid(StaffFeeForm.getStaffid());
		StaffFee.setStaffname(StaffFeeForm.getStaffname());
		Boolean bool = this.StaffFeeServiceDao.updateStaffFee(StaffFee);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改成功,是否继续修改?')){location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=toUpdateStaffFee&id="
									+ StaffFeeForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=toUpdateStaffFee&id="
									+ StaffFeeForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';}</script>");
		}
		return null;
	}

	public ActionForward deleteStaffFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		StaffFeeForm StaffFeeForm = (StaffFeeForm) form;
		Boolean bool = this.StaffFeeServiceDao.deleteStaffFee(StaffFeeForm
				.getId());
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>alert('删除成功!');location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>alert('删除失败!');location.href='"
									+ request.getContextPath()
									+ "/admin/stafffee.do?task=staffFeeList';</script>");
		}
		return null;
	}

	public StaffFeeServiceDao getStaffFeeServiceDao() {
		return StaffFeeServiceDao;
	}

	public void setStaffFeeServiceDao(StaffFeeServiceDao StaffFeeServiceDao) {
		this.StaffFeeServiceDao = StaffFeeServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}
