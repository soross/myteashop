package com.test.util;

import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.springframework.util.Assert;
public class StringUtils
{
  private static final byte[] val = { 63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 0, 1, 2, 
    3, 4, 5, 6, 7, 8, 9, 
    63, 63, 63, 63, 
    63, 63, 63, 10, 11, 12, 13, 
    14, 15, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 10, 11, 12, 13, 14, 
    15, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63, 
    63, 63, 63, 63, 
    63, 63, 63, 63, 63, 63, 63 };

  public static String collToDbString(Collection<String> strList)
  {
    StringBuffer result = new StringBuffer();
    if ((strList == null) || (strList.size() == 0)) {
      return result.toString();
    }
    for (String str : strList) {
      str = replaceString(str, "'", "''", false);
      result.append("'").append(str).append("'").append(",");
    }
    return result.substring(0, result.length() - 1);
  }

  public static String arrayToDBStr(String[] array)
  {
    if (array == null) {
      return "''";
    }
    StringBuffer result = new StringBuffer();
    String split = "";
    String[] arrayOfString = array; int j = array.length; for (int i = 0; i < j; ++i) { String str = arrayOfString[i];
      str = replaceString(str, "'", "''", false);
      result.append(split).append("'").append(str).append("'");
      split = ","; }

    return result.toString();
  }

  public static String stringToDBStr(String srcStr)
  {
    String[] tempAttr = stringToArray(srcStr, ',', true);
    return arrayToDBStr(tempAttr);
  }

  public static List<String> arrayToList(String[] array)
  {
    List result = new ArrayList();

    if ((array == null) || (array.length == 0)) {
      return result;
    }

    String[] arrayOfString = array; int j = array.length; for (int i = 0; i < j; ++i) { String item = arrayOfString[i];
      result.add(item); }

    return result;
  }

  public static int getInt(String srcStr, int defaultValue)
  {
    if (isEmpty(srcStr)) return defaultValue;
    int result = defaultValue;
    try {
      Double db = new Double(srcStr);
      result = db.intValue();
    } catch (NumberFormatException e) {
      e.printStackTrace();
    }
    return result;
  }

  public static int getInt(String srcStr)
  {
    return getInt(srcStr, 0);
  }

  public static boolean isNumber(String str)
  {
    if (isEmpty(str)) {
      return false;
    }
    for (int i = 0; i < str.length(); ++i) {
      char a = str.charAt(i);
      if (!Character.isDigit(a)) {
        return false;
      }
    }
    return true;
  }

  public static double getDouble(String srcStr, double defaultValue)
  {
    if (isEmpty(srcStr)) return defaultValue;
    double result = defaultValue;
    try {
      Double db = new Double(srcStr);
      result = db.doubleValue();
    } catch (NumberFormatException e) {
      e.printStackTrace();
    }
    return result;
  }

  public static double getDouble(String srcStr)
  {
    return getDouble(srcStr, 0.0D);
  }

  public static long getLong(String srcStr, long defaultValue)
  {
    if (isEmpty(srcStr)) return defaultValue;
    long result = defaultValue;
    try {
      Double db = new Double(srcStr);
      result = db.longValue();
    } catch (NumberFormatException e) {
      e.printStackTrace();
    }
    return result;
  }

  public static long getLong(String srcStr)
  {
    return getLong(srcStr, 0L);
  }

  public static boolean getBoolean(String srcStr, boolean defaultValue)
  {
    if (isEmpty(srcStr)) return defaultValue;
    boolean result = defaultValue;
    if ("true".equalsIgnoreCase(srcStr.trim())) {
      result = true;
    }
    return result;
  }

  public static boolean getBoolean(String srcStr)
  {
    return getBoolean(srcStr, false);
  }

  public static String getNumFormat(double db, String fmt)
  {
    String retu = "";
    if ((fmt == null) || ("".equals(fmt.trim()))) {
      return Double.toString(db);
    }
    try
    {
      DecimalFormat decimalformat = new DecimalFormat(fmt);
      retu = decimalformat.format(db);
      decimalformat = null;
    }
    catch (IllegalArgumentException iaex) {
      retu = Double.toString(db);
    }
    return retu;
  }

  public static String getNumFormat(double db)
  {
    return getNumFormat(db, "0.00");
  }

  public static String getNumFormat(String numStr, String fmt)
  {
    double db = getDouble(numStr, 0.0D);
    return getNumFormat(db, fmt);
  }

  public static String getNumFormat(String numStr)
  {
    return getNumFormat(numStr, "0.00");
  }

  public static String htmlEncode(String str)
  {
    String retu = null;
    if ((str == null) || ("".equals(str.trim()))) {
      retu = str;
    } else {
      String html = str;
      html = replaceString(html, "&", "&amp;");
      html = replaceString(html, "<", "&lt;");
      html = replaceString(html, ">", "&gt;");
      html = replaceString(html, "\r\n", "\n");
      html = replaceString(html, "\n", "<br>");
      html = replaceString(html, "\t", "    ");
      html = replaceString(html, " ", "&nbsp;");
      html = replaceString(html, "\"", "&quot;");
      retu = html;
      html = null;
    }
    return retu;
  }

  public static String replaceString(String srcStr, String oldStr, String newStr, boolean ignoreCase)
  {
    if ((srcStr == null) || (oldStr == null)) {
      return null;
    }
    StringBuffer resultSB = new StringBuffer();

    String tempStr = srcStr;
    if (ignoreCase) {
      tempStr = srcStr.toUpperCase();
      oldStr = oldStr.toUpperCase();
    }
    int startPos = 0;
    int pos = tempStr.indexOf(oldStr);

    if (pos == -1)
      return srcStr;
    do
    {
      resultSB.append(srcStr.substring(startPos, pos));
      resultSB.append(newStr);

      startPos = pos + oldStr.length();
      pos = tempStr.indexOf(oldStr, pos + newStr.length());

      if (pos == -1)
        resultSB.append(srcStr.substring(startPos, srcStr.length()));
    }
    while (pos != -1);

    return resultSB.toString();
  }

  public static String replaceString(String srcStr, String oldStr, String newStr)
  {
    return org.apache.commons.lang.StringUtils.replace(srcStr, oldStr, newStr);
  }

  public static String[] split(String srcStr, String split, boolean trim)
  {
    if ((isEmpty(srcStr)) || (isEmpty(split))) {
      return null;
    }
    if (trim) {
      srcStr = trim(srcStr, split);
    }
    return split(srcStr, split);
  }

  public static String[] split(String srcStr, String split)
  {
    if ((isEmpty(srcStr)) || (isEmpty(split))) {
      return null;
    }
    int int_ArraySize = subStringCount(srcStr, split);

    if (int_ArraySize == -1) {
      return null;
    }

    srcStr = srcStr + split;

    String[] str_RetArr = new String[int_ArraySize + 1];
    int int_pos = srcStr.indexOf(split);
    int int_ArrayPos = 0;
    while (int_pos != -1) {
      str_RetArr[(int_ArrayPos++)] = srcStr.substring(0, int_pos);
      srcStr = srcStr.substring(int_pos + split.length());
      int_pos = srcStr.indexOf(split);
    }

    return str_RetArr;
  }

  public static int subStringCount(String srcStr, String subStr)
  {
    if ((isEmpty(srcStr)) || (isEmpty(subStr))) {
      return 0;
    }
    int result = 0;
    int int_pos = srcStr.toUpperCase().indexOf(subStr.toUpperCase());
    while (int_pos != -1) {
      ++result;
      int_pos = srcStr.toUpperCase().indexOf(subStr.toUpperCase(), 
        int_pos + subStr.length());
    }
    return result;
  }

  public static String arrayToString(String[] array, String split)
  {
    if ((array == null) || (array.length == 0)) {
      return "";
    }
    if (split == null) {
      split = "";
    }
    StringBuffer strBuf = new StringBuffer("");
    int Len = array.length;
    for (int i = 0; i < Len - 1; ++i) {
      strBuf.append((array[i] == null) ? "" : array[i]).append(split);
    }
    strBuf.append((array[(Len - 1)] == null) ? "" : array[(Len - 1)]);

    return strBuf.toString();
  }

  public static String arrayToString(String[] array)
  {
    return arrayToString(array, ",");
  }

  public static boolean isEmpty(String str)
  {
    return (str == null) || ("".equals(str.trim()));
  }

  public static boolean isNotEmpty(String str)
  {
    return !isEmpty(str);
  }

  public static String decomposeString(String srcStr, String split, int pos)
  {
    String retu = "";
    if ((srcStr == null) || ("".equals(srcStr.trim()))) {
      return "";
    }

    if (pos <= 0) {
      return "";
    }

    if ((split == null) || ("".equals(split))) {
      return srcStr;
    }

    srcStr = srcStr + split;
    String tmpStr = srcStr;

    int splitLen = split.length();
    int tmpLen = tmpStr.length();

    for (int i = 0; i < pos - 1; ++i) {
      int tmpPosi = tmpStr.indexOf(split);
      if ((tmpPosi < 0) || (tmpPosi + splitLen >= tmpLen)) {
        tmpStr = split;
        break;
      }
      tmpStr = tmpStr.substring(tmpPosi + splitLen);
    }

    retu = tmpStr.substring(0, tmpStr.indexOf(split));
    return retu;
  }

  public static String decomposeString(String srcStr, int pos)
  {
    return decomposeString(srcStr, "|", pos);
  }

  public static String trim(String srcStr, char removeChar)
  {
    if (srcStr == null) {
      return null;
    }
    srcStr = srcStr.trim();
    int loInt_begin = 0; int loInt_end = 0;
    int loInt_len = srcStr.length();
    for (int i = 0; i < loInt_len; ++i) {
      if (srcStr.charAt(i) != removeChar) break;
      ++loInt_begin;
    }

    for (int i = 0; i < loInt_len; ++i) {
      if (srcStr.charAt(loInt_len - 1 - i) != removeChar) break;
      ++loInt_end;
    }

    return srcStr.substring(loInt_begin, loInt_len - loInt_end);
  }

  public static String clip(String srcStr, int len, String omitStr)
  {
    if ((srcStr == null) || ("".equals(srcStr))) {
      return srcStr;
    }
    if (len <= 0) {
      return "";
    }

    if (omitStr == null) {
      omitStr = "";
    }

    int sourceLen = srcStr.length();
    if (len >= sourceLen) {
      return srcStr;
    }
    return srcStr.substring(0, len) + omitStr;
  }

  public static String toVisualHtmlString(String srcStr)
  {
    if ((srcStr == null) || (srcStr.equals(""))) {
      return "&nbsp;";
    }
    return srcStr;
  }

  public static String toVisualString(String srcStr)
  {
    if ((srcStr == null) || (srcStr.equals(""))) {
      return "";
    }
    return srcStr;
  }

  public static String pad(String srcStr, int length, char withChar, boolean isPadToEnd)
  {
    if (srcStr == null) {
      return null;
    }
    if (srcStr.length() >= length) {
      return srcStr;
    }

    StringBuffer sb = new StringBuffer(srcStr);
    for (int i = 0; i < length - srcStr.length(); ++i) {
      if (isPadToEnd)
        sb.append(withChar);
      else {
        sb.insert(0, withChar);
      }
    }
    return sb.toString();
  }

  public static String[] stringToArray(String srcStr, char split, boolean trim)
  {
    if (isEmpty(srcStr)) return null;
    if (trim) {
      srcStr = trim(srcStr, split);
    }
    return stringToArray(srcStr, split);
  }

  public static String[] stringToArray(String srcStr, String split, boolean trim)
  {
    if (isEmpty(srcStr)) return null;
    if (trim) srcStr = trim(srcStr, split);
    return stringToArray(srcStr, split);
  }

  public static String[] stringToArray(String srcStr, char split)
  {
    return stringToArray(srcStr, split);
  }

  public static String[] stringToArray(String srcStr, String split)
  {
    if (isEmpty(srcStr)) return null;
    srcStr = trim(srcStr, split);

    int int_ArraySize = subStringCount(srcStr, split);

    if (int_ArraySize == -1) {
      return null;
    }

    srcStr = srcStr + split;

    String[] str_RetArr = new String[int_ArraySize + 1];
    int int_pos = srcStr.indexOf(split);
    int int_ArrayPos = 0;
    while (int_pos != -1) {
      str_RetArr[(int_ArrayPos++)] = srcStr.substring(0, int_pos);
      srcStr = srcStr.substring(int_pos + split.length());
      int_pos = srcStr.indexOf(split);
    }

    return str_RetArr;
  }

  public static List<String> stringToList(String srcStr, char splitChar, boolean trim)
  {
    return stringToList(srcStr, splitChar, trim);
  }

  public static List<String> stringToList(String srcStr, char splitChar)
  {
    return stringToList(srcStr, splitChar, false);
  }

  public static List<String> stringToList(String srcStr, String splitStr)
  {
    return stringToList(srcStr, splitStr, false);
  }

  public static List<String> stringToList(String srcStr, String splitStr, boolean trim)
  {
    if (srcStr == null) {
      return null;
    }
    List resultList = new ArrayList();
    if (!isNotEmpty(srcStr)) {
      return resultList;
    }
    String[] srcStrArr = stringToArray(srcStr, splitStr, trim);
    for (String item : srcStrArr) {
      resultList.add(item);
    }
    return resultList;
  }

  public static final String collToString(Collection<String> collection, String split)
  {
    StringBuffer sb = new StringBuffer();
    String tempSplit = "";
    for (String item : collection) {
      sb.append(tempSplit + item);
      tempSplit = split;
    }
    return sb.toString();
  }

  public static String urlEncode(String sourceUrl)
  {
    Assert.notNull(sourceUrl);
    StringBuffer sbuf = new StringBuffer();
    int i = 0;
    int len = sourceUrl.length();
    while (i < len) {
      int ch = sourceUrl.charAt(i);
      if ((65 <= ch) && (ch <= 90)) {
        sbuf.append((char)ch);
      } else if ((97 <= ch) && (ch <= 122)) {
        sbuf.append((char)ch);
      } else if ((48 <= ch) && (ch <= 57)) {
        sbuf.append((char)ch);
      } else if ((ch == 45) || (ch == 95) || 
        (ch == 46) || (ch == 33) || (ch == 126) || (ch == 42) || 
        (ch == 39) || (ch == 40) || (ch == 41)) {
        sbuf.append((char)ch);
      } else if (ch == 37) {
        int cint = 0;
        if ('u' != sourceUrl.charAt(i + 1)) {
          cint = cint << 4 | val[sourceUrl.charAt(i + 1)];
          cint = cint << 4 | val[sourceUrl.charAt(i + 2)];
          i += 2;
        } else {
          cint = cint << 4 | val[sourceUrl.charAt(i + 2)];
          cint = cint << 4 | val[sourceUrl.charAt(i + 3)];
          cint = cint << 4 | val[sourceUrl.charAt(i + 4)];
          cint = cint << 4 | val[sourceUrl.charAt(i + 5)];
          i += 5;
        }
        sbuf.append((char)cint);
      } else {
        sbuf.append((char)ch);
      }
      ++i;
    }
    return sbuf.toString();
  }

  public static String trim(String srcStr, String ch)
  {
    if ((srcStr == null) || ("".equals(srcStr.trim()))) {
      return srcStr;
    }
    if ((ch == null) || ("".equals(ch))) {
      return srcStr;
    }

    if (ch.length() > srcStr.length()) {
      return srcStr;
    }

    if (srcStr.indexOf(ch) < 0) {
      return srcStr;
    }

    int chLen = ch.length();

    while (srcStr.indexOf(ch, 0) == 0) {
      srcStr = srcStr.substring(chLen);
    }

    int strLen = srcStr.length();
    while (srcStr.indexOf(ch, strLen - chLen) == strLen - chLen) {
      srcStr = srcStr.substring(0, strLen - chLen);
      strLen = srcStr.length();
    }

    return srcStr;
  }

  public static String ltrim(String srcStr, String ch)
  {
    if ((srcStr == null) || ("".equals(srcStr.trim()))) {
      return srcStr;
    }
    if ((ch == null) || ("".equals(ch))) {
      return srcStr;
    }

    if (ch.length() > srcStr.length()) {
      return srcStr;
    }

    if (srcStr.indexOf(ch) < 0) {
      return srcStr;
    }

    int chLen = ch.length();

    if (srcStr.indexOf(ch, 0) == 0) {
      srcStr = srcStr.substring(chLen);
    }

    return srcStr;
  }

  public static String rtrim(String srcStr, String ch)
  {
    if ((srcStr == null) || ("".equals(srcStr.trim()))) {
      return srcStr;
    }
    if ((ch == null) || ("".equals(ch))) {
      return srcStr;
    }

    if (ch.length() > srcStr.length()) {
      return srcStr;
    }

    if (srcStr.indexOf(ch) < 0) {
      return srcStr;
    }

    int chLen = ch.length();
    int strLen = srcStr.length();
    if (srcStr.indexOf(ch, strLen - chLen) == strLen - chLen) {
      srcStr = srcStr.substring(0, strLen - chLen);
      strLen = srcStr.length();
    }

    return srcStr;
  }

  public static String getNullBlankStr(Object obj)
  {
    if (obj == null) {
      return "";
    }
    return obj.toString().trim();
  }

  public static String getSubStr(String str, int width)
  {
    if ((str == null) || (str.length() <= width)) {
      return str;
    }
    return str.substring(0, width) + "...";
  }

  public static String rightPad(String s, int len, char c)
  {
    if (s != null) {
      int needLen = len - s.length();
      if (needLen > 0) {
        for (int i = 0; i < needLen; ++i) {
          s = s + c;
        }
      }
    }
    return s;
  }

  public static String leftPad(String s, int len, char c)
  {
    if (s != null) {
      int needLen = len - s.length();
      if (needLen > 0) {
        for (int i = 0; i < needLen; ++i) {
          s = c + s;
        }
      }
    }
    return s;
  }

  public static void main(String[] args)
    throws Exception
  {
    DecimalFormat df = (DecimalFormat)DecimalFormat.getInstance(Locale.UK);

    df.applyPattern("#,###");
    System.out.println(df.format(23153324.057999998D));
  }

  public static String[] collToArray(Collection itemIds)
  {
    if (itemIds == null) return null;
    return (String[])itemIds.toArray(new String[0]);
  }
}
