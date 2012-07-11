/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.score.struts.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;

import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.score.po.TPresent;
import com.crm.score.service.dao.inf.PresentServiceDao;
import com.crm.score.struts.form.PresentForm;

/**
 * @author lxj 礼品Action
 */
public class PresentAction extends DispatchAction {

	private PresentServiceDao presentServiceDao;

	/**
	 * 查询礼品列表
	 */
	public ActionForward presentList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PresentForm presentForm = (PresentForm) form;
		TPresent present = new TPresent();
		BeanUtils.copyProperties(present, presentForm);
		if (presentForm.getSadate() != null
				&& !"".equals(presentForm.getSadate())) {
			present.setStart(new SimpleDateFormat("yyyy-MM-dd")
					.parse(presentForm.getSadate()));
		}
		if (presentForm.getEndate() != null
				&& !"".equals(presentForm.getEndate())) {
			present.setEnd(new SimpleDateFormat("yyyy-MM-dd").parse(presentForm
					.getEndate()));
		}
		int rcount = presentServiceDao.getCount(present);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		List presentList = presentServiceDao.searchPresent(present, pageUtil);
		request.setAttribute("presentList", presentList);
		request.setAttribute("pageUtil", pageUtil);
		return new ActionForward("/admin/score/present/presentlist.jsp");
	}

	/**
	 * 进入积分消费页面
	 */
	public ActionForward pay(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int rscount = presentServiceDao.getCount(new TPresent());
		PageUtil pageUtil = new PageUtil(request, rscount, 10);
		List list = presentServiceDao.searchPresent(new TPresent(), pageUtil);
		request.setAttribute("presentList", list);
		request.setAttribute("pageUtil", pageUtil);
		return new ActionForward("/admin/score/apply/scorepay.jsp");
	}

	/**
	 * 进入积分消费列表
	 */
	public ActionForward toBuy(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PresentForm presentForm = (PresentForm) form;
		TPresent present = new TPresent();
		BeanUtils.copyProperties(present, presentForm);
		if (presentForm.getSadate() != null
				&& !"".equals(presentForm.getSadate())) {
			present.setStart(new SimpleDateFormat("yyyy-MM-dd")
					.parse(presentForm.getSadate()));
		}
		if (presentForm.getEndate() != null
				&& !"".equals(presentForm.getEndate())) {
			present.setEnd(new SimpleDateFormat("yyyy-MM-dd").parse(presentForm
					.getEndate()));
		}
		int rscount = presentServiceDao.getPresentCount(present);
		PageUtil pageUtil = new PageUtil(request, rscount, 10);
		List list = presentServiceDao.presentList(present, pageUtil);
		request.setAttribute("presentList", list);
		request.setAttribute("pageUtil", pageUtil);
		return new ActionForward("/admin/score/apply/buylist.jsp");
	}
	/**
	 * 礼品详情
	 */
	public ActionForward getPresent(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("id");
		TPresent present = new TPresent();
		if (id != null && !"".equals(id)) {
			present = presentServiceDao.getPresent(new Long(id));
		}
		request.setAttribute("present", present);
		return new ActionForward("/admin/score/present/presentdetail.jsp");
	}

	/**
	 * 添加礼品
	 */
	public ActionForward addPresent(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PresentForm presentForm = (PresentForm) form;
		TPresent present = new TPresent();
		BeanUtils.copyProperties(present, presentForm);
		FormFile pic = presentForm.getPic();
		// 图片上传
		String filePath = GlobVar.uploadFile(this, pic);
		if (filePath != null && !"".equals(filePath)) {
			present.setPicture(filePath);
		}
		if(presentForm.getIndate()!=null && !"".equals(presentForm.getIndate())){
			present.setInvalidate(new SimpleDateFormat("yyyy-MM-dd")
			.parse(presentForm.getIndate()));
		}
		String url = request.getContextPath()+"/admin/present.do?task=presentList";
		String y_url = request.getContextPath()+"/admin/score/present/addpresent.jsp";
		try{
			presentServiceDao.addPresent(present);
			request.setAttribute("message", "礼品添加成功！");
			request.setAttribute("url", url);
			request.setAttribute("y_url", y_url);
			return mapping.findForward("confirm");
		}catch(Exception e){
			request.setAttribute("message", "礼品添加失败！");
			request.setAttribute("url", url);
			return mapping.findForward("result");
		}

	}

	/**
	 * 跳转修改礼品界面
	 */
	public ActionForward update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PresentForm presentForm = (PresentForm) form;
		String pid = request.getParameter("presentid");
		TPresent present = (TPresent) presentServiceDao
				.getPresent(new Long(pid));
		BeanUtils.copyProperties(presentForm, present);
		if (present.getInvalidate() != null
				&& !"".equals(present.getInvalidate())) {
			presentForm.setIndate(new SimpleDateFormat("yyyy-MM-dd")
					.format(present.getInvalidate()));
		}
		request.setAttribute("filePath", present.getPicture());
		return new ActionForward("/admin/score/present/updatepresent.jsp");
	}

	/**
	 * 修改礼品
	 */
	public ActionForward updatePresent(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		PresentForm presentForm = (PresentForm) form;
		FormFile file = presentForm.getPic();
		TPresent present = new TPresent();
		BeanUtils.copyProperties(present, presentForm);
		String oldPath = request.getParameter("tempPath");

		if (file.getFileName() != null && !"".equals(file.getFileName())) {// 如果图片修改，继续上传
			String filePath = GlobVar.uploadFile(this, file);
			if (filePath != null && !"".equals(filePath)) {
				present.setPicture(filePath);
			}
		} else {// 图片没修改设置原值
			present.setPicture(oldPath);
		}
		if(presentForm.getIndate()!=null && !"".equals(presentForm.getIndate())){
			present.setInvalidate(new SimpleDateFormat("yyyy-MM-dd")
			.parse(presentForm.getIndate()));
		}
	
		try{
		    presentServiceDao.updatePresent(present);
		    request.setAttribute("message", "修改成功！");
		}catch(Exception e){
			request.setAttribute("message", "修改失败！");
		}
		
		String path = this.getServlet().getServletContext().getRealPath(
				"admin/upload");
		// 如果礼品图片修改，则删除原来的图片
		if (file.getFileName() != null && !"".equals(file.getFileName())) {
			System.out.println("delete");
			String fileName = path + File.separator + oldPath;
			GlobVar.deleteFile(fileName);
		}
		String url = request.getContextPath()
				+ "/admin/present.do?task=presentList";
		String currentpage = request.getParameter("tempCurrentpage");
		if (currentpage != null && !"".equals(currentpage)) {
			url += "&currentpage=" + currentpage;
		}

		String name = request.getParameter("tempName");
		if (name != null && !"".equals(name)) {
			url += "&name=" + name;
		}

		String sadate = request.getParameter("tempSadate");
		if (sadate != null && !"".equals(sadate)) {
			url += "&sadate=" + sadate;
		}

		String endate = request.getParameter("tempEndate");
		if (endate != null && !"".equals(endate)) {
			url += "&endate=" + endate;
		}
		request.setAttribute("url",url);
		return mapping.findForward("result");
	}

	/**
	 * 批量删除礼品
	 */
	public ActionForward deleteMore(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] ids = request.getParameterValues("ids");
		Long[] id = new Long[ids.length];
		List<TPresent> list = new ArrayList<TPresent>();
		for (int i = 0; i < ids.length; i++) {
			id[i] = new Long(ids[i]);
			TPresent present = presentServiceDao.getPresent(new Long(ids[i]));
			list.add(present);
		}

		String url = request.getContextPath()
				+ "/admin/present.do?task=presentList";
		String currentpage = request.getParameter("tempCurrentpage");
		if (currentpage != null && !"".equals(currentpage)) {
			url += "&currentpage=" + currentpage;
		}

		String name = request.getParameter("name");
		if (name != null && !"".equals(name)) {
			url += "&name=" + name;
		}

		String sadate = request.getParameter("sadate");
		if (sadate != null && !"".equals(sadate)) {
			url += "&sadate=" + sadate;
		}

		String endate = request.getParameter("endate");
		if (endate != null && !"".equals(endate)) {
			url += "&endate=" + endate;
		}

		try{
			presentServiceDao.deletePresents(id);
			request.setAttribute("message", "删除成功！");
		}catch(Exception e){
			request.setAttribute("message", "删除失败！");
		}
		request.setAttribute("url",url);
		return mapping.findForward("result");
	}

	public PresentServiceDao getPresentServiceDao() {
		return presentServiceDao;
	}

	public void setPresentServiceDao(PresentServiceDao presentServiceDao) {
		this.presentServiceDao = presentServiceDao;
	}
}