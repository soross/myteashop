/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.client.struts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.DynaBean;
import org.apache.commons.beanutils.LazyDynaBean;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;
import org.json.JSONArray;
import org.json.JSONObject;

import com.crm.client.po.TClient;
import com.crm.client.po.TClientallot;
import com.crm.client.po.TClientinfo;
import com.crm.client.po.TGradelog;
import com.crm.client.service.inf.ClientServiceDao;
import com.crm.client.struts.form.ClientForm;
import com.crm.group.po.VipArea;
import com.crm.group.po.VipCity;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.pub.excel.DoExcelUtil;
import com.crm.pub.po.TUser;
/**
 * MyEclipse Struts Creation date: 10-27-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/client" name="clientForm" input="/form/client.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class ClientAction extends DispatchAction {
	/*
	 * Generated Methods
	 */

	private ClientServiceDao clientServiceDao;

	/**
	 * 修改客户基本资料
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateClient(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;

		TClientinfo clientinfo = new TClientinfo();
		BeanUtils.copyProperties(clientinfo, clientForm);

		clientinfo.setBirthday(new SimpleDateFormat("yyyy-MM-dd")
				.parse(clientForm.getBirth()));

		clientinfo.setMarrdate(new SimpleDateFormat("yyyy-MM-dd")
				.parse(clientForm.getMarriagedate()));

		Boolean bool = this.clientServiceDao.updateClientinfo(clientinfo);

		if (bool) {
			response.getWriter().write(
					"<script>alert('客户个性资料更新成功！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=toClientInfo&phone="
							+ clientForm.getPhone() + "';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('客户个性资料更新失败！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=toUpdateClient&phone="
							+ clientForm.getPhone() + "';</script>");
		}

		return null;
	}

	/**
	 * 添加客户
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward addClient(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;

		TClientinfo clientinfo = new TClientinfo();
		BeanUtils.copyProperties(clientinfo, clientForm);
		clientinfo.setBirthday(new SimpleDateFormat("yyyy-MM-dd")
				.parse(clientForm.getBirth()));
		clientinfo.setMarrdate(new SimpleDateFormat("yyyy-MM-dd")
				.parse(clientForm.getMarriagedate()));

		TClient client = new TClient();
		clientinfo.setClient(client);
		client.setClientinfo(clientinfo);

		Boolean bool = this.clientServiceDao.addClientinfo(clientinfo);

		if (bool) {
			response.getWriter().write(
					"<script>alert('客户个性资料更新成功！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=clientList';</script>");
		} else {
			response.getWriter().write(
					"<script>alert('客户个性资料更新失败！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=clientList';</script>");
		}

		return null;
	}

	/**
	 * 跳转到添加客户界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toAddClient(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ClientForm clientForm = (ClientForm) form;
		List proList = this.clientServiceDao.searchProince();
		request.setAttribute("proList", proList);

		List dataList = this.clientServiceDao.searchSonData(new Long(
				GlobVar.BRAND));
		request.setAttribute("dataList", dataList);

		List tradeList = this.clientServiceDao.searchSonData(new Long(
				GlobVar.TRADE));

		request.setAttribute("tradeList", tradeList);

		TClient c = new TClient();
		c.setPhone(clientForm.getPhone());

		TClient client = this.clientServiceDao.searchClient(c);
		request.setAttribute("client", client);

		clientForm.setIscar("0");
		clientForm.setSex("0");

		return new ActionForward("/admin/client/client/addclient.jsp");
	}

	/**
	 * 客户列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward clientList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;

		TClient client = new TClient();
		client.setPhone(clientForm.getPhone());
		client.setGrade(clientForm.getGrade());
		try {
			String address = request.getParameter("address");
			String str = new String(address.getBytes("IOS-8859-1"), "GBK");
			client.setAddress(str);
		} catch (Exception e) {
			client.setAddress(clientForm.getAddress());
		}
		
		Map<String, String> map = new HashMap<String, String>();
		if (null != clientForm.getStartfee()
				&& !"".equals(clientForm.getStartfee())) {
			map.put("startFee", clientForm.getStartfee());
		}
		if (null != clientForm.getEndfee()
				&& !"".equals(clientForm.getEndfee())) {
			map.put("endFee", clientForm.getEndfee());
		}
		//取得不同用户的不同客户
		String linkman = ((TUser)(request.getSession().getAttribute("user"))).getUserid();
		if("admin".equals(linkman)){
			client.setLinkman(null);
		}else{
			client.setLinkman(linkman);
		}
		
		
		PageUtil pageUtil = new PageUtil(request, this.clientServiceDao
				.getCount(client, map), GlobVar.PAGESIZE_BY_TEN_DATA);
		request.setAttribute("pageUtil", pageUtil);
		List list = this.clientServiceDao.searchClientList(client, map,
				pageUtil);
		request.setAttribute("clientList", list);
		

		List brandList = this.clientServiceDao.searchDataList(new Long(
				GlobVar.BRAND));
		request.setAttribute("brandList", brandList);

		List gradeList = this.clientServiceDao.searchDataList(new Long(
				GlobVar.VIP_GRADE));
		request.setAttribute("gradeList", gradeList);

		return new ActionForward("/admin/client/client/clientlist.jsp");
	}

	/**
	 * 跳转到客户详细信息
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toClientInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;

		int count = this.clientServiceDao
				.getCountByPhone(clientForm.getPhone());

		// 判断是否有个性信息
		if (count > 0) {
			List proList = this.clientServiceDao.searchProince();
			request.setAttribute("proList", proList);

			List dataList = this.clientServiceDao.searchSonData(new Long(
					GlobVar.BRAND));
			request.setAttribute("dataList", dataList);

			List tradeList = this.clientServiceDao.searchSonData(new Long(
					GlobVar.TRADE));
			request.setAttribute("tradeList", tradeList);

			TClient client = new TClient();
			client.setPhone(clientForm.getPhone());

			TClientinfo clientinfo = new TClientinfo();
			clientinfo.setPhone(clientForm.getPhone());
			client.setClientinfo(clientinfo);
			clientinfo.setClient(client);

			TClient c = this.clientServiceDao.searchClient(client);

			request.setAttribute("client", c);
			// BeanUtils.copyProperties(clientForm, c);
			// BeanUtils.copyProperties(clientForm, c.getClientinfo());
			// if (null != clientinfo.getBirthday()
			// && !"".equals(clientinfo.getBirthday())) {
			// clientForm.setBirth(new SimpleDateFormat("yyyy-MM-dd")
			// .format(clientinfo.getBirthday()));
			// }
			// if (null != clientinfo.getMarrdate()
			// && !"".equals(clientinfo.getMarrdate())) {
			// clientForm.setMarriagedate(new SimpleDateFormat("yyyy-MM-dd")
			// .format(clientinfo.getMarrdate()));
			// }
			//
			// if (null != client.getRegdate() &&
			// !"".equals(client.getRegdate())) {
			// clientForm.setReg_date(new SimpleDateFormat(
			// "yyyy-MM-dd HH:mm:ss").format(c.getRegdate()));
			// }

			// request.setAttribute("phone", clientForm.getPhone());

			return new ActionForward("/admin/client/client/clientinfo.jsp");
		} else {

			response.getWriter().print(
					"<script> if(confirm('此用户暂无个性信息，是否现在添加')){location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=toAddClient&phone="
							+ clientForm.getPhone() + "';}else{location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=clientList';}</script>");
			return null;
		}

	}

	/**
	 * 跳转到更新用户界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateClient(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;
		// 查出省份
		List proList = this.clientServiceDao.searchProince();
		request.setAttribute("proList", proList);
		// 查出品牌
		List dataList = this.clientServiceDao.searchSonData(new Long(
				GlobVar.BRAND));
		request.setAttribute("dataList", dataList);
		// 查出行业
		List tradeList = this.clientServiceDao.searchSonData(new Long(
				GlobVar.TRADE));
		request.setAttribute("tradeList", tradeList);
		// 互设
		TClient client = new TClient();
		client.setPhone(clientForm.getPhone());
		TClientinfo clientinfo = new TClientinfo();
		clientinfo.setPhone(clientForm.getPhone());
		// 查询
		TClient c = this.clientServiceDao.searchClient(client);

		request.setAttribute("client", c);
		BeanUtils.copyProperties(clientForm, c);
		BeanUtils.copyProperties(clientForm, c.getClientinfo());
		if (null != c.getClientinfo().getBirthday()
				&& !"".equals(c.getClientinfo().getBirthday())) {
			clientForm.setBirth(new SimpleDateFormat("yyyy-MM-dd").format(c
					.getClientinfo().getBirthday()));
		}
		if (null != c.getClientinfo().getMarrdate()
				&& !"".equals(c.getClientinfo().getMarrdate())) {
			clientForm.setMarriagedate(new SimpleDateFormat("yyyy-MM-dd")
					.format(c.getClientinfo().getMarrdate()));
		}

		if (null != c.getRegdate() && !"".equals(c.getRegdate())) {
			clientForm.setReg_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
					.format(c.getRegdate()));
		}

		return new ActionForward("/admin/client/client/updateclient.jsp");
	}

	/**
	 * 删除客户
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deleteClientinfo(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;
		int count = this.clientServiceDao
				.getCountByPhone(clientForm.getPhone());

		if (count < 1) {
			response.getWriter().print(
					"<script>alert('客户暂无个性资料！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=clientList';</script>");
		} else {
			TClientinfo clientinfo = new TClientinfo();
			clientinfo.setPhone(clientForm.getPhone());
			Boolean bool = this.clientServiceDao.deleteClientinfo(clientinfo);

			if (bool) {
				response
						.getWriter()
						.print(
								"<script>alert('客户的个性资料删除成功！');location.href='"
										+ request.getContextPath()
										+ "/admin/client.do?task=clientList';</script>");
			} else {
				response
						.getWriter()
						.print(
								"<script>alert('客户的个性资料删除失败！');location.href='"
										+ request.getContextPath()
										+ "/admin/client.do?task=clientList';</script>");
			}
		}
		return null;
	}

	/**
	 * 城市
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward searchCity(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ClientForm clientForm = (ClientForm) form;

		String proCode = request.getParameter("procode");
		List list = this.clientServiceDao.searchCityList(proCode);

		StringBuffer sbf = new StringBuffer();

		sbf
				.append("<select id='city' name='name' style='width:90px' onchange=showArea(this);>");
		sbf.append("<option value='0'>==请选择==</option>");
		for (Object obj : list) {
			VipCity city = (VipCity) obj;
			sbf.append("<option value='" + city.getVProvince()
					+ city.getVCode() + "'>" + city.getVName() + "</option>");
		}
		sbf.append("</select>");

		try {
			PrintWriter out = response.getWriter();
			out.write(sbf.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 城市 json
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward searchCityList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;
		String pro = request.getParameter("pro");
		List list = this.clientServiceDao.searchCityList(pro);
		JSONArray array = new JSONArray();

		for (Object o : list) {
			VipCity city = (VipCity) o;
			JSONObject obj = new JSONObject();
			obj.put("city", city.getVProvince() + city.getVCode());
			obj.put("name", city.getVName());
			obj.put("id", city.getNId());
			array.put(obj);
		}

		response.getWriter().print(array);

		return null;
	}

	/**
	 * 地区 json
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward searchAreaList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;
		String vcity = request.getParameter("city");
		List list = this.clientServiceDao.searchAreaList(vcity);

		JSONArray array = new JSONArray();
		for (Object o : list) {
			VipArea area = (VipArea) o;
			JSONObject obj = new JSONObject();
			obj.put("area", area.getNId());
			obj.put("name", area.getVName());
			array.put(obj);
		}

		response.getWriter().print(array);

		return null;
	}

	/**
	 * 取出地区
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward searchArea(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ClientForm clientForm = (ClientForm) form;

		String vcity = request.getParameter("vcity");

		List list = this.clientServiceDao.searchAreaList(vcity);

		StringBuffer sbf = new StringBuffer();

		sbf.append("<select id='area' name='area' style='width:90px'>");
		sbf.append("<option value='0'>==请选择==</option>");
		for (Object obj : list) {
			VipArea area = (VipArea) obj;
			sbf.append("<option value='" + area.getNId() + "'>"
					+ area.getVName() + "</option>");
		}
		sbf.append("</select>");

		try {
			PrintWriter out = response.getWriter();
			out.write(sbf.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 导出到Excel
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward exportClient(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ClientForm clientForm = (ClientForm) form;

		DoExcelUtil excelUtil = new DoExcelUtil();
		String title[] = new String[] { "phone", "sex", "birthday", "age",
				"familyphone", "officephone", "fax", "email", "officeaddress",
				"trade", "iscar", "marriagedate", "nation", "country", "num" };
		String sheetTitle = "客户个性信息表";

		TClient client = new TClient();
		BeanUtils.copyProperties(client, clientForm);
		// 开始花费 和 结束花费

		List list = this.clientServiceDao.searchClientInfo(client, clientForm
				.getPhones());

		DynaBean dbs[] = new LazyDynaBean[list.size()];
		for (int i = 0; i < list.size(); i++) {
			Object objs[] = (Object[]) list.get(i);
			DynaBean db = new LazyDynaBean();
			if (null != objs[1]) {
				db.set("phone", ((TClientinfo) objs[1]).getPhone());
				if (null != ((TClientinfo) objs[1]).getSex()) {
					db.set("sex", ((TClientinfo) objs[1]).getSex());
				}
				if (null != ((TClientinfo) objs[1]).getBirthday()) {
					db.set("birthday", ((TClientinfo) objs[1]).getBirthday());
				}
				if (null != ((TClientinfo) objs[1]).getAge()) {
					db.set("age", ((TClientinfo) objs[1]).getAge());
				}
				if (null != ((TClientinfo) objs[1]).getFamilyphone()) {
					db.set("familyphone", ((TClientinfo) objs[1])
							.getFamilyphone());
				}
				if (null != ((TClientinfo) objs[1]).getOfficeaddress()) {
					db.set("officephone", ((TClientinfo) objs[1])
							.getOfficeaddress());
				}
				if (null != ((TClientinfo) objs[1]).getFax()) {
					db.set("fax", ((TClientinfo) objs[1]).getFax());
				}
				if (null != ((TClientinfo) objs[1]).getEmail()) {
					db.set("email", ((TClientinfo) objs[1]).getEmail());
				}
				if (null != ((TClientinfo) objs[1]).getOfficeaddress()) {
					db.set("officeaddress", ((TClientinfo) objs[1])
							.getOfficeaddress());
				}
				if (null != ((TClientinfo) objs[1]).getTrade()) {
					db.set("trade", ((TClientinfo) objs[1]).getTrade());
				}
				if (null != ((TClientinfo) objs[1]).getIscar()) {
					db.set("iscar", ((TClientinfo) objs[1]).getIscar());
				}
				if (null != ((TClientinfo) objs[1]).getMarrdate()) {
					db.set("marriagedate", ((TClientinfo) objs[1])
							.getMarrdate());
				}
				if (null != ((TClientinfo) objs[1]).getNation()) {
					db.set("nation", ((TClientinfo) objs[1]).getNation());
				}
				if (null != ((TClientinfo) objs[1]).getCountry()) {
					db.set("country", ((TClientinfo) objs[1]).getCountry());
				}
				if (null != ((TClientinfo) objs[1]).getNum()) {
					db.set("num", ((TClientinfo) objs[1]).getNum());
				}
			} else {
				db.set("phone", ((TClient) objs[0]).getPhone());
			}

			dbs[i] = db;
		}

		excelUtil.export2Excel(response, title, dbs, sheetTitle);

		return null;
	}

	/**
	 * 导出全部到Excel
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward exportAllClient(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;

		DoExcelUtil excelUtil = new DoExcelUtil();
		String title[] = new String[] { "phone", "sex", "birthday", "age",
				"familyphone", "officephone", "fax", "email", "officeaddress",
				"trade", "iscar", "marriagedate", "nation", "country", "num" };
		String sheetTitle = "客户个性信息表";

		TClient client = new TClient();
		BeanUtils.copyProperties(client, clientForm);
		// 开始花费 和 结束花费

		List list = this.clientServiceDao.searchAllClientInfo(client);

		DynaBean dbs[] = new LazyDynaBean[list.size()];
		for (int i = 0; i < list.size(); i++) {
			Object objs[] = (Object[]) list.get(i);
			DynaBean db = new LazyDynaBean();
			if (null != objs[1]) {
				db.set("phone", ((TClientinfo) objs[1]).getPhone());
				if (null != ((TClientinfo) objs[1]).getSex()) {
					db.set("sex", ((TClientinfo) objs[1]).getSex());
				}
				if (null != ((TClientinfo) objs[1]).getBirthday()) {
					db.set("birthday", ((TClientinfo) objs[1]).getBirthday());
				}
				if (null != ((TClientinfo) objs[1]).getAge()) {
					db.set("age", ((TClientinfo) objs[1]).getAge());
				}
				if (null != ((TClientinfo) objs[1]).getFamilyphone()) {
					db.set("familyphone", ((TClientinfo) objs[1])
							.getFamilyphone());
				}
				if (null != ((TClientinfo) objs[1]).getOfficeaddress()) {
					db.set("officephone", ((TClientinfo) objs[1])
							.getOfficeaddress());
				}
				if (null != ((TClientinfo) objs[1]).getFax()) {
					db.set("fax", ((TClientinfo) objs[1]).getFax());
				}
				if (null != ((TClientinfo) objs[1]).getEmail()) {
					db.set("email", ((TClientinfo) objs[1]).getEmail());
				}
				if (null != ((TClientinfo) objs[1]).getOfficeaddress()) {
					db.set("officeaddress", ((TClientinfo) objs[1])
							.getOfficeaddress());
				}
				if (null != ((TClientinfo) objs[1]).getTrade()) {
					db.set("trade", ((TClientinfo) objs[1]).getTrade());
				}
				if (null != ((TClientinfo) objs[1]).getIscar()) {
					db.set("iscar", ((TClientinfo) objs[1]).getIscar());
				}
				if (null != ((TClientinfo) objs[1]).getMarrdate()) {
					db.set("marriagedate", ((TClientinfo) objs[1])
							.getMarrdate());
				}
				if (null != ((TClientinfo) objs[1]).getNation()) {
					db.set("nation", ((TClientinfo) objs[1]).getNation());
				}
				if (null != ((TClientinfo) objs[1]).getCountry()) {
					db.set("country", ((TClientinfo) objs[1]).getCountry());
				}
				if (null != ((TClientinfo) objs[1]).getNum()) {
					db.set("num", ((TClientinfo) objs[1]).getNum());
				}
			} else {
				db.set("phone", ((TClient) objs[0]).getPhone());
			}

			dbs[i] = db;
		}

		excelUtil.export2Excel(response, title, dbs, sheetTitle);

		return null;
	}

	/**
	 * 跳转到登记调整页面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward toUpdateClientGrade(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;
		TClient c = new TClient();
		c.setPhone(clientForm.getPhone());
		TClient client = this.clientServiceDao.searchClient(c);
		request.setAttribute("client", client);
		List dataList = this.clientServiceDao.searchSonData(new Long(
				GlobVar.BRAND));
		request.setAttribute("dataList", dataList);
		List gradeList = this.clientServiceDao.searchSonData(new Long(
				GlobVar.VIP_GRADE));
		request.setAttribute("gradeList", gradeList);

		clientForm.setNewgrade(client.getGrade());
		clientForm.setOldgrade(client.getGrade());

		return new ActionForward("/admin/client/rule/updategrade.jsp");
	}

	/**
	 * 调整登级
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward updateClientGrade(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;
		TGradelog gradelog = new TGradelog();
		BeanUtils.copyProperties(gradelog, clientForm);
		gradelog.setCheckdate(new SimpleDateFormat("yyyy-MM-dd HH:mm")
				.parse(clientForm.getChecktime()));
		
		Boolean bool = this.clientServiceDao.updateClientGrade(gradelog);
		
		if(bool){
			response.getWriter().write(
					"<script>alert('客户等级修改成功！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=clientList';</script>");
			
		}else{
			response.getWriter().write(
					"<script>alert('客户等级修改失败！');location.href='"
							+ request.getContextPath()
							+ "/admin/client.do?task=clientList';</script>");
			
		}
		return null;
	}
	
	/**
	 * 等级调整日志
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward searchGradeLog(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;		
		Integer count = this.clientServiceDao.getGradeLogCount();		
		PageUtil pageUtil = new PageUtil(request,count,GlobVar.PAGESIZE_BY_TEN_DATA);
		List list = this.clientServiceDao.searchGradeLog(pageUtil);
		request.setAttribute("list", list);
		request.setAttribute("pageUtil", pageUtil);
		
		return new ActionForward("/admin/client/rule/gradeloglist.jsp");
	}
	
	/**
	 * 可分配客户列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward distributeList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;
		TClient client = new TClient();
	    BeanUtils.copyProperties(client, clientForm);
	    int count = clientServiceDao.getClientCount(client);
        PageUtil pageUtil = new PageUtil(request,count,GlobVar.PAGESIZE_BY_TEN_DATA);
	    List list = clientServiceDao.clientList(client, pageUtil);
		List managers = clientServiceDao.clientManagers();//查找客户经理
		request.setAttribute("clientList", list);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("managers", managers);
		return new ActionForward("/admin/client/client/client_distribute.jsp");
	}

	/**
	 * 新增客户经理分配日志
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward distribute(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TUser user = (TUser)request.getSession().getAttribute("user");
		String manager = request.getParameter("manager");
		String[] phones = request.getParameterValues("ids");
		List<TClientallot> allots = new ArrayList<TClientallot>();
		String date = GlobVar.getDate();
		for(int i=0;i<phones.length;i++){
			TClientallot allot = new TClientallot();
			allot.setPhone(phones[i]);
			allot.setManager(manager);
			allot.setState("0");
			allot.setUserid(user.getUserid());
			allot.setFdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
			allots.add(allot);
		}
		
		String url = request.getContextPath()+"/admin/client.do?task=distributeList";
		String currentpage = request.getParameter("tempCurrentpage");
		if (currentpage != null && !"".equals(currentpage)) {
			url += "&currentpage=" + currentpage;
		}

		String phone = request.getParameter("phone");
		if (phone != null && !"".equals(phone)) {
			url += "&phone=" + phone;
		}

		String safee= request.getParameter("safee");
		if (safee != null && !"".equals(safee)) {
			url += "&safee=" + safee;
		}

		String efee = request.getParameter("efee");
		if (efee != null && !"".equals(efee)) {
			url += "&efee=" + efee;
		}
		
		String sascore= request.getParameter("sascore");
		if (sascore != null && !"".equals(sascore)) {
			url += "&sascore=" + sascore;
		}

		String endscore = request.getParameter("endscore");
		if (endscore != null && !"".equals(endscore)) {
			url += "&endscore=" + endscore;
		}

		try{
		   clientServiceDao.addClientAllot(allots);
		   request.setAttribute("message", "分配成功,待确认接受！");
		   
		}catch(Exception e){
	      e.printStackTrace();
		  request.setAttribute("message", "分配失败！");
		}
		request.setAttribute("url", url);
		return mapping.findForward("result");
	}

	/**
	 * 查询接收列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward acceptList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
       TUser user = (TUser)request.getSession().getAttribute("user");
       ClientForm clientForm = (ClientForm)form;
       TClientallot allot = new TClientallot();
       BeanUtils.copyProperties(allot, clientForm);
       if(clientForm.getStart()!=null && !"".equals(clientForm.getStart())){
    	   allot.setSadate(new SimpleDateFormat("yyyy-MM-dd").parse(clientForm.getStart()));
       }
       if(clientForm.getEnd()!=null && !"".equals(clientForm.getEnd())){
    	   allot.setEdate(new SimpleDateFormat("yyyy-MM-dd").parse(clientForm.getEnd()));
       }       
       int count = clientServiceDao.acceptCount(user.getUserid(),allot);
       PageUtil pageUtil = new PageUtil(request,count,GlobVar.PAGESIZE_BY_TEN_DATA);
       List list = clientServiceDao.acceptList(user.getUserid(),allot, pageUtil);
       request.setAttribute("acceptList", list);
       request.setAttribute("pageUtil", pageUtil);
	   return new ActionForward("/admin/client/client/accept.jsp");
	}
	
	/**
	 * 确认接收
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward accept(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
       TUser user = (TUser)request.getSession().getAttribute("user");
       String[] phones = request.getParameterValues("phones");
       String[] ids = request.getParameterValues("ids");
       Long[] id =new Long[ids.length];
       for(int i=0;i<id.length;i++){
    	   id[i]=Long.valueOf(ids[i]);
       }
       try{
          clientServiceDao.updateManager(phones, user.getUserid(), id, "1");
          request.setAttribute("message", "接收成功！");
       }catch(Exception e){
    	   e.printStackTrace();
    	  request.setAttribute("message", "接收失败！");
       }
       request.setAttribute("url", request.getContextPath()+"/admin/client.do?task=acceptList");
       return mapping.findForward("result");
	}
	
	/**
	 * 拒绝接收
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward refuse(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
       String[] ids = request.getParameterValues("ids");
       Long[] id =new Long[ids.length];
       for(int i=0;i<id.length;i++){
    	   id[i]=Long.valueOf(ids[i]);
       }
       try{
          clientServiceDao.updateManager(null, "", id, "2");
          request.setAttribute("message", "拒绝成功！");
       }catch(Exception e){
    	  request.setAttribute("message", "拒绝失败！");
       }
       request.setAttribute("url", request.getContextPath()+"/admin/client.do?task=acceptList");
       return mapping.findForward("result");
	}
	
	

	/**
	 * 可分配客户列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deployList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ClientForm clientForm = (ClientForm) form;
		TClient client = new TClient();
	    BeanUtils.copyProperties(client, clientForm);
	    int count = clientServiceDao.getDeployCount(client);
        PageUtil pageUtil = new PageUtil(request,count,GlobVar.PAGESIZE_BY_TEN_DATA);
	    List list = clientServiceDao.deployList(client, pageUtil);
		List managers = clientServiceDao.clientManagers();//查找客户经理
		request.setAttribute("clientList", list);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("managers", managers);
		return new ActionForward("/admin/client/client/deploy.jsp");
	}
	
	/**
	 * 新增客户经理分配日志--调配
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward deploy(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TUser user = (TUser)request.getSession().getAttribute("user");
		String manager = request.getParameter("manager");
		String[] phones = request.getParameterValues("ids");
		List<TClientallot> allots = new ArrayList<TClientallot>();
		String date = GlobVar.getDate();
		for(int i=0;i<phones.length;i++){
			TClientallot allot = new TClientallot();
			allot.setPhone(phones[i]);
			allot.setManager(manager);
			allot.setState("0");
			allot.setUserid(user.getUserid());
			allot.setFdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date));
			allots.add(allot);
		}
		
		String url = request.getContextPath()+"/admin/client.do?task=deployList";
		String currentpage = request.getParameter("tempCurrentpage");
		if (currentpage != null && !"".equals(currentpage)) {
			url += "&currentpage=" + currentpage;
		}

		String phone = request.getParameter("phone");
		if (phone != null && !"".equals(phone)) {
			url += "&phone=" + phone;
		}

		String safee= request.getParameter("safee");
		if (safee != null && !"".equals(safee)) {
			url += "&safee=" + safee;
		}

		String efee = request.getParameter("efee");
		if (efee != null && !"".equals(efee)) {
			url += "&efee=" + efee;
		}
		
		String sascore= request.getParameter("sascore");
		if (sascore != null && !"".equals(sascore)) {
			url += "&sascore=" + sascore;
		}

		String endscore = request.getParameter("endscore");
		if (endscore != null && !"".equals(endscore)) {
			url += "&endscore=" + endscore;
		}

		try{
		   clientServiceDao.addClientAllot(allots);
		   request.setAttribute("message", "调配成功,待确认接受！");
		   
		}catch(Exception e){
		  request.setAttribute("message", "调配失败！");
		}
		request.setAttribute("url", url);
		return mapping.findForward("result");
	}
	
	/**
	 * 跳往客户资料导入
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward toImport(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		List managers = clientServiceDao.clientManagers();//查找客户经理
		request.setAttribute("managers", managers);
	    return new ActionForward("/admin/client/client/import.jsp");
	}
	
	/**
	 * 导入客户资料
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward importExl(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TUser user = (TUser)request.getSession().getAttribute("user");
		ClientForm clientForm = (ClientForm)form;
		String manager = clientForm.getManager();
		System.out.println(manager);
		FormFile file = clientForm.getExlFile();
		if(file!=null){		
				Workbook book = Workbook.getWorkbook(file.getInputStream());
				Sheet sheet = book.getSheet(0);
				sheet.getCell(0, 0);
				List<TClient> list = new ArrayList<TClient>();
				List<TClientallot> allots = new ArrayList<TClientallot>();;
				for (int i = 1; i < sheet.getRows(); i++) {
					Cell cell1 = sheet.getCell(0, i);
					String phone = cell1.getContents();

					Cell cell2 = sheet.getCell(1, i);
					String name = cell2.getContents();

					Cell cell3 = sheet.getCell(2, i);
					String type = cell3.getContents();

					Cell cell4 = sheet.getCell(3, i);
					String code = cell4.getContents();
					
					Cell cell5 = sheet.getCell(4, i);
					String province = cell5.getContents();
	         
					Cell cell6 = sheet.getCell(5, i);
					String city = cell6.getContents();

					Cell cell7 = sheet.getCell(6, i);
					String room = cell7.getContents();

					Cell cell8 = sheet.getCell(7, i);
					String regdate = cell8.getContents();
					regdate =regdate.replace('/', '-');

					Cell cell9 = sheet.getCell(8, i);
					String address = cell9.getContents();

					Cell cell10 = sheet.getCell(9, i);
					String grade = cell10.getContents();

					Cell cell11 = sheet.getCell(10, i);
					String area = cell11.getContents();

					Cell cell12 = sheet.getCell(11, i);
					String brand = cell12.getContents();
					
					Cell cell13 = sheet.getCell(12, i);
					String linkman = cell13.getContents();

					Cell cell14 = sheet.getCell(13, i);
					String isparty = cell14.getContents();
			
					
					Cell cell15 = sheet.getCell(14, i);
					String isgroup = cell15.getContents();
					
					Cell cell16 = sheet.getCell(15, i);
					String ischeck = cell16.getContents();
					
					
					Cell cell17 = sheet.getCell(16, i);
					String bigdate = cell17.getContents();
					bigdate = bigdate.replace('/', '-');
					
					TClient client = new TClient();
					client.setPhone(phone);
					client.setName(name);
					client.setType(type);
					client.setCode(code);
					client.setProvice(new Long(province));
					client.setCity(new Long(city));
					client.setRoom(room);
					client.setRegdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(regdate));
					client.setAddress(address);
					client.setGrade(new Long(grade));
					client.setArea(new Long(area));
					client.setBrand(new Long(brand));
					if(grade.equals("20")&& isgroup.equals("0")){ //判断是否是砖石卡和是否是大集团
						if(manager!=null && !"".equals(manager)){ //是分配经理			
							client.setLinkman(manager);
							TClientallot allot = new TClientallot();
							allot.setPhone(phone);
							allot.setManager(manager);
							allot.setState("1");
							allot.setFdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(GlobVar.getDate()));
							allots.add(allot);	
						}
					}
					
					client.setIsparty(isparty);
					client.setIscheck(ischeck);
					client.setIsgroup(isgroup);
					client.setBigdate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(bigdate));
	                list.add(client);
					
				}
				
				try{
						clientServiceDao.addImportClient(list, allots);
                        request.setAttribute("message", "导入成功！");
				}catch(Exception e){
					 e.printStackTrace();
					 request.setAttribute("message", "导入失败！");
				}

		}
		request.setAttribute("url", request.getContextPath()+"/admin/client.do?task=toImport");
		return mapping.findForward("result");
	}
	
	public ClientServiceDao getClientServiceDao() {
		return clientServiceDao;
	}

	public void setClientServiceDao(ClientServiceDao clientServiceDao) {
		this.clientServiceDao = clientServiceDao;
	}
}