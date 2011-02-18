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
//		//����HttpClient��ʵ��   
//		  HttpClient httpClient = new HttpClient();   
//		  //����GET������ʵ��   
//		  GetMethod getMethod = new GetMethod("http://www.1soccer.com/index/live"); 
//		    
//		  //ʹ��ϵͳ�ṩ��Ĭ�ϵĻָ�����   
//		  getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,   
//		    "utf-8"); 
//		  try {   
//		   //ִ��getMethod   
//		   int statusCode = httpClient.executeMethod(getMethod);   
//		   if (statusCode != HttpStatus.SC_OK) {   
//		    System.err.println("Method failed: "  
//		      + getMethod.getStatusLine());   
//		   }   
//		   //��ȡ����   
//		   byte[] responseBody = getMethod.getResponseBody();
//		   strtest.append(new String(responseBody));
//		   //��������   
//		   testword = new String(responseBody);
//		   
//		   System.out.println(testword);
//		   
//		  } catch (HttpException e) {   
//		   //�����쳣��������Э�鲻�Ի��߷��ص�����������   
//		   System.out.println("Please check your provided http address!");   
//		   e.printStackTrace();   
//		  } catch (IOException e) {   
//		   //���������쳣   
//		   e.printStackTrace();   
//		  } finally {   
//		   //�ͷ�����   
//		   getMethod.releaseConnection();   
//		  }
		String url = "http://www.1soccer.com/resources/js/global.js";
        PostMethod postMethod = new UTF8PostMethod(url);
        StringBuilder origin = new StringBuilder();
        origin.setLength(0);
        
        HttpClient httpClient = new HttpClient();
//        getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler()); 
        
        NameValuePair a = new NameValuePair("a","����");
        NameValuePair q = new NameValuePair("q","����");
        NameValuePair[] param = new NameValuePair[]{a,q};
        
        postMethod.setRequestBody(param);
        try {
//            ִ��getMethod
            int statusCode = httpClient.executeMethod(postMethod);
            if (statusCode != HttpStatus.SC_OK) {
                System.err.println("Method failed: "+ postMethod.getStatusLine());
            }else{
//                ������
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
