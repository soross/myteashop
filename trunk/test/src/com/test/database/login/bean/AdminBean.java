package com.test.database.login.bean;

import java.io.Serializable;


/**
 * @author fanml
 *
 */
public class AdminBean implements Serializable
{
    /**
     * �û�ID
     */
    private String A_UserId;
    
    /**
     * �û���
     */
    private String A_UserName;
    
    /**
     * �û�����
     */
    private String A_PassWord;

    public String getA_UserId()
    {
        return A_UserId;
    }

    public void setA_UserId(String userId)
    {
        A_UserId = userId;
    }

    public String getA_UserName()
    {
        return A_UserName;
    }

    public void setA_UserName(String userName)
    {
        A_UserName = userName;
    }

    public String getA_PassWord()
    {
        return A_PassWord;
    }

    public void setA_PassWord(String passWord)
    {
        A_PassWord = passWord;
    }
    
}
