package com.test.util;

public class BarCode
{
  //根据传入编号生成条形码,采用交叉二五码(ITF二五码)
  public static String itf25(String code,String webContext)
  {
    String[][] barCode = {{"0","0","1","1","0"},
                          {"1","0","0","0","1"},
                          {"0","1","0","0","1"},
                          {"1","1","0","0","0"},
                          {"0","0","1","0","1"},
                          {"1","0","1","0","0"},
                          {"0","1","1","0","0"},
                          {"0","0","0","1","1"},
                          {"1","0","0","1","0"},
                          {"0","1","0","1","0"}};

    StringBuffer codeBuff = new StringBuffer("<img src='"+webContext+"/images/start.gif' width='8' height='43'>");
    String str10 = "<img src='"+webContext+"/images/10.gif' width='2' height='43'>";
    String str20 = "<img src='"+webContext+"/images/20.gif' width='4' height='43'>";
    String str11 = "<img src='"+webContext+"/images/11.gif' width='2' height='43'>";
    String str21 = "<img src='"+webContext+"/images/21.gif' width='4' height='43'>";

    int len = code.length();
    if (len % 2 == 1)
    {
      code = "0" + code;
    }
    else
    {
      len --;
    }
    int i = 0;
    while (i < len)
    {
      int one = 0;
      int two = 0;
      try
      {
        one = Integer.parseInt(code.substring(i,(i+1)));
      }
      catch(Exception exp)
      {
        one = 0;
      }
      try
      {
        two = Integer.parseInt(code.substring((i+1),(i+2)));
      }
      catch(Exception exp)
      {
        two = 0;
      }

      for(int m = 0; m < 5 ; m ++)
      {
        if (barCode[one][m].equals("0"))
        {
          codeBuff.append(str11);
        }
        else
        {
          codeBuff.append(str21);
        }
        if (barCode[two][m].equals("0"))
        {
          codeBuff.append(str10);
        }
        else
        {
          codeBuff.append(str20);
        }
      }

      i = i + 2;
    }
    codeBuff.append("<img src='"+webContext+"/images/end.gif' width='8' height='43'>");
    return(codeBuff.toString());
  }

}