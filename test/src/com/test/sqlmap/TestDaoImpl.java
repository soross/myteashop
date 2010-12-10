package com.test.sqlmap;


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
public class TestDaoImpl  extends SqlMapClientDaoSupport
{
    public Map getMenu(int id)
    {
        Map map = (HashMap)getSqlMapClientTemplate().queryForObject("getMenu",id);
        return map;
    }
    
    public List getMenuList()
    {
        List<HashMap> mapList = (ArrayList<HashMap>)getSqlMapClientTemplate().queryForList("getMenuList");
        return mapList;
    }
}
