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
	 * 跳转到添加数字字典界面
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
	 * 添加
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
			// ActionMessage("数字字典名字已经存在！请重新输入！",false));
			// this.saveMessages(request, messages);
			response.getWriter().print(
					"<script> alert('数字字典的名称已经存在！请重新输入！！');location.href='"
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
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=toAddData';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=toAddData';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';}</script>");
			return null;
		}
	}

	/**
	 * 数字字典列表
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
	 * 删除数字字典
	 * 
	 * 连同子类一起删除
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
					"<script> alert('删除成功！！将返回数字字典列表！！');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=dataList';</script>");
			return null;
		} else {
			response.getWriter().print(
					"<script> alert('删除失败！请重试！现将返回数字字典列表！！');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=dataList';</script>");
			return null;
		}
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
	 * 修改
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
							"response.getWriter().print(<script> alert('修改成功！现将返回数字字典列表！！');location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"response.getWriter().print(<script> alert('修改成功！请重试！现将返回数字字典列表！！');location.href='"
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