/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
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
import com.crm.sysdo.po.TIcd;
import com.crm.sysdo.service.inf.IcdServiceDao;
import com.crm.sysdo.struts.form.IcdForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class IcdAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private IcdServiceDao IcdServiceDao;
	private Permission perDao;

	/**
	 * ��ת�����������ֵ����
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddIcd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List list = (List) this.IcdServiceDao.searchParentIcd(null);
		request.setAttribute("pidList", list);

		// 32 ��ɫ
		List sonList = perDao.getSonPerList("33");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/Icd/addIcd.jsp");
	}

	/**
	 * ����
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addIcd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IcdForm IcdForm = (IcdForm) form;
		TIcd Icd = new TIcd();
		BeanUtils.copyProperties(Icd, IcdForm);

		List list = this.IcdServiceDao.searchIcd(Icd);
		if (list.size() > 0) {
			response.getWriter().print(
					"<script> alert('�����ֵ�������Ѿ����ڣ����������룡��');location.href='"
							+ request.getContextPath()
							+ "/admin/Icd.do?task=toAddIcd';</script>");
			return null;
		}

		Boolean bool = this.IcdServiceDao.addIcd(Icd);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('���ӳɹ����Ƿ�������ӣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/Icd.do?task=toAddIcd';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/Icd.do?task=IcdList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('����ʧ�ܣ��Ƿ����ԣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/Icd.do?task=toAddIcd';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/Icd.do?task=IcdList';}</script>");
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
	public ActionForward IcdList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IcdForm IcdForm = (IcdForm) form;
		PageUtil pageUtil = new PageUtil(request, this.IcdServiceDao
				.getCount(), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.IcdServiceDao.searchParentIcd(pageUtil);
		request.setAttribute("IcdList", list);

		List sonList = this.IcdServiceDao.searchIcd(null);
		request.setAttribute("IcdSonList", sonList);

		// 32 ��ɫ
		List sl = perDao.getSonPerList("33");
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/Icd/Icdlist.jsp");
	}

	/**
	 * ɾ�������ֵ�
	 * 
	 * ��ͬ����һ��ɾ��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteIcd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IcdForm IcdForm = (IcdForm) form;

		TIcd Icd = new TIcd();
		Icd.setId(new Long(IcdForm.getId()));

		Boolean bool = this.IcdServiceDao.deleteIcd(Icd);

		if (bool) {
			response.getWriter().print(
					"<script> alert('ɾ���ɹ�!�����������ֵ��б�!');location.href='"
							+ request.getContextPath()
							+ "/admin/Icd.do?task=IcdList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('ɾ��ʧ��,������!');location.href='"
							+ request.getContextPath()
							+ "/admin/Icd.do?task=IcdList';</script>");
		}
		return null;
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
	public ActionForward toUpdateIcd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IcdForm IcdForm = (IcdForm) form;
		TIcd Icd = this.IcdServiceDao.seachIcd(new Long(IcdForm.getId()));
		BeanUtils.copyProperties(IcdForm, Icd);

		List list = this.IcdServiceDao.searchParentIcd(null);
		request.setAttribute("pidList", list);

		// 32 ��ɫ
		List sonList = perDao.getSonPerList("33");
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/Icd/updateIcd.jsp");
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
	public ActionForward updateIcd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IcdForm IcdForm = (IcdForm) form;
		TIcd Icd = this.IcdServiceDao.seachIcd(new Long(IcdForm.getId()));
		BeanUtils.copyProperties(Icd, IcdForm);

		Boolean bool = false;
		try {
			bool = this.IcdServiceDao.updateIcd(Icd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('�����ֵ��޸ĳɹ�,�Ƿ�����޸�!')){location.href='"
									+ request.getContextPath()
									+ "/admin/Icd.do?task=toUpdateIcd&id="
									+ Icd.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/Icd.do?task=IcdList';}</script>");

		} else {
			response.getWriter().print("<script>alert('�����ֵ��޸�ʧ��,������!');location.href='"
							+ request.getContextPath()
							+ "/admin/Icd.do?task=toUpdateIcd&id='"
							+ Icd.getId() + "';</script>");
		}
		return null;
	}

	public IcdServiceDao getIcdServiceDao() {
		return IcdServiceDao;
	}

	public void setIcdServiceDao(IcdServiceDao IcdServiceDao) {
		this.IcdServiceDao = IcdServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
}