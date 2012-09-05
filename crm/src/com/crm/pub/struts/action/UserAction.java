/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.pub.struts.action;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
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
import com.crm.pub.GlobVar;
import com.crm.pub.po.TPower;
import com.crm.pub.po.TRole;
import com.crm.pub.po.TUser;
import com.crm.pub.service.dao.inf.UserServiceDao;
import com.crm.pub.struts.form.UserForm;

/**
 * MyEclipse Struts Creation date: 10-22-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action path="/admin/user" name="userForm" input="/form/user.jsp"
 *                parameter="task" scope="request" validate="true"
 */
public class UserAction extends DispatchAction {
	/*
	 * Generated Methods
	 */

	/**
	 * 用于用户管理的action Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	private UserServiceDao userServiceDao;
	private Permission perDao;

	public UserServiceDao getUserServiceDao() {
		return userServiceDao;
	}

	public void setUserServiceDao(UserServiceDao userServiceDao) {
		this.userServiceDao = userServiceDao;
	}

	// 权限ID--31
	public ActionForward userList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TUser user = new TUser();
		UserForm uf = (UserForm) form;
		BeanUtils.copyProperties(user, uf);
		int rcount = userServiceDao.getCount(user);
		PageUtil pageUtil = new PageUtil(request, rcount,
				GlobVar.PAGESIZE_BY_TEN_DATA);
		List ulist = userServiceDao.searchUser(user, pageUtil);
		request.setAttribute("pageUtil", pageUtil);

		List<TUser> userlist = new ArrayList<TUser>();
		Iterator iter = ulist.iterator();
		while (iter.hasNext()) {
			TUser u = (TUser) iter.next();
			String sex = u.getSex();
			if (sex.equals("0")) {
				u.setSex("男");
			}

			else if (sex.equals("1")) {
				u.setSex("女");
			}
			userlist.add(u);

		}
		request.setAttribute("userList", userlist);

		// 31 用户列表
		List list = perDao.getSonPerList("31");
		request.setAttribute("sonPowerByMenu", list);

		return new ActionForward("/admin/pub/user/userlist.jsp");
	}

	/**
	 * 增加界面
	 * 
	 * @throws InvocationTargetException
	 * @throws Exception
	 */
	public ActionForward toAddUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List rolelist = userServiceDao.searchRole();
		request.setAttribute("rolelist", rolelist);

		// 31 用户列表
		List list = perDao.getSonPerList("31");
		request.setAttribute("sonPowerByMenu", list);

		return new ActionForward("/admin/pub/user/adduser.jsp");
	}

	/**
	 * 增加用户
	 * 
	 * @throws InvocationTargetException
	 * @throws Exception
	 */
	public ActionForward addUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub
		String[] roles = userForm.getTrole();
		TUser users = new TUser();
		BeanUtils.copyProperties(users, userForm);
		if (null != roles) {
			for (int i = 0; i < roles.length; i++) {
				TRole getrole = new TRole();
				getrole.setRoleid(new Long(roles[i]));
				users.getRoles().add(getrole);
			}
		}
		users.setOpendate(new Date());
		users.setSlock("1");
		try {
			userServiceDao.addUser(users);
			response
					.getWriter()
					.print(
							"<script> if(confirm('添加成功,是否继续?')){location.href='"
									+ request.getContextPath()
									+ "/admin/user.do?task=toAddUser';}else{location.href='"
									+ request.getContextPath()
									+ "/admin/user.do?task=userList';}</script>");
		} catch (Exception e) {
			response.getWriter().print(
					"<script> alert('用户名已存在!');location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toAddUser';</script>");
		}
		return null;
	}

	/**
	 * 删除用户
	 * 
	 * @throws IOException
	 */
	public ActionForward deleteUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub
		String id = request.getParameter("id");
		TUser duser = new TUser();
		duser.setUserid(id);
		userServiceDao.deleteUser(duser);

		response.getWriter().print(
				"<script> alert('删除成功!');location.href='"
						+ request.getContextPath()
						+ "/admin/user.do?task=userList';</script>");
		return null;
	}


	/**
	 * 修改用户界面
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward toUpdateUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub

		String id = request.getParameter("id");
		TUser suser = userServiceDao.getUser(id);
		
		Set<TRole> roles = suser.getRoles();
		
		String[] rs = new String[roles.size()];
		int index=0;
		for (TRole role:roles) {
			rs[index] = role.getRoleid().toString();
			index++;
		}

		userForm.setTrole(rs);
		
		List rolelist = userServiceDao.searchRole();
		request.setAttribute("uid", suser.getUserid());
		request.setAttribute("rolelist", rolelist);
		BeanUtils.copyProperties(userForm, suser);

		// 31 用户列表
		List list = perDao.getSonPerList("31");
		request.setAttribute("sonPowerByMenu", list);

		return new ActionForward("/admin/pub/user/updateuser.jsp");
	}

	/**
	 * 修改用户
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward updateUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub
		String[] roles = userForm.getTrole();
		TUser users = userServiceDao.getUser(userForm.getUserid());
		users.setUsername(userForm.getUsername());
		users.setSex(userForm.getSex());
		users.setCode(userForm.getCode());
		users.setEmail(userForm.getEmail());
		users.setTel(userForm.getTel());
		users.setPhone(userForm.getPhone());
		
		for (int i = 0; i < roles.length; i++) {
			TRole getrole = new TRole();
			getrole.setRoleid(new Long(roles[i]));
			users.getRoles().add(getrole);
		}

		boolean bool = userServiceDao.updateUser(users);
		if (bool) {
			response.getWriter().print(
					"<script>if(confirm('修改成功,是否继续修改?')){location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toUpdateUser&id="
							+ users.getUserid() + "';}else{"
							+ "location.href='" + request.getContextPath()
							+ "/admin/user.do?task=userList';}</script>");
		} else {
			response.getWriter().print(
					"<script> alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toUpdateUser&id="
							+ users.getUserid() + "';</script>");
		}
		return null;
	}

	/**
	 * 查询用户
	 */
	public ActionForward searchUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub
		TUser user = new TUser();
		if (!"".equals(userForm.getCuserid()) && null != userForm.getCuserid()) {
			user.setUserid(userForm.getCuserid());
		}
		if (!"".equals(userForm.getCusername())
				&& null != userForm.getCusername()) {
			user.setUsername(userForm.getCusername());
		}
		if (!"".equals(userForm.getChome()) && null != userForm.getChome()) {
			user.setHomeplace(userForm.getChome());
		}

		int rcount = userServiceDao.getCount(user);
		PageUtil pageUtil = new PageUtil(request, rcount, 2);
		List userlist = userServiceDao.searchUser(user, pageUtil);
		request.setAttribute("pageUtil", pageUtil);
		request.setAttribute("userlist", userlist);
		return new ActionForward("/admin/pub/user/usermanage.jsp");
	}

	/**
	 * 修改密码
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward updatePass(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub

		TUser user = new TUser();
		user.setUserid(userForm.getUserid());
		user.setPassword(userForm.getNewpass());
		userServiceDao.updatePass(user);

		response.getWriter().print(
				"<script> alert('修改成功!');location.href='"
						+ request.getContextPath()
						+ "/admin/user.do?task=showUser';</script>");
		return null;

	}

	/**
	 * 冻结用户
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward slockUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TUser user = new TUser();
		user.setUserid(request.getParameter("id"));
		user.setSlock(request.getParameter("state"));
		boolean bool = userServiceDao.updateState(user);

		String msg = "";
		if ("0".equalsIgnoreCase(request.getParameter("state")) && bool) {
			msg = "用户冻结成功";
		} else if ("0".equalsIgnoreCase(request.getParameter("state")) && !bool) {
			msg = "用户冻结失败";
		} else if ("1".equalsIgnoreCase(request.getParameter("state")) && bool) {
			msg = "用户解冻成功";
		} else if ("1".equalsIgnoreCase(request.getParameter("state")) && !bool) {
			msg = "用户解冻失败";
		} else {
			msg = "非法操作";
		}

		response.getWriter().print(
				"<script> alert('" + msg + "!');location.href='"
						+ request.getContextPath()
						+ "/admin/user.do?task=userList';</script>");

		return null;
	}
	
	public ActionForward toUpdatePower(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub

		String id = request.getParameter("id");
		TUser suser = userServiceDao.getUser(id);
		Set<TPower> powers = suser.getPowers();
		String[] ps = new String[powers.size()];
		
		int index=0;
		for (TPower po :powers) {
			ps[index] = po.getId().toString();
			index++;
		}

		userForm.setTprows(ps);
		
		List powerlist = userServiceDao.searchPower();
		request.setAttribute("powerlist", powerlist);
		
		userForm.setUserid(suser.getUserid());

		// 31 用户列表
		List list = perDao.getSonPerList("31");
		request.setAttribute("sonPowerByMenu", list);

		return new ActionForward("/admin/pub/user/updatepower.jsp");
	}
	/**
	 * 修改权限
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward updatePower(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub
		String[] powers = userForm.getTprows();
		TUser users = userServiceDao.getUser(userForm.getUserid());
		//BeanUtils.copyProperties(users, userForm);
		users.getPowers().clear();
		for (int i = 0; i < powers.length; i++) {
			TPower getpower = new TPower();
			getpower.setId(new Long(powers[i]));
			users.getPowers().add(getpower);
		}

		boolean bool = userServiceDao.updatePower(users);
		if (bool) {
			response.getWriter().print(
					"<script>if(confirm('权限配置成功,是否继续配置?')){location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toUpdatePower&id="
							+ users.getUserid() + "';}else{"
							+ "location.href='" + request.getContextPath()
							+ "/admin/user.do?task=userList';}</script>");
		} else {
			response.getWriter().print(
					"<script> alert('权限配置失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toUpdatePower&id="
							+ users.getUserid() + "';</script>");
		}
		return null;
	}
	
	
	
	/**
	 * 跳转修改登入用户界面
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward toUpdateUserByLogin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub

		String id = ((TUser)request.getSession().getAttribute("user")).getUserid();
		TUser suser = userServiceDao.getUser(id);
		BeanUtils.copyProperties(userForm, suser);

		//  60
		List list = perDao.getSonPerList("60");
		request.setAttribute("sonPowerByMenu", list);

		return new ActionForward("/admin/pub/user/updateuserlogin.jsp");
	}
	
	
	
	/**
	 * 修改登入用户
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public ActionForward updateUserByLogin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;// TODO Auto-generated method stub
		TUser users = userServiceDao.getUser(userForm.getUserid());
		users.setUsername(userForm.getUsername());
		users.setSex(userForm.getSex());
		users.setCode(userForm.getCode());
		users.setEmail(userForm.getEmail());
		users.setTel(userForm.getTel());
		users.setPhone(userForm.getPhone());

		boolean bool = userServiceDao.updateUser(users);
		if (bool) {
			response.getWriter().print(
					"<script> alert('修改成功!');location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toUpdateUserByLogin';</script>");
		} else {
			response.getWriter().print(
					"<script> alert('修改失败,请重试!');location.href='"
							+ request.getContextPath()
							+ "/admin/user.do?task=toUpdateUserByLogin';</script>");
		}
		return null;
	}
	public Permission getPerDao() {
		return perDao;
	}

	public void setPerDao(Permission perDao) {
		this.perDao = perDao;
	}

}