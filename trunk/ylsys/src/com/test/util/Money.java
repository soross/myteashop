package com.test.util;

public  class Money
{
  /*----�������ΪStringʱ��
  -----*/
  public static String RMB(String moneyNum)
  {

    String numwei = "ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��";
    String numshu = "��Ҽ��������½��ƾ�ʰ";
    String bstr = "";
    try
    {
      if(moneyNum.trim().equals(""))//����Ϊ���ַ���ʱ
      {
        moneyNum = "0.0";
      }
      double money = Double.parseDouble(AddZero.round(Double.parseDouble(moneyNum),2));
      AddZero.format(money,2);

      String toMoney = "";
      if (money < 0.0)
      {
        toMoney = "��";
      }
      money = Math.abs(money);


      String num = String.valueOf((int)(money));
      if (money < 1)
      {
        toMoney = toMoney + "��";
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
              if((numwei.substring(lenNum-2,lenNum-1).equals("��"))||(numwei.substring(lenNum-2,lenNum-1).equals("��")))
              {
                while(toMoney.substring(toMoney.length()-1,toMoney.length()).equals("��"))
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
          toMoney = toMoney.replaceAll("����","��");
        }
      }
      String numrmb = "Ԫ�Ƿ�";
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
          toMoney = toMoney + "��";
         }
        else
        {
           toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1) + numrmb.substring(2,3);
         }

      }
      else
      {
        toMoney = toMoney + "��";
      }

      toMoney = toMoney.replaceAll("����","��");
      if (money >= 1)
      {
        toMoney = toMoney.replaceAll("��Ԫ","Ԫ");
      }
      if ((money < 1)&&(money > 0.0))
      {
        toMoney = toMoney.replaceAll("��Ԫ","");
      }
      if ((money < 0.1)&&(money > 0.0))
      {
        toMoney = toMoney.replaceAll("���","");
      }


      return toMoney;
    }
    catch(Exception e)
    {
      return "Err:"+e;
    }
  }





  /*----�������Ϊdoubleʱ��
  -----*/




    public static String RMB(double moneyNum)
    {

      String numwei = "ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��";
      String numshu = "��Ҽ��������½��ƾ�ʰ";
      String bstr = "";
      try
      {
        double money = Double.parseDouble(AddZero.round(moneyNum,2));
        AddZero.format(money,2);

        String toMoney = "";
        if (money < 0.0)
        {
          toMoney = "��";
        }
        money = Math.abs(money);


        String num = String.valueOf((int)(money));
        if (money < 1)
        {
          toMoney = toMoney + "��";
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
                if((numwei.substring(lenNum-2,lenNum-1).equals("��"))||(numwei.substring(lenNum-2,lenNum-1).equals("��")))
                {
                  while(toMoney.substring(toMoney.length()-1,toMoney.length()).equals("��"))
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
            toMoney = toMoney.replaceAll("����","��");
          }
        }
        String numrmb = "Ԫ�Ƿ�";
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
            toMoney = toMoney + "��";
           }
          else
          {
             toMoney = toMoney + numshu.substring(Integer.parseInt(bstr),Integer.parseInt(bstr)+1) + numrmb.substring(2,3);
           }

        }
        else
        {
          toMoney = toMoney + "��";
        }

        toMoney = toMoney.replaceAll("����","��");
        if (money >= 1)
        {
          toMoney = toMoney.replaceAll("��Ԫ","Ԫ");
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