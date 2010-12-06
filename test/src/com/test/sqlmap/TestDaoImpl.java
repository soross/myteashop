package com.test.sqlmap;


import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


/**
 * @author fanml
 *
 */
@SuppressWarnings("unchecked")
public class TestDaoImpl  extends SqlMapClientDaoSupport
{
    public int getNum()
    {
        int num = Integer.valueOf(getSqlMapClientTemplate().queryForObject("getID").toString());
        return num;
    }
}
