<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
	<script type="text/javascript">
  Ext.onReady(function(){
     Ext.Msg.confirm("系统提示","${message}",function(btn){
         if(btn=="yes"){
           location.href="${y_url}";
         }else{
           location.href="${url}";
         }
     });
  });
</script>
	<body>
	</body>
</html>
