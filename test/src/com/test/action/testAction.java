package com.test.action;

import java.util.HashMap;
import java.util.Map;

import com.test.sqlmap.TestDaoImpl;
import com.test.util.BasicAction;

public class testAction extends BasicAction{
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
        this.before();
		
		 Map m = new HashMap();
         int flag = 0;
         int code = 0;
         int id = 0;
         try {
            id =  Integer.valueOf(getParam("id").toString());
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
            m = testDao.getMenu(id);
        }
        catch (Exception e)
        {
            // TODO: handle exception
            e.printStackTrace();
            flag = 1;
        }
         m.put("flag", flag);
         m.put("code",code);

       //json·µ»Ø½á¹û
         writeMapToJson(m);
		return null;
	}
		

	
}

