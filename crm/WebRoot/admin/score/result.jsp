<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<script type="text/javascript" src="ext/ext-2.3.0/adapter/ext/ext-base.js"></script>
		<script type="text/javascript" src="ext/ext-2.3.0/ext-all.js"></script>
		<link rel="stylesheet" type="text/css"
			href="ext/ext-2.3.0/resources/css/ext-all.css" />
  </head>
  <script type="text/javascript">
    Ext.onReady(function(){
	  Ext.MessageBox.show({
	    title:'消息提示',
	    msg:'${message}',
	    width:200,
	    buttons:Ext.MessageBox.OK,
	    icon:Ext.MessageBox.INFO,
	    fn:function(){
	       var url="${url}";
	       if(url==""||url==null){
	           url="${param.url}";
	       }
	       location.href=url;
	    }
	   });
	});
  </script>
  <body>
  </body>
</html>
