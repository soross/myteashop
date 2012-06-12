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
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.po.TSickbed;
import com.crm.sysdo.service.inf.SickbedServiceDao;
import com.crm.sysdo.struts.form.SickbedForm;

public class SickbedAction extends DispatchAction{
	private SickbedServiceDao sickbedServiceDao;
	
	/**
	 * 规则列表
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

		Integer count = this.sickbedServiceDao.getSickbedCount();

		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_MAX_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.sickbedServiceDao.getSickbedList(pageUtil);

		request.setAttribute("sickbedList", list);
		return new ActionForward("/admin/sysdo/sickbed/sickbedlist.jsp");
	}

	public SickbedServiceDao getSickbedServiceDao() {
		return sickbedServiceDao;
	}

	public void setSickbedServiceDao(SickbedServiceDao sickbedServiceDao) {
		this.sickbedServiceDao = sickbedServiceDao;
	}
	
}
