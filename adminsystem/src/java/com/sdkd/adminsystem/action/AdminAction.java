package com.sdkd.adminsystem.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sdkd.adminsystem.bo.admin.AdminBo;
import com.sdkd.adminsystem.entity.Admin;
import com.sdkd.adminsystem.entity.Power;
import com.sdkd.adminsystem.entity.Role;
import com.util.FileUtil;

public class AdminAction extends ActionSupport implements Action {

	/**
	 * 方法功能描述
	 * 
	 * @param 参数
	 * @return 返回
	 * @exception 异常描述
	 */
	private static final long serialVersionUID = 1L;

	private Admin admin;

	private AdminBo adminBo;

	private Integer adminId;

	private String adminName;

	private String adminPassword;

	private String randomCode;

	private List adminList;

	public String getRandomCode() {
		return randomCode;
	}

	public void setRandomCode(String randomCode) {
		this.randomCode = randomCode;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	// 注入业务对象
	public void setAdminBo(AdminBo adminBo) {
		this.adminBo = adminBo;
	}

	// 跳转到登陆界面
	public String adminToLogin() throws Exception {

		return "admintologin";
	}

	// 判断是否可以登陆
	@SuppressWarnings("unchecked")
	public String adminLogin() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		List adminList = adminBo.getAdminList();
		String loginName = this.adminName;
		String loginPassword = this.adminPassword;
		String loginRandomCode = this.randomCode;

		/**
		 * if((session.getAttribute("random").toString()).equalsIgnoreCase(loginRandomCode)) {
		 * if (adminList != null && adminList.size() > 0) { for (int i = 0; i <
		 * adminList.size(); i++) { Admin admin = (Admin) adminList.get(i);
		 * String amdinName = admin.getAdminName(); String adminPassword =
		 * admin.getAdminPassword(); this.adminId = admin.getAdminId(); if
		 * (loginName.equalsIgnoreCase(amdinName) &&
		 * loginPassword.equalsIgnoreCase(adminPassword)) {
		 * session.setAttribute("loginName", loginName);
		 * session.setAttribute("adminID", admin.getAdminId());
		 * 
		 * String s = ServletActionContext.getServletContext().getContextPath();
		 * System.out.print("====================="+s);
		 * 
		 * 
		 * if(createMenuXml(admin.getAdminId(),s)){ return "adminlogin"; } } } }
		 * }else if(!"".equals((session.getAttribute("loginName").toString()))){
		 * return "adminlogin"; }
		 */

		if ((session.getAttribute("random").toString())
				.equalsIgnoreCase(loginRandomCode)) {// 判断验证码
			if (adminList != null && adminList.size() > 0) {
				for (int i = 0; i < adminList.size(); i++) {

					Admin admin = (Admin) adminList.get(i);
					String amdinName = admin.getAdminName();
					String adminPassword = admin.getAdminPassword();

					if (loginName.equalsIgnoreCase(amdinName)
							&& loginPassword.equalsIgnoreCase(adminPassword)) {

						Set<Role> roles = admin.getRoles();
						Set<Power> powers = new TreeSet<Power>();

						for (Role role : roles) {
							powers.addAll(role.getPowers());
						}

						List<Power> powerList = new ArrayList<Power>(powers);
						request.getSession().setAttribute("powers", powerList);
						session.setAttribute("loginUser", admin);

						return "adminlogin";
					}
				}
			}
		}

		return "admintologin";

	}

	// 管理员退出
	public String adminLogout() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("loginName");

		return "adminlogout";
	}

	// 查询所有管理员列表
	public String adminList() throws Exception {

		this.adminList = adminBo.getAdminList();

		return "adminlist";
	}

	@SuppressWarnings("static-access")
	// 去增加管理员页面
	public String addToAdmin() throws Exception {

		return "addtoadmin";
	}

	// 增加管理员
	public String addAdmin() throws Exception {
		Admin addAdmin = new Admin();
		addAdmin.setAdminName(this.adminName);
		addAdmin.setAdminPassword(this.adminPassword);
		adminBo.addAdmin(addAdmin);
		return "addadmin";
	}

	// 删除管理员
	public String deleteAdmin() throws Exception {

		adminBo.deleteAdmin(this.adminId);

		return "deleteadmin";
	}

	// 修改管理员页面
	public String editToAdmin() throws Exception {

		Admin admin = adminBo.getAdmin(this.adminId);
		this.admin = admin;

		return "edittoadmin";
	}

	// 修改管理员
	public String editAdmin() throws Exception {

		Admin editAdmin = new Admin();
		editAdmin.setAdminId(this.adminId);
		editAdmin.setAdminName(this.adminName);
		editAdmin.setAdminPassword(this.adminPassword);
		adminBo.updateAdmin(editAdmin);
		return "editadmin";
	}

	public Object getModel() {
		admin = new Admin();
		return admin;
	}

	public List getAdminList() {
		return this.adminList;
	}

	public void setAdminlist(List adminList) {
		this.adminList = adminList;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	// 创建菜单
	private boolean createMenuXml(Integer adminId, String path) {
		// TODO Auto-generated method stub
		String xml = "<?xml version='1.0' encoding='UTF-8'?><tree id='0'><item text='产品管理' id='-1'><item text='产品列表' id='prodlist.php'/><item text='新增产品' id='addprod.php'/><item text='材料管理' id='cllist.php'/><item text='新增材料' id='addcl.php'/><item text='工种管理' id='joblist.php'/></item>"
				+ "<item text='订单管理' id='-2'>"
				+ "	<item text='订单列表' id='orderlist.php'/>"
				+ "	<item text='新增订单' id='addorder.php'/>"
				+ "	<item text='订单排单' id='pd.php'/>"
				+ "	<item text='出仓记录' id='cclist.php'/>"
				+ "	<item text='新增出仓记录' id='addcc.php'/>" + "</item>";

		FileUtil fileutil = new FileUtil();
		try {
			fileutil
					.input(xml, path + "/inc/codebase/menu_" + adminId + ".xml");
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
