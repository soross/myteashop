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

import com.crm.op.po.TOrder;
import com.crm.op.service.intf.RegFeeServiceDao;
import com.crm.op.service.intf.OrderServiceDao;
import com.crm.op.struts.form.OrderForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.tool.DateUtil;

public class OrderAction extends DispatchAction {
	private OrderServiceDao orderServiceDao;
	

	/**
	 * 会员列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward orderList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderForm orderForm = (OrderForm) form;
		TOrder order = new TOrder();
		BeanUtils.copyProperties(order, orderForm);

		Integer count = this.orderServiceDao.getOrderCount(order);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = null;
		if (count > 0) {
			list = this.orderServiceDao.getOrderList(order, pageUtil);
		}
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("orderList", list);

		return new ActionForward("/admin/op/order/orderlist.jsp");
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
	public ActionForward toAddOrder(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);

		// request.setAttribute("docList", list);

		return new ActionForward("/admin/op/order/addorder.jsp");
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
	public ActionForward toUpdateOrder(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderForm orderForm = (OrderForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TOrder order = this.orderServiceDao.getOrderByID(id);
		BeanUtils.copyProperties(orderForm, order);

		request.setAttribute("order", order);

		return new ActionForward("/admin/op/order/updateorder.jsp");
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
	public ActionForward addOrder(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderForm orderForm = (OrderForm) form;
		TOrder order = new TOrder();
		BeanUtils.copyProperties(order, orderForm);
		
		order.setOrderTime(DateUtil.StringToDate_YMDHMS(orderForm.getOrder()));
		order.setCreateDate(new Date());
		order.setState("新增");
		
		Boolean bool = this.orderServiceDao.addOrder(order);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('预约成功,是否继续新增预约?')){location.href='"
									+ request.getContextPath()
									+ "/admin/order.do?task=toAddOrder';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/order.do?task=orderList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('预约失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/order.do?task=toAddOrder';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/order.do?task=orderList';}</script>");
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
	public ActionForward deleteDept(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderForm orderForm = (OrderForm) form;
		TOrder order = new TOrder();
		BeanUtils.copyProperties(order, orderForm);

		Boolean bool = this.orderServiceDao.deleteOrder(order.getId());
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

	public OrderServiceDao getOrderServiceDao() {
		return orderServiceDao;
	}

	public void setOrderServiceDao(OrderServiceDao orderServiceDao) {
		this.orderServiceDao = orderServiceDao;
	}

}
