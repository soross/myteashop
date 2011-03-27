package com.test.database.login.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.test.database.login.bean.AdminBean;
import com.test.database.login.bean.MenuBean;
import com.test.database.sys.bean.AdminRoleBean;
import com.test.database.sys.bean.RoleBean;


/**
 * @author fanml
 *
 */
@SuppressWarnings("unchecked")
public class LoginDaoImpl  extends SqlMapClientDaoSupport
{
    public AdminBean checkAdmin(String userName,String passWord)
    {
        AdminBean bean = new AdminBean();
        bean.setA_UserName(userName);
        bean.setA_PassWord(passWord);
        AdminBean adminBean = (AdminBean)getSqlMapClientTemplate().queryForObject("checkAdmin",bean);
        return adminBean;
    }
    
    public List getAdminList(AdminBean adminbean){
    	List<AdminBean> adminlist = (ArrayList<AdminBean>)getSqlMapClientTemplate().queryForList("getAdminList", adminbean);

    	return adminlist;
    }
    
    public List getMenuList(String userName,String passWord)
    {
        AdminBean bean = new AdminBean();
        bean.setA_UserName(userName);
        bean.setA_PassWord(passWord);
        List<MenuBean> mapList = (ArrayList<MenuBean>)getSqlMapClientTemplate().queryForList("getAdminMenuList",bean);
        return mapList;
    }
    
    public List checkadminusername(AdminBean adminbean){
    	
    	List<AdminBean> adminlist = (ArrayList<AdminBean>)getSqlMapClientTemplate().queryForList("checkadminusername", adminbean);
    	
    	return adminlist;
    	
    }
    
    public void addadmin(AdminBean adminbean){
    	
    	getSqlMapClientTemplate().insert("addadmin", adminbean);
    	
    }
    
    public List<RoleBean> getrolelist(){
    	
    	RoleBean rb = new RoleBean();
    	
    	List<RoleBean> rolelist = (ArrayList<RoleBean>)getSqlMapClientTemplate().queryForList("rolelist", rb);
    	
    	return rolelist;
    	
    }
    
    public void addadminrole(AdminRoleBean adminrolebean){
    	
    	getSqlMapClientTemplate().insert("addadminrole", adminrolebean);
    }
    
    public void deladmin(AdminBean adminbean){
    	
    	getSqlMapClientTemplate().delete("deladmin", adminbean);
    }
    
    public void deladminrole(AdminRoleBean adminRoleBean){
    	
    	getSqlMapClientTemplate().delete("deladminrole", adminRoleBean);
    	
    }
    
    public AdminRoleBean selectadminrole(AdminRoleBean adminRoleBean){
    	
    	List<AdminRoleBean> adminrolelist = getSqlMapClientTemplate().queryForList("showadminrole", adminRoleBean);
    	
    	AdminRoleBean adminrolebean = new AdminRoleBean();
    	
    	for (AdminRoleBean adminrole : adminrolelist) {
			
    		adminrolebean.setAR_AdminId(adminrole.getAR_AdminId());
    		adminrolebean.setAR_RoleId(adminrole.getAR_RoleId());
		}
    	
    	return adminrolebean;
    }
    
    public AdminBean selectadminusername(AdminBean adminbean){
    	
    	List<AdminBean> adminlist = getSqlMapClientTemplate().queryForList("selectadminusername", adminbean);
    	
    	AdminBean adminbeans = new AdminBean();
    	
    	for (AdminBean adminBean2 : adminlist) {
			
    		adminbeans.setA_UserId(adminBean2.getA_UserId());
    		adminbeans.setA_UserName(adminBean2.getA_UserName());
    		adminbeans.setA_PassWord(adminBean2.getA_PassWord());
    		
		}
    	
    	return  adminbeans;
    }
    
    
    public void updateadminpwd(AdminBean adminbean){
    	
    	
    	getSqlMapClientTemplate().update("updateadminpwd", adminbean);
    	
    }
    
	public void updateadminrole(AdminRoleBean adminrolebean){
		
		getSqlMapClientTemplate().update("updateadminrole", adminrolebean);
		
	}
}
