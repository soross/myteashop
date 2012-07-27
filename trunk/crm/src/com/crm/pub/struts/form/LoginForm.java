/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.crm.pub.struts.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/** 
 * MyEclipse Struts
 * Creation date: 10-22-2009
 * 
 * XDoclet definition:
 * @struts.form name="loginForm"
 */
public class LoginForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** code property */
	private String code;

	/** password property */
	private String password;

	/** userId property */
	private String userId;
	private String newdate;

	/*
	 * Generated Methods
	 */

	public String getNewdate() {
		return newdate;
	}

	public void setNewdate(String newdate) {
		this.newdate = newdate;
	}

	/** 
	 * 登录客户端验证
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		//定义页面错误消息
		ActionErrors errors = new ActionErrors();
		if("exit".equalsIgnoreCase(request.getParameter("task"))){
			return errors;
		}
		Object user = request.getSession().getAttribute("user");
		if(null==user){
			if(this.userId != null && !"".equals(this.userId)){
				if (!this.userId.matches("^[0-9a-zA-Z]{3,15}$")) {
					errors.add("message", new ActionMessage("用户名为3-15位字母/数字组合!",
							false));
				} else if (this.password != null&& !"".equals(this.password)) {
					if (!this.password.matches("^[0-9a-zA-Z]{3,15}$")) {
						errors.add("message", new ActionMessage(
								"密码为3-15位字母/数字组合!", false));
					} else if (this.code != null && !"".equals(this.code)) {
						if (!this.code.matches("^[0-9]{4}$")) {
							errors.add("message", new ActionMessage("验证码须为4位数字!",
									false));
						}
					} else {
						errors.add("message", new ActionMessage("请输入验证码!", false));
					}
	
				} else {
					errors.add("message",
							new ActionMessage("请输入3-15位有效密码!", false));
				}
			}else{
				errors.add("message", new ActionMessage("请输入用户帐号!",false));
			}
		}
		return errors;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the code.
	 * @return String
	 */
	public String getCode() {
		return code;
	}

	/** 
	 * Set the code.
	 * @param code The code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/** 
	 * Returns the password.
	 * @return String
	 */
	public String getPassword() {
		return password;
	}

	/** 
	 * Set the password.
	 * @param password The password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/** 
	 * Returns the userId.
	 * @return String
	 */
	public String getUserId() {
		return userId;
	}

	/** 
	 * Set the userId.
	 * @param userId The userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
}