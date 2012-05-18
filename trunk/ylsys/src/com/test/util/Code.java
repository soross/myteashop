package com.test.util;

import java.util.*;
import java.io.*;

public class Code
{

/*-------------------------------------------------------*/
  //取个人账号子串
  //JSP(JAVA)调用方法
  //传入参数:编码,取编码中的第几部分(从0开始计数)
  //传出参数:编码中第几部分的子串
/*  public static String getAccNO_JSP(String str,int no)
  {
    //个人账号编码规则:小区号_顺序号_校验位
    String strNO = "#####_#####_#";
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

    return (str.substring(i2,i2_1));
  }
  //取个人账号位置
  //SQL调用方法
  //传入参数:取编码中的第几部分(从0开始计数)
  //传出参数:二维数组(开始位,终止位)
  public static int[] getAccNO_SQL(int no)
  {
    int [] arrLen = new int[2];
    //个人账号编码规则:小区号_顺序号_校验位
    String strNO = "#####_#####_#";
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
    arrLen[0] = i2 + 1;                 //返回开始位(SQL中开始从1开始)
    arrLen[1] = i2_1;

    return (arrLen);
  }
*/
/*-------------------------------------------------------*/


/*-------------------------------------------------------*/
  //取房屋编号子串
  //JSP(JAVA)调用方法
  //传入参数:编码,取编码中的第几部分(从0开始计数)
  //传出参数:编码中第几部分的子串
  public static String getHouseNO_JSP(String str,int no)
  {
    //房屋编号编码规则:[6]自然幢+[3]单元+[3]楼层+[3]户
    String strNO = "######_###_###_###";
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

    return (str.substring(i2,i2_1));
  }

  //取房屋编号子串位置
  //SQL调用方法
  //传入参数:取编码中的第几部分(从0开始计数)
  //传出参数:二维数组(开始位,终止位)
  public static int[] getHouseNO_SQL(int no)
  {
    int [] arrLen = new int[2];
//  房屋编号编码规则:[6]自然幢+[3]单元+[3]楼层+[3]户
    String strNO = "######_###_###_###";
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
    arrLen[0] = i2 + 1;                 //返回开始位(SQL中开始从1开始)
    arrLen[1] = i2_1;

    return (arrLen);
  }
/*-------------------------------------------------------*/

/*-------------------------------------------------------*/
  //取维修项目编号子串
  //JSP(JAVA)调用方法
  //传入参数:编码,取编码中的第几部分(从0开始计数)
  //传出参数:编码中第几部分的子串
  public static String getSvcPrjNO_JSP(String str,int no)
  {
    //维修项目编号编码规则:小区编号_年度_顺序号
    String strNO = "#####_##_####";
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

    return (str.substring(i2,i2_1));
  }

  //取维修项目编号子串位置
  //SQL调用方法
  //传入参数:取编码中的第几部分(从0开始计数)
  //传出参数:二维数组(开始位,终止位)
  public static int[] getSvcPrjNO_SQL(int no)
  {
    int [] arrLen = new int[2];
    //维修项目编号编码规则:小区编号_年度_顺序号
    String strNO = "#####_##_####";
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
    arrLen[0] = i2 + 1;                 //返回开始位(SQL中开始从1开始)
    arrLen[1] = i2_1;

    return (arrLen);
  }
/*-------------------------------------------------------*/

  public static void main(String []args)
  {
    String str0 ="001111122223344555";
    //JSP(JAVA)中的调用方法
    System.out.println(getHouseNO_JSP(str0,2));
    //SQL中的调用方法
    System.out.println(""+getHouseNO_SQL(2)[0]+"-"+getHouseNO_SQL(2)[1]);

  }
}
