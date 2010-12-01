package com.spring25.service.impl;

import com.spring25.dao.ILoginDao;
import com.spring25.service.ILoginService;

public class LoginService implements ILoginService {

	private ILoginDao loginDao;
	
	public ILoginDao getLoginDao() {
		return loginDao;
	}

	public void setLoginDao(ILoginDao loginDao) {
		this.loginDao = loginDao;
	}

	public boolean login(String userName,String password) {
		return this.getLoginDao().login(userName,password);
	}

}
