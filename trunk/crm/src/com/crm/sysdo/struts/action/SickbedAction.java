package com.crm.sysdo.struts.action;

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
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.po.TSickbed;
import com.crm.sysdo.service.inf.DeptServiceDao;
import com.crm.sysdo.service.inf.SickbedServiceDao;
import com.crm.sysdo.struts.form.SickbedForm;

public class SickbedAction extends DispatchAction {
	private SickbedServiceDao sickbedServiceDao;
	private DeptServiceDao deptServiceDao;
	private Permission perDao;

	/**
	 * �����б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward sickbedList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickbedForm sickbedForm = (SickbedForm) form;
		TSickbed sickbed = new TSickbed();
		BeanUtils.copyProperties(sickbed, sickbedForm);

		Integer count = this.sickbedServiceDao.getSickbedCount(sickbed);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.sickbedServiceDao.getSickbedList(pageUtil, sickbed);
		request.setAttribute("sickbedList", list);

		List deptList = deptServiceDao.getDeptList();
		request.setAttribute("deptList", deptList);

		// 81
		List sonList = perDao.getSonPerList("81");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/sickbed/sickbedlist.jsp");
	}

	/**
	 * ��ת����Ӳ���
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddSickbed(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List deptList = deptServiceDao.getDeptList();
		request.setAttribute("deptList", deptList);

		// 81
		List sonList = perDao.getSonPerList("81");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/sickbed/addsickbed.jsp");
	}

	/**
	 * ��Ӳ���
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addSickbed(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickbedForm sickbedForm = (SickbedForm) form;
		TSickbed sickbed = new TSickbed();
		BeanUtils.copyProperties(sickbed, sickbedForm);
		try {
			this.sickbedServiceDao.addSickbed(sickbed);
			response
					.getWriter()
					.print(
							"<script> if(confirm('��ӳɹ����Ƿ������ӣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/sickbed.do?task=toAddSickbed';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/sickbed.do?task=sickbedList';}</script>");
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			response
					.getWriter()
					.print(
							"<script> if(confirm('���ʧ�ܣ��Ƿ����ԣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/sickbed.do?task=toAddSickbed';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/sickbed.do?task=sickbedList';}</script>");
			return null;
		}
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
	public ActionForward toUpdateSickbed(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		SickbedForm sickbedForm = (SickbedForm) form;
		TSickbed sickbed = this.sickbedServiceDao.getSickbedById(sickbedForm
				.getId());
		BeanUtils.copyProperties(sickbedForm, sickbed);

		List deptList = deptServiceDao.getDeptList();
		request.setAttribute("deptList", deptList);

		// 81
		List sonList = perDao.getSonPerList("81");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/sickbed/addsickbed.jsp");
	}

	/**
	 * �޸�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateSickbed(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickbedForm sickbedForm = (SickbedForm) form;
		TSickbed sickbed = new TSickbed();
		BeanUtils.copyProperties(sickbed, sickbedForm);

		return new ActionForward("/admin/sysdo/sickbed/addsickbed.jsp");
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
	public ActionForward deleteSickbed(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SickbedForm sickbedForm = (SickbedForm) form;
		this.sickbedServiceDao.deleteSickbed(sickbedForm.getId());

		return new ActionForward("/admin/sysdo/sickbed/addsickbed.jsp");
	}

	public SickbedServiceDao getSickbedServiceDao() {
		return sickbedServiceDao;
	}

	public void setSickbedServiceDao(SickbedServiceDao sickbedServiceDao) {
		this.sickbedServiceDao = sickbedServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

	public DeptServiceDao getDeptServiceDao() {
		return deptServiceDao;
	}

	public void setDeptServiceDao(DeptServiceDao deptServiceDao) {
		this.deptServiceDao = deptServiceDao;
	}

}
