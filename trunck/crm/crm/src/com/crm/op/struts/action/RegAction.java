package com.crm.op.struts.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.po.TCustomer;
import com.crm.op.po.TRegister;
import com.crm.op.po.TRegisterFee;
import com.crm.op.service.intf.OrderServiceDao;
import com.crm.op.service.intf.RegFeeServiceDao;
import com.crm.op.service.intf.RegServiceDao;
import com.crm.op.struts.form.CustForm;
import com.crm.op.struts.form.RegForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;

public class RegAction extends DispatchAction {
	private RegServiceDao regServiceDao;
	private RegFeeServiceDao regFeeServiceDao;

	/**
	 * 列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward regList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		RegForm regForm = (RegForm) form;
		TRegister reg = new TRegister();
		BeanUtils.copyProperties(reg, regForm);

		Integer count = this.regServiceDao.getRegCount(reg);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.regServiceDao.getRegList(reg, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("regList", list);
		return new ActionForward("/admin/op/reg/reglist.jsp");
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
	public ActionForward toAddReg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);

		return new ActionForward("/admin/op/reg/addreg.jsp");
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
	public ActionForward toUpdateCust(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegForm regForm = (RegForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TRegister reg = this.regServiceDao.getRegByID(id);
		BeanUtils.copyProperties(regForm, reg);
		request.setAttribute("reg", reg);
		return new ActionForward("/admin/op/reg/updatereg.jsp");
	}

	/**
	 * 新增
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addReg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegForm regForm = (RegForm) form;
		TRegister reg = new TRegister();
		BeanUtils.copyProperties(reg, regForm);
		reg.setCreateDate(new Date());

		Boolean bool = this.regServiceDao.addReg(reg);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('挂号成功,是否继续操作挂号?')){location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddReg';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=regList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('挂号失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddReg';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=regList';}</script>");
		}
		return null;
	}

	/**
	 * 删除客户
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteReg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RegForm regForm = (RegForm) form;
		TRegister reg = new TRegister();
		BeanUtils.copyProperties(reg, regForm);

		Boolean bool = this.regServiceDao.deleteReg(reg.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('会员删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/cust.do?task=custList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('删除删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=custList';</script>");
		}
		return null;
	}

	/**
	 * 划价
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward regFeeListByPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegForm regForm = (RegForm) form;
		TRegisterFee fee = new TRegisterFee();
		BeanUtils.copyProperties(fee, regForm);
		fee.setFeeType(PowerKey.REG_FEE_PRICE);

		Integer count = this.regFeeServiceDao.getRegFeeCount(fee);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.regFeeServiceDao.getRegFeeList(fee, pageUtil);

		request.setAttribute("regFeeList", list);
		return new ActionForward("/admin/op/regfee/pricelist.jsp");
	}

	/**
	 * 收费
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward regFeeListByCharge(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegForm regForm = (RegForm) form;
		TRegisterFee fee = new TRegisterFee();
		BeanUtils.copyProperties(fee, regForm);
		fee.setFeeType(PowerKey.REG_FEE_CHARGE);

		Integer count = this.regFeeServiceDao.getRegFeeCount(fee);

		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.regFeeServiceDao.getRegFeeList(fee, pageUtil);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("regFeeList", list);
		return new ActionForward("/admin/op/regfee/chargelist.jsp");
	}

	/**
	 * 新增收费
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward toAddRegFeeByCharge(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegForm regForm = (RegForm) form;
		// request.setAttribute("regid", regForm.getId());
		if (null != regForm && null != regForm.getId()) {
			TRegisterFee rf = this.regFeeServiceDao.getRegFeeByID(new Long(
					regForm.getId()));

			if (null != rf
					&& !PowerKey.REG_FEE_CHARGE.equalsIgnoreCase(rf
							.getFeeType())) {
				return new ActionForward("/admin/op/regfee/addcharge.jsp");
			} else {
				response.getWriter().write(
						"<script>alert('该划价已收费!');history.back();</script>");
				return null;
			}
		}else{
			return new ActionForward("/admin/reg.do?task=regFeeListByCharge");
		}
	}

	/**
	 * 新增收费
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward addRegFeeByCharge(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegForm regForm = (RegForm) form;
		TRegisterFee fee = this.regFeeServiceDao.getRegFeeByID(new Long(regForm
				.getId()));
		// BeanUtils.copyProperties(fee, regForm);
		fee.setFeeDate(new Date());
		fee.setFeeStaff(regForm.getFeeStaff());
		fee.setFeeType(PowerKey.REG_FEE_CHARGE);
		try {
			this.regFeeServiceDao.updateRegFee(fee);
			response
					.getWriter()
					.write(
							"<script>if(confirm('操作成功,是否继续添加?')){location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddRegFeeByCharge';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=regFeeListByCharge';}</script>");
		} catch (Exception e) {
			e.printStackTrace();
			response
					.getWriter()
					.write(
							"<script>alert('操作失败,请重试!');location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddRegFeeByCharge';</script>");
		}
		return null;// ("/admin/op/regfee/addcharge.jsp");
	}

	/**
	 * 新增划价
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward toAddRegFeeByPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegForm regForm = (RegForm) form;
		if(null!=regForm && null!=regForm.getId()){
		List list = this.regFeeServiceDao.getRegFeeByOrderID(regForm.getId());
		if (null != list && list.size() > 0) {
			response.getWriter().write(
					"<script>alert('该挂号已划价!');history.back();</script>");
			return null;
		} else {
			return new ActionForward("/admin/op/regfee/addprice.jsp");
		}
		}else{
			return new ActionForward("/admin/reg.do?task=regFeeListByPrice");
		}
	}

	/**
	 * 新增划价
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward addRegFeeByPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegForm regForm = (RegForm) form;
		TRegisterFee fee = new TRegisterFee();
		BeanUtils.copyProperties(fee, regForm);
		fee.setCreateDate(new Date());
		fee.setOrderId(regForm.getId());
		try {
			this.regFeeServiceDao.addRegFee(fee);
			response
					.getWriter()
					.write(
							"<script>if(confirm('操作成功,是否继续添加?')){location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddRegFeeByPrice';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=regFeeListByPrice';}</script>");
		} catch (Exception e) {
			e.printStackTrace();
			response
					.getWriter()
					.write(
							"<script>alert('操作失败,请重试!');location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddRegFeeByPrice';</script>");
		}
		return null;// new ActionForward("/admin/op/regfee/addprice.jsp");
	}

	public RegServiceDao getRegServiceDao() {
		return regServiceDao;
	}

	public void setRegServiceDao(RegServiceDao regServiceDao) {
		this.regServiceDao = regServiceDao;
	}

	public RegFeeServiceDao getRegFeeServiceDao() {
		return regFeeServiceDao;
	}

	public void setRegFeeServiceDao(RegFeeServiceDao regFeeServiceDao) {
		this.regFeeServiceDao = regFeeServiceDao;
	}

}
