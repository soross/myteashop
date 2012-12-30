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
	 * ��Ա�б�
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
	 * ��ת�������ͻ�ҳ��
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
	 * ��ѯcust�б�
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
	 * ����
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
		cardFee.setBalance(cff.getBalance() + cff.getMoney());// �����ڵ�ǰ���+Ԥ����

		try {
			this.cardFeeServiceDao.addCardFee(cardFee);
			if (null != cff.getIsprint()
					&& "1".equalsIgnoreCase(cff.getIsprint())) {
				response
						.getWriter()
						.write(
								"<script>alert('Ԥ��ɹ�,���ӡ!');location.href='"
										+ request.getContextPath()
										+ "/admin/cardfee.do?task=toPrintCardFee';</script>");
			} else {
				response
						.getWriter()
						.write(
								"<script>if(confirm('Ԥ��ɹ�,�Ƿ�����ῨԤ�����!')){location.href='"
										+ request.getContextPath()
										+ "/admin/cardfee.do?task=toAddCardFee';}else{location.href='"
										+ request.getContextPath()
										+ "/admin/cardfee.do?task=cardFeeList';}</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().write(
					"<script>alert('Ԥ��ʧ��,������!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=toAddCardFee';</script>");
		}
		return null;
	}

	/**
	 * ��ת����ӡҳ��
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
	 * ��ת���޸�i���ͻ�ҳ��
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
	 * �޸Ĳ���
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
		// ���=ԭ�����-ԭ�����+Ԥ����
		cardFee.setBalance(cardFee.getBalance() - cardFee.getMoney()
				+ cardFeeForm.getMoney());
		cardFee.setMoney(cardFeeForm.getMoney());
		cardFee.setRemark(cardFeeForm.getRemark());
		boolean bool = this.cardFeeServiceDao.updateCardFee(cardFee);
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('���³ɹ�,�Ƿ��������?')){location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=toUpdateCardFee&id="
							+ cardFeeForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('����ʧ��,�Ƿ�����?')){location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=toUpdateCardFee&id="
							+ cardFeeForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';}</script>");
		}
		return null;
	}

	/**
	 * ɾ��
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
					"<script>alert('ɾ���ɹ�!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('ɾ��ʧ��!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardfee.do?task=cardFeeList';</script>");
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
	 * �޸Ĳ���
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
					"<script>if(confirm('���Ҳ��Ÿ��³ɹ�,�Ƿ��������?')){location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=toUpdateDept&id="
							+ dept.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=deptList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('���Ҳ��Ÿ���ʧ��,�Ƿ�����?')){location.href='"
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
