package com.test.action.login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.test.sqlmap.login.LoginDaoImpl;
import com.test.util.BasicAction;
import com.test.util.MenuUtil;
@SuppressWarnings("unchecked")
public class loginAction extends BasicAction{
    private LoginDaoImpl loginDao;

    public LoginDaoImpl getLoginDao()
    {
        return loginDao;
    }

    public void setLoginDao(LoginDaoImpl loginDao)
    {
        this.loginDao = loginDao;
    }

    private String userName;
    private String passWord;
    
    public String login()
    {
        this.before();
    
         Map m = new HashMap();
         int flag = 0;
         int code = 0;
         int id = 0;
         try {
        	 userName =  getParam("userName").toString();
        	 System.out.println(userName);
        	 passWord =  getParam("passWord").toString();
        	 
        	 System.out.println(passWord);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
//            m = testDao.getMenu(id);
            //从数据库中查询出来的List（List中是MAP）
            List menulist = loginDao.getMenuList(userName, passWord);
            System.out.println("menulist=="+menulist.size());
            MenuUtil mu = new MenuUtil();
            //将查询出来的list用工具类处理成特定结构的list
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

       //json返回结果
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

