/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.query.struts.action;

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
import com.crm.sysdo.po.TGoods;
import com.crm.sysdo.service.inf.DataServiceDao;
import com.crm.sysdo.service.inf.GoodsServiceDao;
import com.crm.sysdo.service.inf.GoodsTypeServiceDao;
import com.crm.sysdo.struts.form.DataForm;
import com.crm.sysdo.struts.form.GoodsForm;
import com.crm.tool.PinYinUtils;

/**
 * MyEclipse Struts Creation date: 10-23-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/data" name="dataForm" input="/form/data.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class HarmAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private GoodsServiceDao GoodsServiceDao;
	private GoodsTypeServiceDao GoodsTypeServiceDao;
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
	public ActionForward toAddGoods(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List list = this.getGoodsTypeServiceDao().getGoodsTypeList(null, null);
		request.setAttribute("goodsTypeList", list);

		//  角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_GOODS);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/goods/addgoods.jsp");
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
	public ActionForward addGoods(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GoodsForm GoodsForm = (GoodsForm) form;
		TGoods Goods = new TGoods();
		BeanUtils.copyProperties(Goods, GoodsForm);
		
		if(null!=GoodsForm.getGoodsname() && !"".equalsIgnoreCase(GoodsForm.getGoodsname())){
			Goods.setPinyin(PinYinUtils.getAllFirstLetter(GoodsForm.getGoodsname()));
		}
		
		Boolean bool = this.GoodsServiceDao.addGoods(Goods);

		if (bool) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功！是否继续添加？')){location.href='"
									+ request.getContextPath()
									+ "/admin/goods.do?task=toAddGoods';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/goods.do?task=goodsList';}</script>");
			return null;
		} else {
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加失败！是否重试？')){location.href='"
									+ request.getContextPath()
									+ "/admin/goods.do?task=toAddGoods';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/goods.do?task=goodsList';}</script>");
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
	public ActionForward goodsList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GoodsForm GoodsForm = (GoodsForm) form;
		TGoods goods = new TGoods();
		BeanUtils.copyProperties(goods, GoodsForm);
		PageUtil pageUtil = new PageUtil(request, this.GoodsServiceDao
				.getCount(goods), GlobVar.PAGESIZE_BY_TWENTY_DATA);
		request.setAttribute("pageUtil", pageUtil);


		List list = this.GoodsServiceDao.getGoodsList(pageUtil, goods);
		request.setAttribute("goodsList", list);

		//  角色
		List sl = perDao.getSonPerList(PowerKey.KEY_GOODS);
		request.setAttribute("sonPowerByMenu", sl);
		return new ActionForward("/admin/sysdo/goods/goodslist.jsp");
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
	public ActionForward deleteGoods(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GoodsForm GoodsForm = (GoodsForm) form;

		TGoods Goods = new TGoods();
		Goods.setId(new Long(GoodsForm.getId()));

		Boolean bool = this.GoodsServiceDao.deleteGoods(Goods);

		if (bool) {
			response.getWriter().print(
					"<script> alert('删除成功!将返回列表!');location.href='"
							+ request.getContextPath()
							+ "/admin/goods.do?task=goodsList';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('删除失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/goods.do?task=goodsList';</script>");
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
	public ActionForward toUpdateGoods(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GoodsForm GoodsForm = (GoodsForm) form;
		TGoods Goods = this.GoodsServiceDao.getGoodsById(new Long(GoodsForm.getId()));
		BeanUtils.copyProperties(GoodsForm, Goods);
		
		List list = this.getGoodsTypeServiceDao().getGoodsTypeList(null, null);
		request.setAttribute("goodsTypeList", list);

		//  角色
		List sonList = perDao.getSonPerList(PowerKey.KEY_GOODS);
		request.setAttribute("sonPowerByMenu", sonList);

		return new ActionForward("/admin/sysdo/goods/updategoods.jsp");
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
	public ActionForward updateGoods(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GoodsForm GoodsForm = (GoodsForm) form;
		TGoods Goods = this.GoodsServiceDao.getGoodsById(new Long(GoodsForm.getId()));
		BeanUtils.copyProperties(Goods, GoodsForm);
		
		if(null!=GoodsForm.getGoodsname() && !"".equalsIgnoreCase(GoodsForm.getGoodsname())){
			Goods.setPinyin(PinYinUtils.getAllFirstLetter(GoodsForm.getGoodsname()));
		}
		
		Boolean bool = false;
		try {
			bool = this.GoodsServiceDao.updateGoods(Goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (bool) {
			response
					.getWriter()
					.print(
							"<script>if(confirm('修改成功,是否继续修改!')){location.href='"
									+ request.getContextPath()
									+ "/admin/goods.do?task=toUpdateGoods&id="
									+ Goods.getId()
									+ "';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/goods.do?task=goodsList';}</script>");

		} else {
			response.getWriter().print("<script>alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/goods.do?task=toUpdateGoods&id='"
							+ Goods.getId() + "';</script>");
		}
		return null;
	}

	public GoodsServiceDao getGoodsServiceDao() {
		return GoodsServiceDao;
	}

	public void setGoodsServiceDao(GoodsServiceDao GoodsServiceDao) {
		this.GoodsServiceDao = GoodsServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
	
	public GoodsTypeServiceDao getGoodsTypeServiceDao() {
		return GoodsTypeServiceDao;
	}

	public void setGoodsTypeServiceDao(GoodsTypeServiceDao GoodsTypeServiceDao) {
		this.GoodsTypeServiceDao = GoodsTypeServiceDao;
	}
}