package com.test.database.login.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.test.database.login.bean.AdminBean;


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
    
    public List getMenuList(String userName,String passWord)
    {
        Map adminMap = new HashMap();
        adminMap.put("USERNAME", userName);
        adminMap.put("PASSWORD", passWord);
        List<HashMap> mapList = (ArrayList<HashMap>)getSqlMapClientTemplate().queryForList("getAdminMenuList",adminMap);
        return mapList;
    }
}
