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
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;

public class RegAction extends DispatchAction {
	private RegServiceDao regServiceDao;
	private RegFeeServiceDao regFeeServiceDao;

	/**
	 * �б�
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
	 * ��ת�������ͻ�ҳ��
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
	 * ��ת���޸�ҳ��
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
	 * ����
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
							"<script>if(confirm('�Һųɹ�,�Ƿ���������Һ�?')){location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddReg';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=regList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('�Һ�ʧ��,�Ƿ�����?')){location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=toAddReg';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/reg.do?task=regList';}</script>");
		}
		return null;
	}

	/**
	 * ɾ���ͻ�
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
					"<script>alert('��Աɾ���ɹ�!');location.href='"
							+ request.getContextPath()
							+ "/admin/cust.do?task=custList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('ɾ��ɾ��ʧ��!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=custList';</script>");
		}
		return null;
	}
	
	/**
	 * ����
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

		Integer count = this.regFeeServiceDao.getRegFeeCount(fee);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.regFeeServiceDao.getRegFeeList(fee, pageUtil);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("regFeeList", list);
		return new ActionForward("/admin/op/regfee/pricelist.jsp");
	}
	
	
	/**
	 * �շ�
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

		Integer count = this.regFeeServiceDao.getRegFeeCount(fee);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.regFeeServiceDao.getRegFeeList(fee, pageUtil);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("regFeeList", list);
		return new ActionForward("/admin/op/regfee/chargelist.jsp");
	}
	
	/**
	 * �����շ�
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
		TRegisterFee fee = new TRegisterFee();
		BeanUtils.copyProperties(fee, regForm);

		return new ActionForward("/admin/op/regfee/addcharge.jsp");
	}
	
	/**
	 * ��������
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
		TRegisterFee fee = new TRegisterFee();
		BeanUtils.copyProperties(fee, regForm);
		return new ActionForward("/admin/op/regfee/addprice.jsp");
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
