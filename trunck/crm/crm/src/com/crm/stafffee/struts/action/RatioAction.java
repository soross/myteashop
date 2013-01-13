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
import com.crm.stafffee.po.TStaffGetfee;
import com.crm.stafffee.service.intf.RatioServiceDao;
import com.crm.stafffee.struts.form.RatioForm;

public class RatioAction extends DispatchAction {
	private RatioServiceDao RatioServiceDao;
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
	public ActionForward ratioList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		RatioForm RatioForm = (RatioForm) form;
		TStaffGetfee Ratio = new TStaffGetfee();
		BeanUtils.copyProperties(Ratio, RatioForm);

		Integer count = this.RatioServiceDao.getRatioCount(Ratio);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TWENTY_DATA);
		List list = this.RatioServiceDao.getRatioList(Ratio, pageUtil);

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("RatioList", list);

		List sonList = perDao.getSonPerList(PowerKey.KEY_RATIO);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/stafffee/ratio/ratiolist.jsp");
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
	public ActionForward toAddRatio(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// Integer count = this.deptServiceDao.getDeptCount();
		// PageUtil pageUtil = new PageUtil(request, count, count);
		// List list = this.deptServiceDao.getDeptList(pageUtil);
		// request.setAttribute("deptList", list);
		List sonList = perDao.getSonPerList(PowerKey.KEY_RATIO);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/stafffee/ratio/addratio.jsp");
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
	public ActionForward toUpdateRatio(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RatioForm RatioForm = (RatioForm) form;

		Long id = Long.valueOf(request.getParameter("id"));
		TStaffGetfee Ratio = this.RatioServiceDao.getRatioByID(id);
		BeanUtils.copyProperties(RatioForm, Ratio);

		request.setAttribute("Ratio", Ratio);

		List sonList = perDao.getSonPerList(PowerKey.KEY_RATIO);
		request.setAttribute("sonPowerByMenu", sonList);
		return new ActionForward("/admin/stafffee/ratio/updateratio.jsp");
	}

	public ActionForward addRatio(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RatioForm RatioForm = (RatioForm) form;
		TStaffGetfee Ratio = new TStaffGetfee();
		BeanUtils.copyProperties(Ratio, RatioForm);
		Ratio.setCreateDate(new Date());
		Ratio.setState("0");
		Ratio.setCreateStaff(request.getParameter("staff").toString());

		Boolean bool = this.RatioServiceDao.addRatio(Ratio);
		if (bool) {
			response
					.getWriter()
					.write(
							"<script>if(confirm('�����ɹ�,�Ƿ��������?')){location.href='"
									+ request.getContextPath()
									+ "/admin/ratio.do?task=toAddRatio';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/ratio.do?task=ratioList';}</script>");
		} else {
			response
					.getWriter()
					.write(
							"<script>if(confirm('����ʧ��,�Ƿ�����?')){location.href='"
									+ request.getContextPath()
									+ "/admin/ratio.do?task=toAddRatio';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/ratio.do?task=ratioList';}</script>");
		}
		return null;
	}

	public ActionForward updateRatio(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RatioForm RatioForm = (RatioForm) form;
		TStaffGetfee Ratio = this.RatioServiceDao.getRatioByID(RatioForm
				.getId());
		Ratio.setCreateDate(new Date());
		Ratio.setCreateStaff(request.getParameter("staff").toString());
		Ratio.setRatio(RatioForm.getRatio());
		Ratio.setStaffid(RatioForm.getStaffid());
		Ratio.setStaffname(RatioForm.getStaffname());
		Boolean bool = this.RatioServiceDao.updateRatio(Ratio);
		if (bool) {
			response.getWriter().write(
					"<script>if(confirm('�޸ĳɹ�,�Ƿ�����޸�?')){location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=toUpdateRatio&id="
							+ RatioForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=ratioList';}</script>");
		} else {
			response.getWriter().write(
					"<script>if(confirm('�޸�ʧ��,�Ƿ�����?')){location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=toUpdateRatio&id="
							+ RatioForm.getId() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=ratioList';}</script>");
		}
		return null;
	}

	public ActionForward deleteRatio(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RatioForm RatioForm = (RatioForm) form;
		Boolean bool = this.RatioServiceDao.deleteRatio(RatioForm.getId());
		if (bool) {
			response.getWriter().write(
					"<script>alert('ɾ���ɹ�!');location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=ratioList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('ɾ��ʧ��!');location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=ratioList';</script>");
		}
		return null;
	}

	public ActionForward changeState(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RatioForm RatioForm = (RatioForm) form;
		TStaffGetfee Ratio = this.RatioServiceDao.getRatioByID(RatioForm
				.getId());
		if (null != RatioForm.getState()
				&& "1".equalsIgnoreCase(RatioForm.getState())) {
			Ratio.setState("0");
		} else {
			Ratio.setState("1");
		}

		Boolean bool = this.RatioServiceDao.updateRatio(Ratio);
		if (bool) {
			response.getWriter().write(
					"<script>alert('�����ɹ�!');location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=ratioList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('����ʧ��,������!');location.href='"
							+ request.getContextPath()
							+ "/admin/ratio.do?task=ratioList';</script>");
		}
		return null;
	}

	public RatioServiceDao getRatioServiceDao() {
		return RatioServiceDao;
	}

	public void setRatioServiceDao(RatioServiceDao RatioServiceDao) {
		this.RatioServiceDao = RatioServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}
