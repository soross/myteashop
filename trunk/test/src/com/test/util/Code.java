package com.test.util;

import java.util.*;
import java.io.*;

public class Code
{

/*-------------------------------------------------------*/
  //ȡ�����˺��Ӵ�
  //JSP(JAVA)���÷���
  //�������:����,ȡ�����еĵڼ�����(��0��ʼ����)
  //��������:�����еڼ����ֵ��Ӵ�
/*  public static String getAccNO_JSP(String str,int no)
  {
    //�����˺ű������:С����_˳���_У��λ
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
  //ȡ�����˺�λ��
  //SQL���÷���
  //�������:ȡ�����еĵڼ�����(��0��ʼ����)
  //��������:��ά����(��ʼλ,��ֹλ)
  public static int[] getAccNO_SQL(int no)
  {
    int [] arrLen = new int[2];
    //�����˺ű������:С����_˳���_У��λ
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
    i2_1 = i2 + arrStr[no].length();    //������ֹλ
    i2_1 = arrStr[no].length();         //���ؽ�ȡ����
    arrLen[0] = i2 + 1;                 //���ؿ�ʼλ(SQL�п�ʼ��1��ʼ)
    arrLen[1] = i2_1;

    return (arrLen);
  }
*/
/*-------------------------------------------------------*/


/*-------------------------------------------------------*/
  //ȡ���ݱ���Ӵ�
  //JSP(JAVA)���÷���
  //�������:����,ȡ�����еĵڼ�����(��0��ʼ����)
  //��������:�����еڼ����ֵ��Ӵ�
  public static String getHouseNO_JSP(String str,int no)
  {
    //���ݱ�ű������:[6]��Ȼ��+[3]��Ԫ+[3]¥��+[3]��
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

  //ȡ���ݱ���Ӵ�λ��
  //SQL���÷���
  //�������:ȡ�����еĵڼ�����(��0��ʼ����)
  //��������:��ά����(��ʼλ,��ֹλ)
  public static int[] getHouseNO_SQL(int no)
  {
    int [] arrLen = new int[2];
//  ���ݱ�ű������:[6]��Ȼ��+[3]��Ԫ+[3]¥��+[3]��
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
    i2_1 = i2 + arrStr[no].length();    //������ֹλ
    i2_1 = arrStr[no].length();         //���ؽ�ȡ����
    arrLen[0] = i2 + 1;                 //���ؿ�ʼλ(SQL�п�ʼ��1��ʼ)
    arrLen[1] = i2_1;

    return (arrLen);
  }
/*-------------------------------------------------------*/

/*-------------------------------------------------------*/
  //ȡά����Ŀ����Ӵ�
  //JSP(JAVA)���÷���
  //�������:����,ȡ�����еĵڼ�����(��0��ʼ����)
  //��������:�����еڼ����ֵ��Ӵ�
  public static String getSvcPrjNO_JSP(String str,int no)
  {
    //ά����Ŀ��ű������:С�����_���_˳���
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

  //ȡά����Ŀ����Ӵ�λ��
  //SQL���÷���
  //�������:ȡ�����еĵڼ�����(��0��ʼ����)
  //��������:��ά����(��ʼλ,��ֹλ)
  public static int[] getSvcPrjNO_SQL(int no)
  {
    int [] arrLen = new int[2];
    //ά����Ŀ��ű������:С�����_���_˳���
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
    i2_1 = i2 + arrStr[no].length();    //������ֹλ
    i2_1 = arrStr[no].length();         //���ؽ�ȡ����
    arrLen[0] = i2 + 1;                 //���ؿ�ʼλ(SQL�п�ʼ��1��ʼ)
    arrLen[1] = i2_1;

    return (arrLen);
  }
/*-------------------------------------------------------*/

  public static void main(String []args)
  {
    String str0 ="001111122223344555";
    //JSP(JAVA)�еĵ��÷���
    System.out.println(getHouseNO_JSP(str0,2));
    //SQL�еĵ��÷���
    System.out.println(""+getHouseNO_SQL(2)[0]+"-"+getHouseNO_SQL(2)[1]);

  }
}
