package com.test.database.login.bean;

import java.io.Serializable;

public class MenuBean implements Serializable
{
    private String M_MenuId;//�˵�ID
    
    private String M_MenuName;//�˵�����
    
    private String M_MenuNumber;//�˵����
    
    private String M_MenuParent;//�˵�����
    
    private String M_MenuUrl;//�˵�URL
    
    private int M_MenuType;//�˵�����
    
    private int M_MenuIsDel;//�˵�αɾ��

    public String getM_MenuId()
    {
        return M_MenuId;
    }

    public void setM_MenuId(String menuId)
    {
        M_MenuId = menuId;
    }

    public String getM_MenuName()
    {
        return M_MenuName;
    }

    public void setM_MenuName(String menuName)
    {
        M_MenuName = menuName;
    }

    public String getM_MenuNumber()
    {
        return M_MenuNumber;
    }

    public void setM_MenuNumber(String menuNumber)
    {
        M_MenuNumber = menuNumber;
    }

    public String getM_MenuParent()
    {
        return M_MenuParent;
    }

    public void setM_MenuParent(String menuParent)
    {
        M_MenuParent = menuParent;
    }

    public String getM_MenuUrl()
    {
        return M_MenuUrl;
    }

    public void setM_MenuUrl(String menuUrl)
    {
        M_MenuUrl = menuUrl;
    }

    public int getM_MenuType()
    {
        return M_MenuType;
    }

    public void setM_MenuType(int menuType)
    {
        M_MenuType = menuType;
    }

    public int getM_MenuIsDel()
    {
        return M_MenuIsDel;
    }

    public void setM_MenuIsDel(int menuIsDel)
    {
        M_MenuIsDel = menuIsDel;
    }
    
}
