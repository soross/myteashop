/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.group.struts.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.client.po.TClient;
import com.crm.group.po.Groups;
import com.crm.group.po.TOldgroupmess;
import com.crm.group.service.dao.inf.GroupDistributeServiceDAO;
import com.crm.group.struts.form.GroupDistributeForm;
import com.crm.page.PageUtil;
import com.crm.pub.GlobVar;
import com.crm.pub.po.TData;
import com.crm.pub.po.TUser;

/**
 * MyEclipse Struts Creation date: 10-26-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/groupDistribute" name="groupDistributeForm"
 *                input="/form/groupDistribute.jsp" parameter="task"
 *                scope="request" validate="true"
 */
public class GroupDistributeAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private GroupDistributeServiceDAO groupDistributeserviceDAO;

	/**
	 * Method �����б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward groupList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO
		Groups groups = new Groups();
		if (groupDistributeForm.getGroupid() != null
				&& !"".equals(groupDistributeForm.getGroupid())) {
			groups.setGroupid(groupDistributeForm.getGroupid());

		}
		if (groupDistributeForm.getGroupname() != null
				&& !"".equals(groupDistributeForm.getGroupname())) {
			groups.setGroupname(groupDistributeForm.getGroupname());

		}

		int rcount = groupDistributeserviceDAO.getCount(groups);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_SMALL_DATA);
		List groupsList = groupDistributeserviceDAO.searchGroupDistributeList(
				groups, pageUtil.pastart(), pageUtil.getPagesize());
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("groupsList", groupsList);
		return new ActionForward("/admin/group/groupdistributelist.jsp");
	}

	/**
	 * Method δ���伯���б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward noDistributeList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO
		Groups groups = new Groups();
		if (groupDistributeForm.getGroupid() != null
				&& !"".equals(groupDistributeForm.getGroupid())) {
			groups.setGroupid(groupDistributeForm.getGroupid());

		}
		if (groupDistributeForm.getGroupname() != null
				&& !"".equals(groupDistributeForm.getGroupname())) {
			groups.setGroupname(groupDistributeForm.getGroupname());

		}
		List<Groups> groupsList = groupDistributeserviceDAO
				.searchNoDistributeList(groups);
		// TUSER TROLE
		List list = groupDistributeserviceDAO.searchManagerList();
		List<TUser> manageList = new ArrayList<TUser>();

		for (Object o : list) {
			Object obj[] = (Object[]) o;
			TUser user = (TUser) obj[0];
			manageList.add(user);
		}
		request.setAttribute("groupsList", groupsList);
		request.setAttribute("manageList", manageList);
		return new ActionForward("/admin/group/nodistributelist.jsp");
	}

	/**
	 * Method �ѷ��伯���б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward hasDistributeList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO
		Groups groups = new Groups();
		String managerid = null;
		String groupid = null;
		String groupname = null;

		if (groupDistributeForm.getGroupid() != null
				&& !"".equals(groupDistributeForm.getGroupid())) {
			groupid = groupDistributeForm.getGroupid();
			groups.setGroupid(groupid);

		}
		if (groupDistributeForm.getGroupname() != null
				&& !"".equals(groupDistributeForm.getGroupname())) {
			groupname = groupDistributeForm.getGroupname();
			groups.setGroupname(groupname);

		}
		if (groupDistributeForm.getManager() != null
				&& !"".equals(groupDistributeForm.getManager())) {

			managerid = groupDistributeForm.getManager();
			groups.setManager(managerid);
		}
		List<Groups> groupsList = groupDistributeserviceDAO
				.searchhasDisList(groups);
		List list = groupDistributeserviceDAO.searchManagerList();
		List<TUser> manageList = new ArrayList<TUser>();
		for (Object o : list) {
			Object obj[] = (Object[]) o;
			TUser user = (TUser) obj[0];
			manageList.add(user);
		}
		request.setAttribute("groupsList", groupsList);
		request.setAttribute("manageList", manageList);
		return new ActionForward("/admin/group/chandistriblist.jsp");
	}

	/**
	 * ���侭��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward distributeManage(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO

		String[] strid = null;
		String managerid = null;
		if (groupDistributeForm.getSelects() != null
				&& !"".equals(groupDistributeForm.getSelects())) {

			strid = groupDistributeForm.getSelects();
		}
		if (groupDistributeForm.getManager() != null
				&& !"".equals(groupDistributeForm.getManager())) {

			managerid = groupDistributeForm.getManager().toString();
		}

		if (groupDistributeserviceDAO.distributeManager(strid, managerid)) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('����ɹ�,�Ƿ����?')){location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=noDistributeList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=groupList';}</script>");

		} else {

			response
					.getWriter()
					.print(
							"<script> if(confirm('����ʧ��,�Ƿ����?')){location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=noDistributeList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=groupList';}</script>");

		}
		;

		return null;

	}

	/**
	 * ���侭��
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward changeManage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO

		String[] strid = null;
		String managerid = null;
		if (groupDistributeForm.getSelects() != null
				&& !"".equals(groupDistributeForm.getSelects())) {

			strid = groupDistributeForm.getSelects();
		}
		if (groupDistributeForm.getManager() != null
				&& !"".equals(groupDistributeForm.getManager())) {

			managerid = groupDistributeForm.getManager().toString();
		}

		if (groupDistributeserviceDAO.distributeManager(strid, managerid)) {
			response
					.getWriter()
					.print(
							"<script> if(confirm('����ɹ�,�Ƿ����?')){location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=hasDistributeList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=groupList';}</script>");

		} else {

			response
					.getWriter()
					.print(
							"<script> if(confirm('����ʧ��,�Ƿ����?')){location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=noDistributeList';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/groupDistribute.do?task=groupList';}</script>");

		}
		;

		return null;

	}

	/**
	 * Method ���ſͻ�����
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward guserList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO

		String groupid = null;
		String groupname = null;
		String groupIdStr = request.getParameter("groupid");
		String groupNameStr = request.getParameter("groupname");

		try {
			groupid = groupIdStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			groupname = groupNameStr;

		} catch (Exception e) {
			e.printStackTrace();
		}

		int count = groupDistributeserviceDAO.guserListCount(groupid);
		PageUtil pageUtil = new PageUtil(request, count, 10);
		List listClient = groupDistributeserviceDAO.guserList(groupid, pageUtil
				.pastart(), pageUtil.getPagesize());

		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("listClient", listClient);
		request.setAttribute("groupid", groupid);
		request.setAttribute("groupname", groupname);

		return new ActionForward("/admin/group/grclientlist.jsp");
	}

	/**
	 * Method ���ſͻ���ϸ��Ϣ
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward clientinfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO

		String phone = null;
		String phoneStr = request.getParameter("phone");

		try {
			phone = phoneStr;

		} catch (Exception e) {
			e.printStackTrace();
		}

		List provinceList = groupDistributeserviceDAO.searchProvinceList();
		List<TData> vocationList = groupDistributeserviceDAO
				.searchVocationList();

		List<TData> brandList = groupDistributeserviceDAO.searchBrandList();
		TClient client = groupDistributeserviceDAO.getClient(phone);

		request.setAttribute("provinceList", provinceList);
		request.setAttribute("vocationList", vocationList);
		request.setAttribute("brandList", brandList);
		request.setAttribute("client", client);

		return new ActionForward("/admin/group/clientinfo.jsp");
	}

	/**
	 * Method ������ʷ�б�
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward grhistlist(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		GroupDistributeForm groupDistributeForm = (GroupDistributeForm) form;// TODO

		String groupid = null;
		String groupname = null;
		String groupidStr = request.getParameter("groupid");
		String groupnameStr = request.getParameter("groupname");

		try {
			groupid = groupidStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			groupname = groupnameStr;

		} catch (Exception e) {
			e.printStackTrace();
		}
		Groups group = new Groups();
		group.setGroupid(groupid);
		group.setGroupname(groupname);

		Integer count = groupDistributeserviceDAO.searchGrHistCount(group);
		PageUtil pageUtil = new PageUtil(request, count,
				GlobVar.PAGESIZE_BY_SMALL_DATA);
		request.setAttribute("pageUtil", pageUtil);
		List<TOldgroupmess> histList = groupDistributeserviceDAO
				.searchGrHistList(group, pageUtil.pastart(), pageUtil
						.getPagesize());

		List<TData> vocationList = groupDistributeserviceDAO
				.searchVocationList();
		List provinceList = groupDistributeserviceDAO.searchProvinceList();
		List optypeList=groupDistributeserviceDAO.searchOptype();
		
		List mList=groupDistributeserviceDAO.searchManagerList();
		List lList=groupDistributeserviceDAO.searchLevelList();
		request.setAttribute("lList", lList);
		request.setAttribute("mList", mList);
		request.setAttribute("optypeList", optypeList);
		request.setAttribute("provinceList", provinceList);
		request.setAttribute("vocationList", vocationList);
		

		request.setAttribute("histList", histList);

		return new ActionForward("/admin/group/grhistlist.jsp");
	}

	public GroupDistributeServiceDAO getGroupDistributeserviceDAO() {
		return groupDistributeserviceDAO;
	}

	public void setGroupDistributeserviceDAO(
			GroupDistributeServiceDAO groupDistributeserviceDAO) {
		this.groupDistributeserviceDAO = groupDistributeserviceDAO;
	}
}