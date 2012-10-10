package com.crm.op.struts.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.po.TCardFee;
import com.crm.op.service.intf.CardFeeServiceDao;
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
		return new ActionForward("/admin/op/cardFee/cardFeelist.jsp");
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
	 * 跳转到修改i啊客户页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdatecardFee(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		CardFeeForm cardFeeForm = (CardFeeForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TCardFee cardFee = this.cardFeeServiceDao.getCardFeeByID(id);
		BeanUtils.copyProperties(cardFeeForm, cardFee);
		cardFeeForm.setCreate_Date(DateUtil.DateToStringBy_YMD(cardFee
				.getCreateDate()));

		request.setAttribute("cardFee", cardFee);

		return new ActionForward("/admin/op/cardFee/updatecardFee.jsp");
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
	public ActionForward deleteDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		CardFeeForm cardFeeForm = (CardFeeForm) form;
		TCardFee cardFee = new TCardFee();
		BeanUtils.copyProperties(cardFee, cardFeeForm);

		Boolean bool = this.cardFeeServiceDao.deleteCardFee(cardFee.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('会员删除成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/cardFee.do?task=cardFeeList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('删除删除失败!');location.href='"
							+ request.getContextPath()
							+ "/admin/dept.do?task=cardFeeList';</script>");
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

}
