package com.test.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class New {
	
	/**  
     * ��ȡ���������htmlԴ��  
     * */  
    public static String getHtmlSource(String url)   
    {   
           
        StringBuffer codeBuffer = null;   
        BufferedReader in=null;   
        try  
        {   
           URLConnection uc = new URL(url).openConnection();   
  
            /**  
            * Ϊ�����ƿͻ��˲�ͨ����ҳֱ�Ӷ�ȡ��ҳ����,������ֻ�ܴ�������ύ����.  
             * �������ǿ���ͨ���޸�httpͷ��User-Agent��αװ,�����������������  
             *   
             */  
            uc.setRequestProperty("User-Agent",   
                    "Mozilla/4.0 (compatible; MSIE 5.0; Windows XP; DigExt)");   
  
            // ��ȡurl������   
            in = new BufferedReader(new InputStreamReader(uc   
                    .getInputStream(), "gb2312"));   
            codeBuffer = new StringBuffer();   
            String tempCode = "";   
            // ��buffer�ڵ�ֵ��ȡ����,���浽code��   
            while ((tempCode = in.readLine()) != null)   
            {   
                codeBuffer.append(tempCode).append("\n");   
            }   
            in.close();   
        }   
        catch (MalformedURLException e)   
        {   
            e.printStackTrace();   
        }   
        catch (IOException e)   
        {   
            e.printStackTrace();   
        }   
           
        return codeBuffer.toString();   
    }
    
    public static void main(String[] args){
    	

    	String str =null;
    	str+=New.getHtmlSource("http://www.oksports.com.cn/1000.htm"); 
    	
    	System.out.println(str);
    	
    }   

}
