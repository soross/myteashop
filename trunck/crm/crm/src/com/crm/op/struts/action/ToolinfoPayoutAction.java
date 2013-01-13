package com.crm.op.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.op.po.TToolinfoPayout;
import com.crm.op.service.intf.ToolinfoPayoutServiceDao;
import com.crm.op.struts.form.ToolinfoPayoutForm;
import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.GlobVar;
import com.crm.pub.PowerKey;

public class ToolinfoPayoutAction extends DispatchAction {
	private ToolinfoPayoutServiceDao ToolinfoPayoutServiceDao;
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
	public ActionForward toolinfoPayoutList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		Integer count = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutCount(ToolinfoPayout);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.ToolinfoPayoutServiceDao.getToolinfoPayoutList(
				ToolinfoPayout, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("ToolinfoPayoutList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOPAYOUT);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward(
				"/admin/op/toolinfopayout/toolinfopayoutlist.jsp");
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
	public ActionForward toAddToolinfoPayout(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);
		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOPAYOUT);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward(
				"/admin/op/toolinfopayout/addtoolinfopayout.jsp");
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
	public ActionForward toUpdateToolinfoPayout(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TToolinfoPayout ToolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(id);
		BeanUtils.copyProperties(ToolinfoPayoutForm, ToolinfoPayout);

		request.setAttribute("ToolinfoPayout", ToolinfoPayout);

		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOPAYOUT);
		request.setAttribute("sonPowerByMenu", sonList);
		return new ActionForward(
				"/admin/op/toolinfopayout/updatetoolinfopayout.jsp");
	}

	public ActionForward addToolinfoPayout(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		Boolean bool = this.ToolinfoPayoutServiceDao
				.addToolinfoPayout(ToolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('新增成功,是否继续新增?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toAddToolinfoPayout';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('新增失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toAddToolinfoPayout';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';}</script>");
		}
		return null;
	}

	public ActionForward updateToolinfoPayout(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(ToolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改成功,是否继续修改?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toUpdateToolinfoPayout&id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toUpdateToolinfoPayout&id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';}</script>");
		}
		return null;
	}

	public ActionForward deleteToolinfoPayout(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		Boolean bool = this.ToolinfoPayoutServiceDao
				.deleteToolinfoPayout(ToolinfoPayoutForm.getId());
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>alert('删除成功!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>alert('删除失败!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';</script>");
		}
		return null;
	}

	public ActionForward toAddToolinfoChargingPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TToolinfoPayout ToolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(id);
		if (null != ToolinfoPayout.getChargingprice()
				&& null != ToolinfoPayout.getReturnnum()) {
			response
					.getWriter()
					.write(
							"<script>alert('改记录已划价!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';</script>");
			return null;
		} else {
			BeanUtils.copyProperties(ToolinfoPayoutForm, ToolinfoPayout);
			request.setAttribute("ToolinfoPayout", ToolinfoPayout);
			List sonList = perDao
					.getSonPerList(PowerKey.KEY_TOOLINFOCHARGINGPRICE);
			request.setAttribute("sonPowerByMenu", sonList);
			return new ActionForward(
					"/admin/op/toolinfopayout/addtoolinfochargingprice.jsp");
		}

	}

	public ActionForward toUpdateToolinfoChargingPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TToolinfoPayout ToolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(id);
		BeanUtils.copyProperties(ToolinfoPayoutForm, ToolinfoPayout);

		request.setAttribute("ToolinfoPayout", ToolinfoPayout);

		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOCHARGINGPRICE);
		request.setAttribute("sonPowerByMenu", sonList);
		return new ActionForward(
				"/admin/op/toolinfopayout/updatetoolinfochargingprice.jsp");

	}

	public ActionForward toolinfoChargingPriceList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		Integer count = this.ToolinfoPayoutServiceDao
				.getToolinfoChargingPriceCount(ToolinfoPayout);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);

		List list = this.ToolinfoPayoutServiceDao.getToolinfoChargingPriceList(
				ToolinfoPayout, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("ToolinfoPayoutList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOCHARGINGPRICE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward(
				"/admin/op/toolinfopayout/toolinfochargingpricelist.jsp");
	}

	public ActionForward addToolinfoChargingPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		ToolinfoPayout.setChargingstaff(request.getParameter("chargingstaff"));

		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(ToolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('划价成功,是否继续划价?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayoutList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('划价失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toAddToolinfoChargingPrice&id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';}</script>");
		}
		return null;
	}

	public ActionForward updateToolinfoChargingPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		ToolinfoPayout.setChargingstaff(request.getParameter("chargingstaff"));

		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(ToolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改成功,是否继续修改?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toUpdateToolinfoChargingPrice?id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toAddToolinfoChargingPrice&id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';}</script>");
		}
		return null;
	}

	public ActionForward deleteToolinfoChargingPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout toolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(ToolinfoPayoutForm.getId());
		toolinfoPayout.setChargingprice(null);
		toolinfoPayout.setChargingstaff(null);
		toolinfoPayout.setReturnnum(null);
		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(toolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>alert('删除成功!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>alert('删除失败!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';</script>");
		}
		return null;
	}

	public ActionForward toAddToolinfoPayPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TToolinfoPayout ToolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(id);

		if (null != ToolinfoPayout.getPayprice()) {
			response
					.getWriter()
					.write(
							"<script>alert('改记录已付款!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';</script>");
			return null;
		} else {
			BeanUtils.copyProperties(ToolinfoPayoutForm, ToolinfoPayout);

			request.setAttribute("ToolinfoPayout", ToolinfoPayout);

			List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOPAYPRICE);
			request.setAttribute("sonPowerByMenu", sonList);
			return new ActionForward(
					"/admin/op/toolinfopayout/addtoolinfopayprice.jsp");
		}

	}

	public ActionForward toUpdateToolinfoPayPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TToolinfoPayout ToolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(id);
		BeanUtils.copyProperties(ToolinfoPayoutForm, ToolinfoPayout);

		request.setAttribute("ToolinfoPayout", ToolinfoPayout);

		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOPAYPRICE);
		request.setAttribute("sonPowerByMenu", sonList);
		return new ActionForward(
				"/admin/op/toolinfopayout/updatetoolinfopayprice.jsp");

	}

	public ActionForward toolinfoPayPriceList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);

		Integer count = this.ToolinfoPayoutServiceDao
				.getToolinfoPayPriceCount(ToolinfoPayout);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.ToolinfoPayoutServiceDao.getToolinfoPayPriceList(
				ToolinfoPayout, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("ToolinfoPayoutList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_TOOLINFOPAYPRICE);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward(
				"/admin/op/toolinfopayout/toolinfopaypricelist.jsp");
	}

	public ActionForward addToolinfoPayPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);
		ToolinfoPayout.setPaystaff(request.getParameter("paystaff"));
		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(ToolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('付款成功,是否继续付款?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('付款失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toAddToolinfoPayPrice&id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';}</script>");
		}
		return null;
	}

	public ActionForward deleteToolinfoPayPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;
		TToolinfoPayout toolinfoPayout = this.ToolinfoPayoutServiceDao
				.getToolinfoPayoutByID(ToolinfoPayoutForm.getId());
		toolinfoPayout.setPayprice(null);
		toolinfoPayout.setPaystaff(null);
		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(toolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>alert('删除成功!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>alert('删除失败!');location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';</script>");
		}
		return null;
	}

	public ActionForward updateToolinfoPayPrice(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ToolinfoPayoutForm ToolinfoPayoutForm = (ToolinfoPayoutForm) form;

		TToolinfoPayout ToolinfoPayout = new TToolinfoPayout();
		BeanUtils.copyProperties(ToolinfoPayout, ToolinfoPayoutForm);
		ToolinfoPayout.setPaystaff(request.getParameter("paystaff"));
		Boolean bool = this.ToolinfoPayoutServiceDao
				.updateToolinfoPayout(ToolinfoPayout);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改成功,是否继续修改?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoChargingPriceList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('修改失败,是否重试?')){location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toAddToolinfoPayPrice&id="
									+ ToolinfoPayoutForm.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/toolinfoPayout.do?task=toolinfoPayPriceList';}</script>");
		}
		return null;
	}

	public ToolinfoPayoutServiceDao getToolinfoPayoutServiceDao() {
		return ToolinfoPayoutServiceDao;
	}

	public void setToolinfoPayoutServiceDao(
			ToolinfoPayoutServiceDao ToolinfoPayoutServiceDao) {
		this.ToolinfoPayoutServiceDao = ToolinfoPayoutServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}
