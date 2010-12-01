package com.spring25.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.epgis.platform.base.web.BaseMultiActionController;
import com.spring25.service.ILoginService;

/* ������beanΪspringMVC������������spring�����������͹��� */
@Controller
public class LoginController extends BaseMultiActionController {
	
	/* �Զ�װ�� */
	@Autowired
	private ILoginService loginService;

	public ILoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}

	/* ���ÿ�������login������login.do ��������й���,����ʵ�ֿ��ƹ��ܵ��� @RequestMapping ע�� */
	/*  
	 * springMVC ����������ķ�ʽ�����¼���:
	 * 1��ֱ����classͷ�� @RequestMapping("login.do"),�ܺ���������ķ���ͷ�ϼ�@RequestMapping,�����������ɸÿ������ĸ÷�������
	 * 2���ڷ���ͷ�ϼ� @RequestMapping("login.do"),�������󵽴�ʱ������������������
	 * 3��ͨ���������ÿ��ƴ���������ַֻ��һ��,������ͨ�����������ò�ͬ�ķ���,���ʱ��Ϳ��������ͷ�ϼ�@RequestMapping("users.do")
	 *    ������ͷ�ϼ�@RequestMapping(params="method=login"),����һ����������,���� method=login���������д��Ĳ���
	 * 4����������ı��ύ�������д���,��: @RequestMapping(params="method=login",method=RequestMethod.POST)
	 *    ����ֻ�ܵ��ύ������ POST ʱ login �����Żᴦ�������
	 * */
	@RequestMapping("/login.do")
	public String login(String userName,String password,ModelMap model){
		boolean succeed = this.getLoginService().login(userName,password);
		model.addAttribute("userName", userName);
		/* ����һ��String,������ӦΪ�߼���ͼ������ */
		if(!succeed){
			return "error";
		}
		return "success";
	}
	
}
