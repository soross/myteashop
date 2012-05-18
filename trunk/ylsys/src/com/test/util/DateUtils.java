package com.test.util;

import java.io.PrintStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtils
{
  public static final int DB_STORE_DATE = 1;
  public static final int HYPHEN_DISPLAY_DATE = 2;
  public static final int DOT_DISPLAY_DATE = 3;
  public static final int CN_DISPLAY_DATE = 4;
  public static final int DB_LONG_DATE = 5;

  public static String getCurrTimeStr(int formatType)
  {
    return getTimeStr(new Date(), formatType);
  }

  public static String getTimeStr(Date date, int formatType)
  {
    if ((formatType < 1) || (formatType > 5)) {
      throw new IllegalArgumentException("ʱ���ʽ�����Ͳ��ǺϷ���ֵ��");
    }
    String formatStr = null;
    switch (formatType)
    {
    case 1:
      formatStr = "yyyyMMddHHmmss";
      break;
    case 2:
      formatStr = "yyyy'-'MM'-'dd HH:mm:ss";
      break;
    case 3:
      formatStr = "yyyy.MM.dd HH:mm:ss";
      break;
    case 4:
      formatStr = "yyyy'��'MM'��'dd'��' HH:mm:ss";
      break;
    case 5:
      formatStr = "yyyyMMddHHmmssSS";
    }
    SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
    return sdf.format(date);
  }

  public static String getCurrDateStr(int formatType)
  {
    return getDateStr(new Date(), formatType);
  }

  public static String getDateStr(Date date, int formatType)
  {
    if ((formatType < 1) || (formatType > 4)) {
      throw new IllegalArgumentException("ʱ���ʽ�����Ͳ��ǺϷ���ֵ��");
    }
    String formatStr = null;
    switch (formatType)
    {
    case 1:
      formatStr = "yyyyMMdd";
      break;
    case 2:
      formatStr = "yyyy-MM-dd";
      break;
    case 3:
      formatStr = "yyyy.MM.dd";
      break;
    case 4:
      formatStr = "yyyy'��'MM'��'dd'��'";
    }

    SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
    return sdf.format(date);
  }

  public static String getYearMonthStr(int formatType)
  {
    return getYearMonthStr(new Date(), formatType);
  }

  public static String getYearMonthStr(Date date, int formatType)
  {
    if ((formatType < 1) || (formatType > 4)) {
      throw new IllegalArgumentException("ʱ���ʽ�����Ͳ��ǺϷ���ֵ��");
    }
    String formatStr = null;
    switch (formatType)
    {
    case 1:
      formatStr = "yyyyMM";
      break;
    case 2:
      formatStr = "yyyy-MM";
      break;
    case 3:
      formatStr = "yyyy.MM";
      break;
    case 4:
      formatStr = "yyyy'��'MM'��'";
    }

    SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
    return sdf.format(date);
  }

  public static String toDisplayStr(String dateStr, int formatType)
  {
    if ((formatType < 1) || (formatType > 4)) {
      throw new IllegalArgumentException("ʱ���ʽ�����Ͳ��ǺϷ���ֵ��");
    }
    if ((dateStr == null) || (dateStr.length() < 6) || (dateStr.length() > 14) || 
      (formatType == 1)) {
      return StringUtils.toVisualString(dateStr);
    }
    char[] charArr = (char[])null;
    switch (formatType)
    {
    case 2:
      charArr = new char[] { 
        '-', '-', ' ', ':', ':' };
      break;
    case 3:
      charArr = new char[] { 
        '.', '.', ' ', ':', ':' };
      break;
    case 4:
      charArr = new char[] { '��', '��', ' ', ':', ':' };
      break;
    default:
      charArr = new char[] { 
        '-', '-', ' ', ':', ':' };
    }
    try {
      SimpleDateFormat sdf_1 = null;
      SimpleDateFormat sdf_2 = null;
      switch (dateStr.length())
      {
      case 6:
        sdf_1 = new SimpleDateFormat("yyyyMM");
        sdf_2 = new SimpleDateFormat("yyyy'" + charArr[0] + 
          "'MM");
        break;
      case 8:
        sdf_1 = new SimpleDateFormat("yyyyMMdd");
        sdf_2 = new SimpleDateFormat("yyyy'" + charArr[0] + 
          "'MM'" + charArr[1] + "'dd");
        break;
      case 10:
        sdf_1 = new SimpleDateFormat("yyyyMMddHH");
        sdf_2 = new SimpleDateFormat("yyyy'" + charArr[0] + 
          "'MM'" + charArr[1] + "'dd'" + 
          "+charArr[2]" + 
          "'HH");
        break;
      case 12:
        sdf_1 = new SimpleDateFormat("yyyyMMddHHmm");
        sdf_2 = new SimpleDateFormat("yyyy'" + charArr[0] + 
          "'MM'" + charArr[1] + "'dd'" + 
          charArr[2] + 
          "'HH'" + charArr[3] + "'mm");
        break;
      case 14:
        sdf_1 = new SimpleDateFormat("yyyyMMddHHmmss");
        sdf_2 = new SimpleDateFormat(
          "yyyy'" + charArr[0] + "'MM'" + charArr[1] + 
          "'dd'" + charArr[2] + "'HH'" + charArr[3] + 
          "'mm'" + charArr[4] + "'ss");
        break;
      case 7:
      case 9:
      case 11:
      case 13:
      default:
        return dateStr;
      }
      return sdf_2.format(sdf_1.parse(dateStr)); } catch (ParseException ex) {
    }
    return dateStr;
  }

  public static String toStoreStr(String dateStr)
  {
    if ((dateStr == null) || (dateStr.trim().equals(""))) {
      return "";
    }
    StringBuffer strBuf = new StringBuffer();
    for (int i = 0; i < dateStr.length(); ++i) {
      if ((dateStr.charAt(i) >= '0') && (dateStr.charAt(i) <= '9')) {
        strBuf.append(dateStr.charAt(i));
      }
    }
    return strBuf.toString();
  }

  public static String toStoreStr14(String dateStr, boolean bMax)
  {
    if ((dateStr == null) || (dateStr.trim().equals(""))) {
      return "";
    }
    StringBuffer strBuf = new StringBuffer(toStoreStr(dateStr));
    String retStr = strBuf.toString();
    if (bMax)
      retStr = StringUtils.pad(retStr, 14, '9', true);
    else {
      retStr = StringUtils.pad(retStr, 14, '0', true);
    }
    return retStr;
  }

  public static String birthdayToAge(String birthdayStr)
  {
    if ((birthdayStr == null) || (birthdayStr.length() < 6)) {
      return "";
    }
    int birthYear = Integer.parseInt(birthdayStr.substring(0, 4));
    int birthMonth = Integer.parseInt(birthdayStr.substring(4, 6));
    Calendar cal = new GregorianCalendar();
    int currYear = cal.get(1);
    int currMonth = cal.get(2);
    int age = currYear - birthYear;
    age -= ((currMonth < birthMonth) ? 1 : 0);
    return String.valueOf(age);
  }

  public static String ageToBirthday(int age)
  {
    String currDateStr = getYearMonthStr(1);
    int currDateInt = Integer.parseInt(currDateStr);
    int ageDateInt = currDateInt - age * 100;
    return String.valueOf(ageDateInt);
  }

  public static String nextAgeDate(String birDate)
  {
    int currDateInt = Integer.parseInt(birDate);
    int ageDateInt = currDateInt + 100;
    return String.valueOf(ageDateInt);
  }

  public static String add(String dateTimeStr, int formatType, int detal, int field)
  {
    if ((dateTimeStr == null) || (dateTimeStr.length() < 6))
      return dateTimeStr;
    try
    {
      String formatStr = null;
      switch (formatType)
      {
      case 1:
        formatStr = "yyyyMMddHHmmss";
        break;
      case 2:
        formatStr = "yyyy-MM-dd HH:mm:ss";
        break;
      case 3:
        formatStr = "yyyy.MM.dd HH:mm:ss";
        break;
      case 4:
        formatStr = "yyyy'��'MM'��' HH��mm��ss";
        break;
      default:
        formatStr = "yyyyMMddHHmmss";
      }

      formatStr = formatStr.substring(0, dateTimeStr.length());
      SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
      Date d = sdf.parse(dateTimeStr);
      GregorianCalendar g = new GregorianCalendar();
      g.setTime(d);
      g.add(field, detal);
      d = g.getTime();
      return sdf.format(d);
    } catch (ParseException ex) {
      ex.printStackTrace();
    }return dateTimeStr;
  }

  public static String getDateFormat(Date date, String outFmt)
  {
    if (date == null) {
      return null;
    }
    if ((outFmt == null) || ("".equals(outFmt.trim()))) {
      outFmt = "yyyyMMdd";
    }

    String retu = null;
    SimpleDateFormat dateFormat = null;
    try {
      dateFormat = new SimpleDateFormat(outFmt);
    } catch (IllegalArgumentException iaex) {
      dateFormat = new SimpleDateFormat("yyyyMMdd");
    }
    retu = dateFormat.format(date);

    dateFormat = null;

    return retu;
  }

  public static String getDateFormat(Date date)
  {
    return getDateFormat(date, "yyyyMMdd");
  }

  public static String getDateFormat(String outFmt)
  {
    return getDateFormat(new Date(), outFmt);
  }

  public static String getDateFormat()
  {
    return getDateFormat(new Date(), "yyyyMMdd");
  }

  public static String getDateFormat(long millis, String outFmt)
  {
    Date d = new Date(millis);
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(d);
    String retu = getDateFormat(calendar.getTime(), outFmt);
    calendar = null;
    return retu;
  }

  public static String getDateFormat(String datestr, String inFmt, String outFmt)
    throws ParseException
  {
    if ((datestr == null) || ("".equals(datestr.trim()))) {
      return datestr;
    }

    if ((inFmt == null) || ("".equals(inFmt.trim()))) {
      return datestr;
    }

    if ((outFmt == null) || ("".equals(outFmt.trim()))) {
      outFmt = "yyyyMMdd";
    }

    Date inDate = getDate(datestr, inFmt);

    if (inDate == null) {
      return datestr;
    }

    String retu = getDateFormat(inDate, outFmt);
    inDate = null;
    return retu;
  }

  public static String getDateFormat(String datestr, String inFmt)
    throws ParseException
  {
    return getDateFormat(datestr, inFmt, "yyyyMMdd");
  }

  public static Date getDate(String datestr, String format)
  {
    if (StringUtils.isEmpty(datestr)) {
      return null;
    }
    if (StringUtils.isEmpty(format)) {
      format = "yyyyMMdd";
    }

    try
    {
      SimpleDateFormat dateFormat = new SimpleDateFormat(format);
      dateFormat.setLenient(true);
      return dateFormat.parse(datestr);
    } catch (ParseException e) {
      throw new IllegalArgumentException(e);
    }
  }

  public static Date addDate(Date date, int CALENDARFIELD, int amount)
  {
    if (date == null) {
      return date;
    }
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    calendar.add(CALENDARFIELD, amount);
    return calendar.getTime();
  }

  public static Date addDate(String datestr, int CALENDARFIELD, int amount)
    throws ParseException
  {
    return addDate(getDate(datestr, "yyyyMMdd"), CALENDARFIELD, amount);
  }

  public static int getAge(Date birthday, Date date2)
  {
    if ((birthday == null) || (date2 == null)) {
      return -1;
    }

    if (birthday.after(date2)) {
      return -1;
    }

    int ibdYear = StringUtils.getInt(getDateFormat(birthday, "yyyy"), -1);
    int idate2Year = StringUtils.getInt(getDateFormat(date2, "yyyy"), -1);

    if ((ibdYear < 0) || (idate2Year < 0)) {
      return -1;
    }
    if (ibdYear > idate2Year) {
      return -1;
    }

    return idate2Year - ibdYear + 1;
  }

  public static int getAge(Date birthday)
  {
    return getAge(birthday, new Date());
  }

  public static int getAge(String birthdaystr)
    throws ParseException
  {
    return getAge(getDate(birthdaystr, "yyyyMMdd"));
  }

  public static void main(String[] args) throws Throwable {
    System.out.println(addDate("20081027", 5, 100));

    System.out.println(getCurrTimeStr(1));
    System.out.println(new Date().getTime());
    System.out.println("date:" + 
      getDate("04-1-6", "yy-MM-dd"));
    System.out.println("    " + getCurrTimeStr(1));
    System.out.println("getAge" + getAge(new Date()));
    System.out.println("age..." + birthdayToAge("20040702"));
    System.out.println(".bir...." + ageToBirthday(27));
    System.out.println("here:" + getDateFormat("20010101", "yyyymmdd", "yyyy-mm-dd"));
  }
}
