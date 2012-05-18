package com.test.database.advertising.impl;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 * @author fanml
 *
 */
@SuppressWarnings("unchecked")
public class AdvertisingDaoImpl  extends SqlMapClientDaoSupport
{
    public List getAdvertisingList(Map map)
    {
    	List advertisingList = (ArrayList)getSqlMapClientTemplate().queryForList("getAdvertisingList", map);
    	return advertisingList;
    }
    
}
