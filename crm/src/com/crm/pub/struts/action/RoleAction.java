/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.pub.struts.action;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.crm.page.PageUtil;
import com.crm.per.dao.Permission;
import com.crm.pub.po.TPower;
import com.crm.pub.po.TRole;
import com.crm.pub.service.dao.inf.RoleServiceDao;
import com.crm.pub.struts.form.RoleForm;

/**
 * @author lxj 角色Action
 */
public class RoleAction extends DispatchAction {

	private RoleServiceDao roleServiceDao;
	private Permission perDao;

	/**
	 * 查找角色列表
	 */
	public ActionForward roleList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		RoleForm roleForm = (RoleForm) form;
		TRole trole = new TRole();
		BeanUtils.copyProperties(trole, roleForm);
		int rcount = roleServiceDao.getCount(trole);
		PageUtil pageUtil = new PageUtil(request,rcount,2);
		List list = roleServiceDao.searchRoleList(trole,pageUtil.pastart(),pageUtil.getPagesize());
		request.setAttribute("roleList", list);	
		request.setAttribute("pageUtil", pageUtil);
		
		// 32 角色
		List sonList = perDao.getSonPerList("32");
		request.setAttribute("sonPowerByMenu", sonList);
		
		return new ActionForward("/admin/pub/role/rolelist.jsp");
	}

	/**
	 * 跳转添加角色界面
	 */
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		List powerList = roleServiceDao.powerList();
		request.setAttribute("powerList", powerList);
		return new ActionForward("/admin/pub/role/addrole.jsp?task=doAdd");
	}

	/**
	 * 添加角色
	 */
	public ActionForward addRole(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RoleForm roleForm = (RoleForm) form;
		TRole role = new TRole();
		BeanUtils.copyProperties(role, roleForm);
		TRole tr = roleServiceDao.getByName(roleForm.getRolename());
		
		String url = request.getContextPath()+"/admin/role.do?task=roleList";
		String y_url = request.getContextPath()+"/admin/role.do?task=add";
		if(tr==null ){
		  String[] pids = roleForm.getMenus();
		  for (int i = 0; i < pids.length; i++) {
			 TPower power = new TPower();
			 power.setId(new Long(pids[i]));
			 role.getPowers().add(power);
		  }
		 try{
		    roleServiceDao.addRole(role);
		    request.setAttribute("message","添加角色成功,是否继续添加！");
		    request.setAttribute("url", url);
		    request.setAttribute("y_url", y_url);
		    return mapping.findForward("confirm");
		    
		  }catch(Exception e){
		    request.setAttribute("message","添加角色失败！");	
		    request.setAttribute("url", url);
		    return mapping.findForward("result");
		 }
		}else{
			request.setAttribute("message","角色名重复！");	
		    request.setAttribute("url", url);
		    return mapping.findForward("result");
			
		}
	}

	/**
	 * 跳转修改角色界面
	 */
	public ActionForward update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RoleForm roleForm = (RoleForm) form;
		String id = request.getParameter("roleid");
		TRole trole = new TRole();
		trole = roleServiceDao.getRole(new Long(id));
		BeanUtils.copyProperties(roleForm, trole);
		Set<TPower> powers = trole.getPowers();
		String[] menus = new String[powers.size()];
		int index = 0;
		for (TPower power:powers) {
			menus[index] = String.valueOf(power.getId());
			index++;
		}
		roleForm.setMenus(menus);
		List powerList = roleServiceDao.powerList();
		request.setAttribute("powerList", powerList);
		return new ActionForward("/admin/pub/role/addrole.jsp?task=doUpdate");
	}

	/**
	 * 修改角色
	 */
	public ActionForward updateRole(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		RoleForm roleForm = (RoleForm) form;
		TRole role = new TRole();
		BeanUtils.copyProperties(role, roleForm);
		String[] pids = roleForm.getMenus();
		for (int i = 0; i < pids.length; i++) {
			TPower power = new TPower();
			power.setId(new Long(pids[i]));
			role.getPowers().add(power);
		}
		TRole trole = (TRole)roleServiceDao.getRole(new Long(roleForm.getRoleid()));
		trole.setRoleid(role.getRoleid());
		trole.setRolename(role.getRolename());
		trole.setDescript(role.getDescript());
		trole.setPowers(role.getPowers());
		roleServiceDao.updateRole(trole);
		
		String url = request.getContextPath() + "/admin/role.do?task=roleList";
		String currentpage = request.getParameter("tempCurrentpage");
		if (currentpage != null && !"".equals(currentpage)) {
			url += "&currentpage=" + currentpage;
		}
		
		String roleName = request.getParameter("tempRoleName");
		if (roleName != null && !"".equals(roleName)) {
			url += "&rolename=" + roleName;
		}
		
		response.getWriter().print(
				"<script> alert('修改成功！');location.href='"+url+"';</script>");
		return null;
	}
	/**
	 * 删除角色
	 */
	public ActionForward delete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("roleid");
		roleServiceDao.deleteRole(new Long(id));
		
		String url = request.getContextPath() + "/admin/role.do?task=roleList";
		String currentpage = request.getParameter("currentpage");
		if (currentpage != null && !"".equals(currentpage)) {
			url += "&currentpage=" + currentpage;
		}
		String roleName = request.getParameter("rolename");
		if (roleName != null && !"".equals(roleName)) {
			url += "&rolename=" + roleName;
		}
	
		response.getWriter().print(
				"<script> alert('删除成功！');location.href='"+url+"';</script>");
		return null;
	}

	public RoleServiceDao getRoleServiceDao() {
		return roleServiceDao;
	}

	public void setRoleServiceDao(RoleServiceDao roleServiceDao) {
		this.roleServiceDao = roleServiceDao;
	}

	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}
	
	
}