package com.test.util;

import java.util.*;
import java.io.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CoverNo
{

/**
  *��Ŀ�ű������:һ����Ŀ_������Ŀ_������Ŀ_�ļ���Ŀ
  *����Ŀ���β���,session��ȡֵΪ0
  *����:
**/
  public static String getSessionCoverNo(HttpServletRequest request)
  {
    StringBuffer strBuff = new StringBuffer();

    String  f_firstItem = "";    //һ����Ŀ���
    String f_secondItem = "";    //������Ŀ���
    String  f_thirdItem = "";    //������Ŀ���
    String f_fourthItem = "";    //�ļ���Ŀ���
    HttpSession session = request.getSession(true);

    int num = 0;

    //һ����Ŀ
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


    //������Ŀ
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

    //������Ŀ
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

    //�ļ���Ŀ
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
  *JSP(JAVA)���÷���
  *ȡ��Ŀ���Ӵ�
  *�������:HttpServletRequest,����,ȡ�����еĵڼ�����(��0��ʼ����)
  *��������:�����еڼ����ֵ��Ӵ�
**/

  public static String getCoverNo_JSP(HttpServletRequest request,String str,int no)
  {
    //��Ŀ�ű������:һ����Ŀ_������Ŀ_������Ŀ_�ļ���Ŀ
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
  *SQL���÷���
  *ȡ��Ŀ��λ��
  *�������:HttpServletRequest,ȡ�����еĵڼ�����(��0��ʼ����)
  *��������:��ά����(��ʼλ,��ֹλ)
**/

  public static int[] getCoverNo_SQL(HttpServletRequest request,int no)
  {
    int [] arrLen = new int[2];
    //��Ŀ�ű������:һ����Ŀ_������Ŀ_������Ŀ_�ļ���Ŀ
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
    i2_1 = i2 + arrStr[no].length();    //������ֹλ
    i2_1 = arrStr[no].length();         //���ؽ�ȡ����
    arrLen[0] = i2 + 1;                 //���ؿ�ʼλ(SQL�нش���ʼλ��1��ʼ)
    arrLen[1] = i2_1;

    return (arrLen);
  }

  public static void main(String []args)
  {

  }
}
