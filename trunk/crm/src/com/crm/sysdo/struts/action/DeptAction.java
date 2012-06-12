package com.crm.sysdo.struts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.client.po.TClientrule;
import com.crm.client.service.inf.RuleServiceDao;
import com.crm.client.struts.form.RuleForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.sysdo.po.TDept;
import com.crm.sysdo.service.inf.DeptServiceDao;
import com.crm.sysdo.struts.form.DeptForm;

public class DeptAction extends DispatchAction{
	private DeptServiceDao deptServiceDao;
	
	/**
	 * 规则列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deptList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DeptForm deptForm = (DeptForm) form;
		TDept dept = new TDept();
		BeanUtils.copyProperties(dept, deptForm);

		Integer count = this.deptServiceDao.getDeptCount();

		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_MAX_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.deptServiceDao.getDeptList(pageUtil);

		request.setAttribute("deptList", list);
		return new ActionForward("/admin/sysdo/dept/deptlist.jsp");
	}

	public DeptServiceDao getDeptServiceDao() {
		return deptServiceDao;
	}

	public void setDeptServiceDao(DeptServiceDao deptServiceDao) {
		this.deptServiceDao = deptServiceDao;
	}
	
}
