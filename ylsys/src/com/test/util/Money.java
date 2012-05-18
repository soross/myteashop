package com.test.util;

public  class Money
{
  /*----传入参数为String时。
  -----*/
  public static String RMB(String moneyNum)
  {

    String numwei = "拾佰仟万拾佰仟亿拾佰仟万拾佰仟亿拾佰仟万拾佰仟亿";
    String numshu = "零壹贰叁肆伍陆柒捌玖拾";
    String bstr = "";
    try
    {
      if(moneyNum.trim().equals(""))//传入为空字符串时
      {
        moneyNum = "0.0";
      }
      double money = Double.parseDouble(AddZero.round(Double.parseDouble(moneyNum),2));
      AddZero.format(money,2);

      String toMoney = "";
      if (money < 0.0)
      {
        toMoney = "负";
      }
      money = Math.abs(money);


      String num = String.valueOf((int)(money));
      if (money < 1)
      {
        toMoney = toMoney + "零";
      }
      else
      {
        for(int i =0;i<num.length();i++)
        {
          bstr = num.substring(i,i+1);
          int lenNum = num.length() - i;
          toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1);
          if(lenNum>1)
          {
            if(bstr.equals("0"))
            {
              if((numwei.substring(lenNum-2,lenNum-1).equals("万"))||(numwei.substring(lenNum-2,lenNum-1).equals("亿")))
              {
                while(toMoney.substring(toMoney.length()-1,toMoney.length()).equals("零"))
                {
                  toMoney = toMoney.substring(0,toMoney.length() - 1);
                }
                toMoney = toMoney + numwei.substring(lenNum-2,lenNum-1);
              }
            }
            else
            {
              toMoney = toMoney + numwei.substring(lenNum-2,lenNum-1);
            }
          }
          toMoney = toMoney.replaceAll("零零","零");
        }
      }
      String numrmb = "元角分";
      toMoney = toMoney + numrmb.substring(0,1);
      if(money!=Double.parseDouble(num))
      {
        num = String.valueOf(AddZero.round(money-Double.parseDouble(num),(double)2)).trim();
        num = AddZero.format(num,2);
        bstr = num.substring(2,3);

        toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1) + numrmb.substring(1,2);
        bstr = num.substring(3,4);
        if(bstr.equals("")||bstr.equals("0"))
        {
          toMoney = toMoney + "整";
         }
        else
        {
           toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1) + numrmb.substring(2,3);
         }

      }
      else
      {
        toMoney = toMoney + "整";
      }

      toMoney = toMoney.replaceAll("亿万","亿");
      if (money >= 1)
      {
        toMoney = toMoney.replaceAll("零元","元");
      }
      if ((money < 1)&&(money > 0.0))
      {
        toMoney = toMoney.replaceAll("零元","");
      }
      if ((money < 0.1)&&(money > 0.0))
      {
        toMoney = toMoney.replaceAll("零角","");
      }


      return toMoney;
    }
    catch(Exception e)
    {
      return "Err:"+e;
    }
  }





  /*----传入参数为double时。
  -----*/




    public static String RMB(double moneyNum)
    {

      String numwei = "拾佰仟万拾佰仟亿拾佰仟万拾佰仟亿拾佰仟万拾佰仟亿";
      String numshu = "零壹贰叁肆伍陆柒捌玖拾";
      String bstr = "";
      try
      {
        double money = Double.parseDouble(AddZero.round(moneyNum,2));
        AddZero.format(money,2);

        String toMoney = "";
        if (money < 0.0)
        {
          toMoney = "负";
        }
        money = Math.abs(money);


        String num = String.valueOf((int)(money));
        if (money < 1)
        {
          toMoney = toMoney + "零";
        }
        else
        {
          for(int i =0;i<num.length();i++)
          {
            bstr = num.substring(i,i+1);
            int lenNum = num.length() - i;
            toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1);
            if(lenNum>1)
            {
              if(bstr.equals("0"))
              {
                if((numwei.substring(lenNum-2,lenNum-1).equals("万"))||(numwei.substring(lenNum-2,lenNum-1).equals("亿")))
                {
                  while(toMoney.substring(toMoney.length()-1,toMoney.length()).equals("零"))
                  {
                    toMoney = toMoney.substring(0,toMoney.length() - 1);
                  }
                  toMoney = toMoney + numwei.substring(lenNum-2,lenNum-1);
                }
              }
              else
              {
                toMoney = toMoney + numwei.substring(lenNum-2,lenNum-1);
              }
            }
            toMoney = toMoney.replaceAll("零零","零");
          }
        }
        String numrmb = "元角分";
        toMoney = toMoney + numrmb.substring(0,1);
        if(money!=Double.parseDouble(num))
        {
          num = String.valueOf(AddZero.round(money-Double.parseDouble(num),(double)2)).trim();
          num = AddZero.format(num,2);
          bstr = num.substring(2,3);

          toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1) + numrmb.substring(1,2);
          bstr = num.substring(3,4);
          if(bstr.equals("")||bstr.equals("0"))
          {
            toMoney = toMoney + "整";
           }
          else
          {
             toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1) + numrmb.substring(2,3);
           }

        }
        else
        {
          toMoney = toMoney + "整";
        }

        toMoney = toMoney.replaceAll("亿万","亿");
        if (money >= 1)
        {
          toMoney = toMoney.replaceAll("零元","元");
        }

        return toMoney;
      }
      catch(Exception e)
      {
        return "Err:"+e;
      }
  }
    
    public static void main(String[] agrs){
    	
    	System.out.println(RMB(156.1));
    	
    }

}