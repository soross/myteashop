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
     * 获取搜索结果的html源码  
     * */  
    public static String getHtmlSource(String url)   
    {   
           
        StringBuffer codeBuffer = null;   
        BufferedReader in=null;   
        try  
        {   
           URLConnection uc = new URL(url).openConnection();   
  
            /**  
            * 为了限制客户端不通过网页直接读取网页内容,就限制只能从浏览器提交请求.  
             * 但是我们可以通过修改http头的User-Agent来伪装,这个代码就是这个作用  
             *   
             */  
            uc.setRequestProperty("User-Agent",   
                    "Mozilla/4.0 (compatible; MSIE 5.0; Windows XP; DigExt)");   
  
            // 读取url流内容   
            in = new BufferedReader(new InputStreamReader(uc   
                    .getInputStream(), "gb2312"));   
            codeBuffer = new StringBuffer();   
            String tempCode = "";   
            // 把buffer内的值读取出来,保存到code中   
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
