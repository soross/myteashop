package com.test.util;

import java.util.*;

/**
 * �˴���������˵����
 * �������ڣ�(2002-12-18 13:23:29)
 * @author��
 */
public class Date
{
  public Date()
  {
    super();
  }

  //����YYYY-MM-DD ��ʽ
  public static String getDate()
  {
    GregorianCalendar gt = new GregorianCalendar();
    String  lsdate = "";
    int year = gt.get(Calendar.YEAR);
    int month = gt.get(Calendar.MONTH) + 1;
    int date = gt.get(Calendar.DATE);
    lsdate = "" + year + "-" ;
    if (month < 10)
      lsdate = lsdate + "0" + month;
    else
      lsdate += month;
      lsdate += "-";
    if (date < 10)
      lsdate = lsdate + "0" + date;
    else
      lsdate += date;
    return lsdate;
  }

  //����YYYY��MM��DD��**ʱ**��**�� ��ʽ
  public static String getYearTime()
  {
    GregorianCalendar gt = new GregorianCalendar();
    String  lsdate = "";
    int year = gt.get(Calendar.YEAR);
    int month = gt.get(Calendar.MONTH) + 1;
    int date = gt.get(Calendar.DATE);
    int hour = gt.get(Calendar.HOUR_OF_DAY);
    int minute = gt.get(Calendar.MINUTE);
    int second = gt.get(Calendar.SECOND);

    lsdate = "" + year + "��" ;
    if (month < 10)
      lsdate = lsdate + "0" + month;
    else
      lsdate += month;
    lsdate += "��";
    if (date < 10)
      lsdate = lsdate + "0" + date;
    else
      lsdate += date;
    lsdate += "��";

    if (hour < 10)
    {
      lsdate += "0";
    }
    lsdate += "" + hour + "ʱ";

    if (minute < 10)
    {
      lsdate += "0";
    }
    lsdate += "" + minute + "��";

    if (second < 10)
    {
      lsdate += "0";
    }
    lsdate += "" + second + "��";

    return lsdate;
  }


  //����YYYYMMDD ��ʽ
  public static String getYmd()
  {
    GregorianCalendar gc = new GregorianCalendar();
    String  ymd = "";
    int ye = gc.get(Calendar.YEAR);
    int mo = gc.get(Calendar.MONTH) + 1;
    int da = gc.get(Calendar.DATE);
    ymd = "" + ye ;
    if (mo < 10)
      ymd = ymd + "0" + mo;
    else
      ymd += mo;
    if (da < 10)
      ymd = ymd + "0" + da;
    else
      ymd += da;
    return ymd;
  }

  public static int getHour()
  {
    GregorianCalendar dt = new GregorianCalendar();
    return dt.get(Calendar.HOUR) + 12 * dt.get(Calendar.AM_PM);
  }

  public static int getMinute()
  {
    GregorianCalendar dt = new GregorianCalendar();
    return dt.get(Calendar.MINUTE);
  }

  public static int getHowLong(int initHour,int initMinute)
  {
    GregorianCalendar dt = new GregorianCalendar();
    return (dt.get(Calendar.HOUR) + 12 * dt.get(Calendar.AM_PM)-initHour)*60+dt.get(Calendar.MINUTE)-initMinute;
  }

  //����YYYY ��ʽ
  public static int getYear()
  {
    GregorianCalendar gt = new GregorianCalendar();
    int year = gt.get(Calendar.YEAR);
    return year;
  }
  public static int getMonth()
  {
    GregorianCalendar gt = new GregorianCalendar();
    int year = gt.get(Calendar.MONTH);
    return year;
  }
  
}