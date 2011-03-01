package com.test.action.login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.test.database.login.bean.AdminBean;
import com.test.database.login.bean.MenuBean;
import com.test.database.login.impl.LoginDaoImpl;
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

    private String userName;//用户名
    private String passWord;//密码
    private String checkcode;//验证码
    private String codeimg;//图片的验证码
    
    public String login()
    {
        this.before();
       
         Map m = new HashMap();
         String message = null;
         String loginflag = null;
         int flag = 0;
         int code = 0;
         int id = 0;
         int loginnum=0;//判断用户名是存在
         codeimg = request.getSession().getAttribute("rand").toString();
         if(codeimg.equals(getParam("code").toString())){
         try {
        	 userName =  getParam("userName").toString();
        	 passWord =  getParam("passWord").toString();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            code = 1;
        }
        
        try
        {
            AdminBean loginbean = loginDao.checkAdmin(userName, passWord);//判断用户名和密码是否正确
//            m = testDao.getMenu(id);
            //从数据库中查询出来的List（List中是MAP）
           // List menulist = loginDao.getMenuList(userName, passWord);
           // System.out.println("menulist=="+menulist.size());
            if(loginbean==null){
            	loginflag = "false";
            	message = "输入信息有误！请重新输入";
            }
            else{
            	loginflag = "true";
            	//从数据库中查询出来的List（List中是MAP）
                List menulist = loginDao.getMenuList(userName, passWord);
                request.getSession().setAttribute("loginbean", loginbean);
                request.getSession().setAttribute("menulist", menulist);
            }
            MenuUtil mu = new MenuUtil();
            //将查询出来的list用工具类处理成特定结构的list
           // List list = mu.checkMenu(menulist, id,"ID","PID","SMENU");
            //this.checkList(list,100);
            //m.put("LIST", list);
        }
        catch (Exception e)
        {
            // TODO: handle exception
            e.printStackTrace();
            flag = 1;
        }
        }
         else{
        	 loginflag = "false";
         	message = "输入验证码有误！！请重新输入";
         }
         m.put("loginflag", loginflag);
         m.put("message", message);
         m.put("flag", flag);
         m.put("code",code);
         List list = loginDao.getMenuList(userName, passWord);
         for (Object o : list)
         {
             MenuBean menu = (MenuBean)o;
             System.out.println(menu.getM_MenuName());
         }
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
    
    //=======================管理员列表的查询======================
    
    public String getAdminList(){
    	System.out.println("进来======");
    	AdminBean ab = new AdminBean();
    	if(getParam("userName")!=null){
    	String username = getParam("userName").toString();
    	ab.setA_UserName(username);	
    	}
    	if(getParam("passWord")!=null){
    	String pwd = getParam("passWord").toString();
    	ab.setA_UserName(pwd);
    	}
    	List adminlist = loginDao.getAdminList(ab); 
    	
    	System.out.println(adminlist.size());
    	
    	this.request.setAttribute("adminlist", adminlist);
    	return "listadmin";
    } 
    
}

