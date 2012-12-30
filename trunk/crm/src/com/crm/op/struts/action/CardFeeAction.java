package com.crm.op.struts.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.po.TCardFee;
import com.crm.op.po.TCustomer;
import com.crm.op.service.intf.CardFeeServiceDao;
import com.crm.op.service.intf.CustServiceDao;
import com.crm.op.struts.form.CardFeeForm;
import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.struts.form.DeptForm;
import com.crm.tool.DateUtil;

public class CardFeeAction extends DispatchAction {
	private CardFeeServiceDao cardFeeServiceDao;
	private CustServiceDao custServiceDao;
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
	public ActionForward cardFeeList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CardFeeForm cardFeeForm = (CardFeeForm) form;
		TCardFee cardFee = new TCardFee();
		BeanUtils.copyProperties(cardFee, cardFeeForm);

		Integer count = this.cardFeeServiceDao.getCardFeeCount(cardFee);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.cardFeeServiceDao.getCardFeeList(cardFee, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("cardFeeList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_FILE_CARD_FEE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/op/cardfee/cardfeelist.jsp");
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
	public ActionForward toAddCardFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 81
		List sonList = perDao.getSonPerList(PowerKey.KEY_FILE_CARD_FEE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/op/cardfee/addcardfee.jsp");
	}

	/**
	 * 查询cust列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward queryCustData(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String username = request.getParameter("username");
		String code = request.getParameter("code");
		TCustomer cust = new TCustomer();
		cust.setUsername(username);
		cust.setCode(code);
		List list = custServiceDao.getCustList(cust, null);
		StringBuffer sbf = new StringBuffer();
		for (int i = 0; i < list.size(); i++) {
			TCustomer customer = (TCustomer) list.get(i);
			sbf
					.append("<tr><td><input type='radio' id='s_custID' name='s_custID' value='"
							+ customer.getId()
							+ ","
							+ customer.getCode()
							+ ","
							+ customer.getBalance() + "'></td>");
			sbf.append("<td>" + customer.getCode() + "</td>");
			sbf.append("<td>" + customer.getUsername() + "</td>");
			sbf.append("<td>" + customer.getGarden() + "</td>");
			sbf.append("<td>" + customer.getIdCode() + "</td></tr>");
		}
		// sbf.append("<tr><td>11</td><td>22</td><td>33</td><td>44</td><td>55</td></tr>");
		response.getWriter().write(sbf.toString());
		return null;
	}

	/**
	 * 新增
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward addCardFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CardFeeForm cff = (CardFeeForm) form;
		TCardFee cardFee = new TCardFee();
		BeanUtils.copyProperties(cardFee, cff);
		cardFee.setCreateDate(new Date());
		cardFee.setBalance(cff.getBalance() + cff.getMoney());// 余额等于当前余额+预存金额

		try {
			this.cardFeeServiceDao.addCardFee(cardFee);
			if (null != cff.getIsprint()
					&& "1".equalsIgnoreCase(cff.getIsprint())) {
				response
						.getWriter()
						.write(
								"<script>alert('预存成功,请打印!');location.href='"
										+ request.getContextPath()
										+ "/admin/cardfee.do?task=toPrintCardFee';</script>");
			} else {
				response
						.getWriter()
						.write(
								"<script>if(confirm('预存成功,是否继续会卡预存操作!')){location.href='"
										+ request.getContextPath()
										+ "/admin/cardfee.do?task=toAddCardFee';}else{location.href='"
										+ request.getContextPath()
										+ "/admin/cardfee.do?task=cardFeeList';}</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write(
					"<script>alert('预存失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=toAddCardFee';</script>");
		}
		return null;
	}

	/**
	 * 跳转到打印页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toPrintCardFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		List sonList = perDao.getSonPerList(PowerKey.KEY_FILE_CARD_FEE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/op/cardfee/print.jsp");
	}

	/**
	 * 跳转到修改i啊客户页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateCardFee(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		CardFeeForm cardFeeForm = (CardFeeForm) form;
		Long id = Long.valueOf(request.getParameter("id"));
		TCardFee cardFee = this.cardFeeServiceDao.getCardFeeByID(id);
		BeanUtils.copyProperties(cardFeeForm, cardFee);

		cardFeeForm.setCreate_Date(DateUtil.DateToStringBy_YMD(cardFee
				.getCreateDate()));

		request.setAttribute("cardFee", cardFee);

		List sonList = perDao.getSonPerList(PowerKey.KEY_FILE_CARD_FEE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/op/cardfee/updatecardfee.jsp");
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
	public ActionForward updateCardFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CardFeeForm cardFeeForm = (CardFeeForm) form;
		TCardFee cardFee = this.cardFeeServiceDao.getCardFeeByID(cardFeeForm
				.getId());
		cardFee.setCreatestaff(cardFeeForm.getCreatestaff());
		cardFee.setCreateDate(new Date());
		// 余额=原来余额-原来金额+预存金额
		cardFee.setBalance(cardFee.getBalance() - cardFee.getMoney()
				+ cardFeeForm.getMoney());
		cardFee.setMoney(cardFeeForm.getMoney());
		cardFee.setRemark(cardFeeForm.getRemark());
		boolean bool = this.cardFeeServiceDao.updateCardFee(cardFee);
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('更新成功,是否继续更新?')){location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=toUpdateCardFee&id="
							+ cardFeeForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('更新失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=toUpdateCardFee&id="
							+ cardFeeForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';}</script>");
		}
		return null;
	}

	/**
	 * 删除
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteCardFee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CardFeeForm cardFeeForm = (CardFeeForm) form;
		TCardFee cardFee = new TCardFee();
		BeanUtils.copyProperties(cardFee, cardFeeForm);
		Boolean bool = this.cardFeeServiceDao.deleteCardFee(cardFee.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';</script>");
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
	public ActionForward toUpdateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);

		// TDept info = this.deptServiceDao.getDeptByID(dept.getId());
		// request.setAttribute("deptInfo", info);

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// /List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);

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
	public ActionForward updateDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);

		// boolean bool = this.deptServiceDao.updateDept(dept);
		boolean bool = false;
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新成功,是否继续更新?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="
							+ dept.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('科室部门更新失败,是否重试?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="
							+ dept.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		}

		return null;
	}

	public CardFeeServiceDao getCardFeeServiceDao() {
		return cardFeeServiceDao;
	}

	public void setCardFeeServiceDao(CardFeeServiceDao cardFeeServiceDao) {
		this.cardFeeServiceDao = cardFeeServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	public CustServiceDao getCustServiceDao() {
		return custServiceDao;
	}

	public void setCustServiceDao(CustServiceDao custServiceDao) {
		this.custServiceDao = custServiceDao;
	}

}
