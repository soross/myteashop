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
import com.crm.pub.PowerKey;
import com.crm.sysdo.po.TData;
import com.crm.sysdo.service.inf.DataServiceDao;
import com.crm.sysdo.struts.form.DataForm;

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
	private Permission perDao;

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

		// 32 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_DATA);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/data/adddata.jsp");
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
		TData data = new TData();
		BeanUtils.copyProperties(data, dataForm);

		List list = this.dataServiceDao.searchData(data);
		if (list.size() > 0) {
			response.getWriter().print(
					"<script> alert('数字字典的名称已经存在！请重新输入！！');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=toAddData';</script>");
			return null;
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
				.getCount(), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);

		List list = this.dataServiceDao.searchParentData(pageUtil);
		request.setAttribute("dataList", list);

		List sonList = this.dataServiceDao.searchData(null);
		request.setAttribute("dataSonList", sonList);

		// 32 角色
		List sl = perDao.getSonPerList(PowerKey.KEY_DATA);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/data/datalist.jsp");
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
					"<script> alert('删除成功!将返回数字字典列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=dataList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=dataList';</script>");
		}
		return null;
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
		BeanUtils.copyProperties(dataForm, data);

		List list = this.dataServiceDao.searchParentData(null);
		request.setAttribute("pidList", list);

		// 32 角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_DATA);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/data/updatedata.jsp");
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
		TData data = this.dataServiceDao.seachData(new Long(dataForm.getId()));
		BeanUtils.copyProperties(data, dataForm);

		Boolean bool = false;
		try {
			bool = this.dataServiceDao.updateData(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('数字字典修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=toUpdateData&id="
									+ data.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/data.do?task=dataList';}</script>");

		} else {
			response.getWriter().print("<script>alert('数字字典修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/data.do?task=toUpdateData&id='"
							+ data.getId() + "';</script>");
		}
		return null;
	}

	public DataServiceDao getDataServiceDao() {
		return dataServiceDao;
	}

	public void setDataServiceDao(DataServiceDao dataServiceDao) {
		this.dataServiceDao = dataServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
}