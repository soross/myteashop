package com.spring25.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.epgis.platform.base.web.BaseMultiActionController;
import com.spring25.service.ILoginService;

/* 描述该bean为springMVC控制器，将由spring容器来创建和管理 */
@Controller
public class LoginController extends BaseMultiActionController {
	
	/* 自动装载 */
	@Autowired
	private ILoginService loginService;

	public ILoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}

	/* 将该控制器的login方法与login.do 的请求进行关联,真正实现控制功能的是 @RequestMapping 注解 */
	/*  
	 * springMVC 控制请求处理的方式有如下几种:
	 * 1、直接在class头加 @RequestMapping("login.do"),能后在请求处理的方法头上加@RequestMapping,表明该请求由该控制器的该方法处理
	 * 2、在方法头上加 @RequestMapping("login.do"),当该请求到达时将会调用这个方法处理
	 * 3、通过参数：该控制处理的请求地址只有一个,但又想通过参数来调用不同的方法,这个时候就可以在类的头上加@RequestMapping("users.do")
	 *    处理方法头上加@RequestMapping(params="method=login"),这是一个分流规则,其中 method=login就是请求中带的参数
	 * 4、根据特殊的表单提交方法进行处理,如: @RequestMapping(params="method=login",method=RequestMethod.POST)
	 *    这样只能当提交方法是 POST 时 login 方法才会处理该请求
	 * */
	@RequestMapping("/login.do")
	public String login(String userName,String password,ModelMap model){
		boolean succeed = this.getLoginService().login(userName,password);
		model.addAttribute("userName", userName);
		/* 返回一个String,该名称应为逻辑视图的名称 */
		if(!succeed){
			return "error";
		}
		return "success";
	}
	
}
