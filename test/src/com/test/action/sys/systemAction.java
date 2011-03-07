package com.test.action.sys;

import java.util.List;

import com.test.database.sys.bean.RoleBean;
import com.test.database.sys.impl.SysDaoImpl;
import com.test.util.BasicAction;
@SuppressWarnings("unchecked")
public class systemAction extends BasicAction {
	
	private SysDaoImpl sysDao;
	
	public String getrolelist(){
		
		this.before();
		
		RoleBean rolebean = new RoleBean();
		
		List rolelist = sysDao.getrolelist(rolebean);
		
		request.setAttribute("rolelist", rolelist);
		
		return "rolelist";
		
	}

	public SysDaoImpl getSysDao() {
		return sysDao;
	}

	public void setSysDao(SysDaoImpl sysDao) {
		this.sysDao = sysDao;
	}
	

}
