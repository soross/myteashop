package com.test.action;

import com.opensymphony.xwork2.ActionSupport;
import com.test.sqlmap.TestDaoImpl;

public class testAction extends ActionSupport{
    private TestDaoImpl testDao;

	public TestDaoImpl getTestDao()
    {
        return testDao;
    }

    public void setTestDao(TestDaoImpl testDao)
    {
        this.testDao = testDao;
    }

    public String test()
	{
		int i = testDao.getNum();
		System.out.println("i======================"+i);
		return SUCCESS;
	}
		
	


	
}

