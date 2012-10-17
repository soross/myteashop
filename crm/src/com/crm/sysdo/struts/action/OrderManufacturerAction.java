package com.crm.sysdo.struts.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.crm.sysdo.po.TOrderManufacturer;
import com.crm.sysdo.service.inf.OrderManufacturerServiceDao;
import com.crm.sysdo.struts.form.OrderManufacturerForm;

public class OrderManufacturerAction extends DispatchAction{
	/*
	 * Generated Methods
	 */
	private OrderManufacturerServiceDao orderManuServiceDao;
	private Permission perDao;
	/**
	 * ��ת���������ҽ���
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddOrderManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 32 ��ɫ
		List sonList = perDao.getSonPerList(PowerKey.KEY_ORDERMANUFACTURER);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/ordermanu/addordermanu.jsp");
	}

	/**
	 * �����������
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addOrderManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderManufacturerForm orderManuForm = (OrderManufacturerForm) form;
		TOrderManufacturer tOrderManufacturer = new TOrderManufacturer();
		BeanUtils.copyProperties(tOrderManufacturer, orderManuForm);


		Boolean bool = this.orderManuServiceDao.addOrderManufacturer(tOrderManufacturer);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('��ӳɹ����Ƿ������ӣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/ordermanu.do?task=toAddOrderManu';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/ordermanu.do?task=OrderManuList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('���ʧ�ܣ��Ƿ����ԣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=toAddOrderManu';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/manu.do?task=OrderManuList';}</script>");
			return null;
		}
	}

	/**
	 * �����ֵ��б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward OrderManuList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderManufacturerForm orderManuForm = (OrderManufacturerForm) form;
		TOrderManufacturer TOrderManufacturer = new TOrderManufacturer();
		Map<String, Object> map = new HashMap<String, Object>();
		BeanUtils.copyProperties(TOrderManufacturer, orderManuForm);
		PageUtil pageUtil = new PageUtil(request, this.orderManuServiceDao
				.getCount(TOrderManufacturer, map), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);
		List list = this.orderManuServiceDao.getOrderManufacturerList(pageUtil, TOrderManufacturer, map);
		request.setAttribute("ordermanuList", list);

		// 32 ��ɫ
		List sl = perDao.getSonPerList(PowerKey.KEY_ORDERMANUFACTURER);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/ordermanu/ordermanulist.jsp");
	}

	/**
	 * ɾ����������
	 * 
	 * ��ͬ����һ��ɾ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteOrderManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderManufacturerForm orderManuForm = (OrderManufacturerForm) form;

		TOrderManufacturer OrderManu = new TOrderManufacturer();
		OrderManu.setId(new Long(orderManuForm.getId()));

		Boolean bool = this.orderManuServiceDao.deleteOrderManufacturer(OrderManu);

		if (bool) {
			response.getWriter().print(
					"<script> alert('ɾ���ɹ�!�����ض��������б�!');location.href='"
							+ request.getContextPath()
							+ "/admin/ordermanu.do?task=OrderManuList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('ɾ��ʧ��,������!');location.href='"
							+ request.getContextPath()
							+ "/admin/ordermanu.do?task=OrderManuList';</script>");
		}
		return null;
	}

	/**
	 * ��ת���޸���������ҳ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateOrderManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderManufacturerForm orderManuForm = (OrderManufacturerForm) form;
		String id = request.getParameter("id");
		TOrderManufacturer OrderManu = this.orderManuServiceDao.getOrderManufacturerById(Long.parseLong(id));
		BeanUtils.copyProperties(orderManuForm, OrderManu);
		request.setAttribute("OrderManu", OrderManu);
		// 32 ��ɫ
		List sonList = perDao.getSonPerList(PowerKey.KEY_ORDERMANUFACTURER);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/ordermanu/updateordermanu.jsp");
	}

	/**
	 * �޸���������
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateOrderManu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		OrderManufacturerForm orderManuForm = (OrderManufacturerForm) form;
		String id = request.getParameter("id");
		TOrderManufacturer OrderManu1 = this.orderManuServiceDao.getOrderManufacturerById(new Long(id));
		TOrderManufacturer OrderManu = new TOrderManufacturer();
		BeanUtils.copyProperties(OrderManu, orderManuForm);
		OrderManu.setCreateDate(OrderManu1.getCreateDate());
		Boolean bool = false;
		try {
			bool = this.orderManuServiceDao.updateOrderManufacturer(OrderManu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('���������޸ĳɹ�,�Ƿ�����޸�!')){location.href='"
									+ request.getContextPath()
									+ "/admin/ordermanu.do?task=toUpdateOrderManu&id="
									+ OrderManu.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/ordermanu.do?task=OrderManuList';}</script>");

		} else {
			response.getWriter().print("<script>alert('���������޸�ʧ��,������!');location.href='"
							+ request.getContextPath()
							+ "/admin/ordermanu.do?task=toUpdateOrderManu&id='"
							+ OrderManu.getId() + "';</script>");
		}
		return null;
	}
	
	public Permission getPerDao() {
		return perDao;
	}
	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	public OrderManufacturerServiceDao getOrderManuServiceDao() {
		return orderManuServiceDao;
	}

	public void setOrderManuServiceDao(
			OrderManufacturerServiceDao orderManuServiceDao) {
		this.orderManuServiceDao = orderManuServiceDao;
	}


}
