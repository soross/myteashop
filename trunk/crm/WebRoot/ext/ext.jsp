<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>CRM管理系统</title>
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
		Ext.BLANK_IMAGE_URL = 'ext/ext-2.3.0/resources/images/default/tree/s.gif'; 
		Ext.onReady(function() {   
	    Ext.MessageBox.confirm = function(title, msg, fn) {   
	        this.show({   
	            title : title,   
	            msg : msg,   
	            buttons:{yes:'确定',no:'取消'},   
	            fn : fn,   
	            icon : this.QUESTION   
	        });   
	       		 return this;   
	   		 }   
   		});    
	</script>
	<body>
	</body>
</html>
