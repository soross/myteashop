package com.test.action.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import com.test.database.login.bean.AdminBean;
import com.test.database.login.bean.MenuBean;
import com.test.database.login.impl.LoginDaoImpl;
import com.test.database.sys.bean.AdminRoleBean;
import com.test.database.sys.bean.RoleBean;
import com.test.util.BasicAction;
import com.test.util.MenuUtil;
import com.test.util.CodeGenerator;
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
    
    private String testid;
    
    private String pwd;
    
    private String user;
    
    private String newpwd;
    
    private String userid;

    private String userName;//�û���
    private String passWord;//����
    private String checkcode;//��֤��
    private String codeimg;//ͼƬ����֤��
    
    public String login()
    {
        this.before();
       
         Map m = new HashMap();
         String message = null;
         String loginflag = null;
         int flag = 0;
         int code = 0;
         int id = 0;
         int loginnum=0;//�ж��û����Ǵ���
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
            AdminBean loginbean = loginDao.checkAdmin(userName, passWord);//�ж��û����������Ƿ���ȷ
//            m = testDao.getMenu(id);
            //�����ݿ��в�ѯ������List��List����MAP��
           // List menulist = loginDao.getMenuList(userName, passWord);
           // System.out.println("menulist=="+menulist.size());
            if(loginbean==null){
            	loginflag = "false";
            	message = "������Ϣ��������������";
            }
            else{
            	loginflag = "true";
            	//�����ݿ��в�ѯ������List��List����MAP��
                List menulist = loginDao.getMenuList(userName, passWord);
                request.getSession().setAttribute("loginbean", loginbean);
                request.getSession().setAttribute("menulist", menulist);
            }
            MenuUtil mu = new MenuUtil();
            //����ѯ������list�ù����ദ����ض��ṹ��list
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
         	message = "������֤�����󣡣�����������";
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
       //json���ؽ��
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
    
    //=======================����Ա�б�Ĳ�ѯ======================
    
    public String getAdminList(){
        this.before();
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
    	request.setAttribute("adminlist", adminlist);
    	return "listadmin";
    } 
    
    
  //=======================����Ա��ʾ����ҳ��======================
    
    public String showaddadmin(){
    	
    	this.before();
    	
    	List<RoleBean> rolelist = loginDao.getrolelist();
    	
    	request.setAttribute("rolelist", rolelist);
    	
    	return "showaddadmins";
    }
    
    
  //=======================����Ա�������Ա�˺��Ƿ�����ҳ��======================
    
    
    public String checkadminusername(){
    	
    	 this.before();
    	
    	 String message = null;
    	 
         String checkflag = null;
         
         Map m = new HashMap();
    	
    	String username = getParam("userName").toString();
    	
    	AdminBean adminbean = new AdminBean();
    	
    	adminbean.setA_UserName(username);
    	
    	List checkadmin = loginDao.checkadminusername(adminbean);
    	
    	
    	if(checkadmin.size()>0){
    		
    		checkflag="false";
    		
    		message="�û���������";
    		
    	}
    	else{
    		
    		checkflag="true";
    		
    		message="�û�������ʹ��";
    		
    	}
    	
    	m.put("checkflag", checkflag);
    	m.put("message", message);
    	writeMapToJson(m);
    	
    	return null;
    }
    
    
  //=======================����Ա����ҳ��======================
    
    public String addadmin(){
    	
    	this.before();
    	
    	String userId = CodeGenerator.getUUID();
    	
    	AdminBean adminbean = new AdminBean();
    	
    	AdminRoleBean adminrolebean = new AdminRoleBean();
    	
    	adminrolebean.setAR_AdminId(userId);
    	
    	adminrolebean.setAR_RoleId(testid);
    	
    	adminbean.setA_UserId(userId);
    	
    	adminbean.setA_PassWord(pwd);
    	
    	adminbean.setA_UserName(user);
    	
    	loginDao.addadmin(adminbean);
    	
    	loginDao.addadminrole(adminrolebean);
    	
    	AdminBean ab = new AdminBean();
 
    	List adminlist = loginDao.getAdminList(ab);
    	
    	request.setAttribute("adminlist", adminlist);
    	
    	return "addadmins";
    }
    //===========================ɾ������Ա����==========================
    
    public String deladmin(){
    	
    	this.before();
    	
    	String user_id= getParam("userid").toString();
    	
    	AdminBean adminbean = new AdminBean();
    	
    	adminbean.setA_UserId(user_id);
    	
    	AdminRoleBean adminRoleBean = new AdminRoleBean();
    	
    	adminRoleBean.setAR_RoleId(user_id);
    	
    	loginDao.deladmin(adminbean);
    	
    	loginDao.deladminrole(adminRoleBean);
    	
    	AdminBean ab = new AdminBean();
    	 
    	List adminlist = loginDao.getAdminList(ab);
    	
    	request.setAttribute("adminlist", adminlist);
    	
    	return "deladmins";
    	
    }

    //===========================��ʾ���¹���Ա����==========================
    
    
    public String showupdateadmin(){
    	
    	this.before();
    	
    	String user_id= getParam("userid").toString();
    	
    	AdminBean adminbean = new AdminBean();
    	
    	AdminRoleBean adminRoleBean = new AdminRoleBean();
    	
    	adminbean.setA_UserId(user_id);
    	
    	adminRoleBean.setAR_AdminId(user_id);
    	
    	List<RoleBean> rolelist = loginDao.getrolelist();
    	
    	request.setAttribute("rolelist", rolelist);
    	
    	AdminBean adminbeans = loginDao.selectadminusername(adminbean);
    	
    	AdminRoleBean adminrolebean = loginDao.selectadminrole(adminRoleBean);
    	
    	request.setAttribute("adminbeans", adminbeans);
    	
    	request.setAttribute("adminrolebean", adminrolebean);

    	return "showupdateadmins";
    }
   
    //===========================�޸Ĺ���Ա�������==========================
    
    public String updateadminpass(){
    	this.before();
    	
    	AdminBean adminbean = new AdminBean();
    	
    	AdminRoleBean adminrolebean = new AdminRoleBean();
    	
    	adminbean.setA_PassWord(pwd);
    	
    	adminbean.setA_UserId(userid);
    	
    	adminrolebean.setAR_AdminId(userid);
    	
    	adminrolebean.setAR_RoleId(testid);
    	
    	loginDao.updateadminpwd(adminbean);
    	
    	loginDao.updateadminrole(adminrolebean);
    	
    	AdminBean ab = new AdminBean();
   	 
    	List adminlist = loginDao.getAdminList(ab);
    	
    	request.setAttribute("adminlist", adminlist);
    	
    	return "succadminpwd";
    }

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getNewpwd() {
		return newpwd;
	}

	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}

	public String getTestid() {
		return testid;
	}

	public void setTestid(String testid) {
		this.testid = testid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
   
    
}

