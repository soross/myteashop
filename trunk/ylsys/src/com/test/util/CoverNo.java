package com.test.util;

import java.util.*;
import java.io.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CoverNo
{

/**
  *科目号编码规则:一级科目_二级科目_三级科目_四级科目
  *若科目级次不足,session中取值为0
  *参数:
**/
  public static String getSessionCoverNo(HttpServletRequest request)
  {
    StringBuffer strBuff = new StringBuffer();

    String  f_firstItem = "";    //一级科目编号
    String f_secondItem = "";    //二级科目编号
    String  f_thirdItem = "";    //三级科目编号
    String f_fourthItem = "";    //四级科目编号
    HttpSession session = request.getSession(true);

    int num = 0;

    //一级科目
    f_firstItem = (String)session.getAttribute("f_firstItem");
    try
    {
      num = Integer.parseInt(f_firstItem);
    }
    catch(Exception exp)
    {
      num = 0;
    }
    for (int i=0; i<num; i++)
    {
      strBuff = strBuff.append("#");
    }


    //二级科目
    f_secondItem = (String)session.getAttribute("f_secondItem");
    try
    {
      num = Integer.parseInt(f_secondItem);
      strBuff = strBuff.append("_");
    }
    catch(Exception exp)
    {
      num = 0;
    }
    for (int i=0; i<num; i++)
    {
      strBuff = strBuff.append("#");
    }

    //三级科目
    f_thirdItem = (String)session.getAttribute("f_thirdItem");
    try
    {
      num = Integer.parseInt(f_thirdItem);
      strBuff = strBuff.append("_");
    }
    catch(Exception exp)
    {
      num = 0;
    }
    for (int i=0; i<num; i++)
    {
      strBuff = strBuff.append("#");
    }

    //四级科目
    f_fourthItem = (String)session.getAttribute("f_fourthItem");
    try
    {
      num = Integer.parseInt(f_fourthItem);
      strBuff = strBuff.append("_");
    }
    catch(Exception exp)
    {
      num = 0;
    }
    for (int i=0; i<num; i++)
    {
      strBuff = strBuff.append("#");
    }

    return strBuff.toString();

  }

/**
  *JSP(JAVA)调用方法
  *取科目号子串
  *传入参数:HttpServletRequest,编码,取编码中的第几部分(从0开始计数)
  *传出参数:编码中第几部分的子串
**/

  public static String getCoverNo_JSP(HttpServletRequest request,String str,int no)
  {
    //科目号编码规则:一级科目_二级科目_三级科目_四级科目
    String strNO = getSessionCoverNo(request);

    String[] arrStr = strNO.split("_");

    if ((no >= arrStr.length)||(no < 0))
    {
      return "";
    }

    int i2 = 0; 
    int i2_1 = 0;

    for (int i=0; i<no; i++)
    {
      i2 += arrStr[i].length();
    }
    i2_1 = i2 + arrStr[no].length();

    try
    {
      return (str.substring(i2,i2_1));
    }
    catch(Exception exp)
    {
      return "";
    }
  }

/**
  *SQL调用方法
  *取科目号位置
  *传入参数:HttpServletRequest,取编码中的第几部分(从0开始计数)
  *传出参数:二维数组(开始位,终止位)
**/

  public static int[] getCoverNo_SQL(HttpServletRequest request,int no)
  {
    int [] arrLen = new int[2];
    //科目号编码规则:一级科目_二级科目_三级科目_四级科目
    String strNO = getSessionCoverNo(request);
    String[] arrStr = strNO.split("_");

    if ((no >= arrStr.length)||(no < 0))
    {
      return null;
    }

    int i2 = 0;
    int i2_1 = 0;

    for (int i=0; i<no; i++)
    {
      i2 += arrStr[i].length();
    }
    i2_1 = i2 + arrStr[no].length();    //返回终止位
    i2_1 = arrStr[no].length();         //返回截取长度
    arrLen[0] = i2 + 1;                 //返回开始位(SQL中截串开始位从1开始)
    arrLen[1] = i2_1;

    return (arrLen);
  }

  public static void main(String []args)
  {

  }
}
