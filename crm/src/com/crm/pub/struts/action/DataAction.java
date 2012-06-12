/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.pub.struts.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.actions.DispatchAction;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.service.dao.inf.DataServiceDao;
import com.crm.pub.struts.form.DataForm;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class DataAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private DataServiceDao dataServiceDao;

	/**
	 * ��ת�����������ֵ����
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddData(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List list = (List) this.dataServiceDao.searchParentData(null);
		request.setAttribute("pidList", list);
		return new ActionForward("/admin/pub/data/adddata.jsp");
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
	public ActionForward addData(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DataForm dataForm = (DataForm) form;
		TData d = new TData();
		d.setName(dataForm.getDataName());

		List list = this.dataServiceDao.searchData(d);
		if (list.size() > 0) {
			// ActionMessages messages = new ActionMessages();
			// messages.add("error", new
			// ActionMessage("�����ֵ������Ѿ����ڣ����������룡",false));
			// this.saveMessages(request, messages);
			response.getWriter().print(
					"<script> alert('�����ֵ�������Ѿ����ڣ����������룡��');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=toAddData';</script>");
			return null;
		}

		TData data = new TData();
		if (dataForm.getPid() != null && !"".equals(dataForm.getPid())) {
			data.setPid(new Long(dataForm.getPid()));
		}

		if (dataForm.getTemp() != null && !"".equals(dataForm.getTemp())) {
			data.setTrade(dataForm.getTemp());
		}

		if (dataForm.getDataName() != null
				&& !"".equals(dataForm.getDataName())) {
			data.setName(dataForm.getDataName());
		}

		Boolean bool = this.dataServiceDao.addData(data);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('���ӳɹ����Ƿ�������ӣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=toAddData';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('����ʧ�ܣ��Ƿ����ԣ�')){location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=toAddData';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';}</script>");
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
	public ActionForward dataList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DataForm dataForm = (DataForm) form;

		PageUtil pageUtil = new PageUtil(request, this.dataServiceDao
				.getCount(), GlobVar.PAGESIZE_BY_FOUR);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.dataServiceDao.searchParentData(pageUtil);
		request.setAttribute("dataList", list);

		List sonList = this.dataServiceDao.searchData(null);
		request.setAttribute("dataSonList", sonList);

		return new ActionForward("/admin/pub/data/datalist.jsp");
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
	public ActionForward deleteData(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DataForm dataForm = (DataForm) form;

		TData data = new TData();
		data.setId(new Long(dataForm.getId()));

		Boolean bool = this.dataServiceDao.deleteData(data);

		if (bool) {
			response.getWriter().print(
					"<script> alert('ɾ���ɹ����������������ֵ��б�����');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=dataList';</script>");
			return null;
		} else {
			response.getWriter().print(
					"<script> alert('ɾ��ʧ�ܣ������ԣ��ֽ����������ֵ��б�����');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=dataList';</script>");
			return null;
		}
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
	public ActionForward toUpdateData(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DataForm dataForm = (DataForm) form;

		TData data = this.dataServiceDao.seachData(new Long(dataForm.getId()));

		dataForm.setId(data.getId().toString());
		dataForm.setDataName(data.getName());
		dataForm.setPid(data.getPid().toString());
		dataForm.setTemp(data.getTrade());

		List list = this.dataServiceDao.searchParentData(null);
		request.setAttribute("pidList", list);

		return new ActionForward("/admin/pub/data/updatedata.jsp");
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
	public ActionForward updateData(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DataForm dataForm = (DataForm) form;

		TData data = new TData();
		data = this.dataServiceDao.seachData(new Long(dataForm.getId()));

		if (dataForm.getPid() != null && !"".equals(dataForm.getPid())) {
			data.setPid(new Long(dataForm.getPid()));
		}

		if (dataForm.getTemp() != null && !"".equals(dataForm.getTemp())) {
			data.setTrade(dataForm.getTemp());
		}

		if (dataForm.getDataName() != null
				&& !"".equals(dataForm.getDataName())) {
			data.setName(dataForm.getDataName());
		}

		Boolean bool = this.dataServiceDao.deleteData(data);

		if (bool) {
			response
					.getWriter()
					.print(
							"response.getWriter().print(<script> alert('�޸ĳɹ����ֽ����������ֵ��б�����');location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"response.getWriter().print(<script> alert('�޸ĳɹ��������ԣ��ֽ����������ֵ��б�����');location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';</script>");
			return null;
		}
	}

	public DataServiceDao getDataServiceDao() {
		return dataServiceDao;
	}

	public void setDataServiceDao(DataServiceDao dataServiceDao) {
		this.dataServiceDao = dataServiceDao;
	}
}