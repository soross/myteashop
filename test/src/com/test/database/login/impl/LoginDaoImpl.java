package com.test.database.login.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


/**
 * @author fanml
 *
 */
@SuppressWarnings("unchecked")
public class LoginDaoImpl  extends SqlMapClientDaoSupport
{
    public int checkAdmin(String userName,String passWord)
    {
        Map adminMap = new HashMap();
        adminMap.put("USERNAME", userName);
        adminMap.put("PASSWORD", passWord);
        int count = (Integer)getSqlMapClientTemplate().queryForObject("checkAdmin",adminMap);
        return count;
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
