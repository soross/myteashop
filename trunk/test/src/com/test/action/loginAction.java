package com.test.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

import java.io.IOException;   
import org.apache.commons.httpclient.*;   
import org.apache.commons.httpclient.methods.GetMethod;   
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import com.test.util.BasicAction;

import com.test.util.BasicAction;

@SuppressWarnings("unchecked")
public class loginAction extends BasicAction{
	
	public String login(){
		
		this.before();
		
		StringBuffer strtest = new StringBuffer();
		
		String testword = null;
		Map m = new HashMap();
//		
//		//构造HttpClient的实例   
//		  HttpClient httpClient = new HttpClient();   
//		  //创建GET方法的实例   
//		  GetMethod getMethod = new GetMethod("http://www.1soccer.com/index/live"); 
//		    
//		  //使用系统提供的默认的恢复策略   
//		  getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,   
//		    "utf-8"); 
//		  try {   
//		   //执行getMethod   
//		   int statusCode = httpClient.executeMethod(getMethod);   
//		   if (statusCode != HttpStatus.SC_OK) {   
//		    System.err.println("Method failed: "  
//		      + getMethod.getStatusLine());   
//		   }   
//		   //读取内容   
//		   byte[] responseBody = getMethod.getResponseBody();
//		   strtest.append(new String(responseBody));
//		   //处理内容   
//		   testword = new String(responseBody);
//		   
//		   System.out.println(testword);
//		   
//		  } catch (HttpException e) {   
//		   //发生异常，可能是协议不对或者返回的内容有问题   
//		   System.out.println("Please check your provided http address!");   
//		   e.printStackTrace();   
//		  } catch (IOException e) {   
//		   //发生网络异常   
//		   e.printStackTrace();   
//		  } finally {   
//		   //释放连接   
//		   getMethod.releaseConnection();   
//		  }
		String url = "http://www.1soccer.com/resources/js/global.js";
        PostMethod postMethod = new UTF8PostMethod(url);
        StringBuilder origin = new StringBuilder();
        origin.setLength(0);
        
        HttpClient httpClient = new HttpClient();
//        getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler()); 
        
        NameValuePair a = new NameValuePair("a","东港");
        NameValuePair q = new NameValuePair("q","餐厅");
        NameValuePair[] param = new NameValuePair[]{a,q};
        
        postMethod.setRequestBody(param);
        try {
//            执行getMethod
            int statusCode = httpClient.executeMethod(postMethod);
            if (statusCode != HttpStatus.SC_OK) {
                System.err.println("Method failed: "+ postMethod.getStatusLine());
            }else{
//                读内容
                System.out.println(postMethod.getResponseBodyAsString());
                strtest.append(postMethod.getResponseBodyAsString());
            }
            
            } catch (HttpException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }finally{
                postMethod.releaseConnection();
            }  
		  m.put("str", strtest.toString());
		  
		  writeMapToJson(m);
		
		  return null;
	}
	
	public static class UTF8PostMethod extends PostMethod{
        public UTF8PostMethod(String url){
            super(url);
        }
        @Override
        public String getRequestCharSet() {
            //return super.getRequestCharSet();
            return "UTF-8";
        }
    }


}
