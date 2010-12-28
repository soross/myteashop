package com.test.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.test.sqlmap.TestDaoImpl;
import com.test.util.BasicAction;
import com.test.util.MenuUtil;
@SuppressWarnings("unchecked")
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
//            m = testDao.getMenu(id);
            List menulist = testDao.getMenuList();
            System.out.println("menulist=="+menulist.size());
            MenuUtil mu = new MenuUtil();
            List list = mu.checkMenu(menulist, id,"ID","PID","SMENU");
            this.checkList(list,100);
            m.put("LIST", list);
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
		
    public void checkList(List list,int id)
    {
        for(int i =0;i<list.size();i++)
        {
            Map map = (HashMap)list.get(i);
            System.out.println("NUM==="+id+",ID=="+map.get("ID")+",NAME=="+map.get("NAME")+",URL=="+map.get("URL")+",PID=="+map.get("PID"));
            List slist = (ArrayList)map.get("SMENU");
            if(slist.size()!=0)
            {
                this.checkList(slist,i);
            }
                
        }
    }
	
}

