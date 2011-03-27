package com.test.database.sys.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.test.database.login.bean.AdminBean;
import com.test.database.login.bean.MenuBean;
import com.test.database.sys.bean.RoleBean;


/**
 * @author cf
 *
 */
@SuppressWarnings("unchecked")
public class SysDaoImpl  extends SqlMapClientDaoSupport
{
   
	public List<RoleBean> getrolelist(RoleBean rolebean){
		
		
		List<RoleBean> rolelist = (ArrayList<RoleBean>)getSqlMapClientTemplate().queryForList("rolelist", rolebean);
		
		return rolelist;
	}
	

	public List<RoleBean> checkrolename(RoleBean rolebean){
		
		List<RoleBean> clecknamelist = (ArrayList<RoleBean>)getSqlMapClientTemplate().queryForList("checkrolename", rolebean);
		
		
		return clecknamelist;
	}
	
	
}
