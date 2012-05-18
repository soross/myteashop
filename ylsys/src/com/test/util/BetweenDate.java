package com.test.util;
import java.util.*;
import java.text.*;

public class BetweenDate
{

  public static long betweenDate(String depDate,String thisDate)
  {
      Calendar rightNow = Calendar.getInstance();

      DateFormat df = DateFormat.getDateInstance();
      try
      {
        rightNow.setTime(df.parse(depDate));
      }
      catch(Exception e)
      {
      }

      long long1 = rightNow.getTimeInMillis();
      try
      {
        rightNow.setTime(df.parse(thisDate));
      }
      catch(Exception e)
      {
      }
      long long2 = rightNow.getTimeInMillis();

      return((long2-long1)/(24*60*60*1000));

  }

}