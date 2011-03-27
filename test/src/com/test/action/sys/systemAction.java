package com.test.action.sys;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//=======================跳转增加角色名页面======================
	public String showaddrole(){
		
		this.before();
		
		
		return "showaddrole";
	}

	//=======================检验角色名是否重名页面======================
	public String checkrolename(){
		
		this.before();
		
		String message = null;
    	 
        String checkflag = null;
        
        String rolename =getParam("roleName").toString();
        
        System.out.println("======"+rolename);
        
        Map m = new HashMap();
       
		
		return null;
	}
	
	public SysDaoImpl getSysDao() {
		return sysDao;
	}

	public void setSysDao(SysDaoImpl sysDao) {
		this.sysDao = sysDao;
	}
	

}
