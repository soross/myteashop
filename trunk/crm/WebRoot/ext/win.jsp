<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@include file="/crm/public/ext.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="crm/js/win.js"></script>
	</head>
	<script type="text/javascript">
	
   function addWin(aa,bb){
      form1.a.value="aaa";
      form1.b.value="bbb";
      var win =showWin('添加窗口',500,400);
      win.show();  
    }
   
   function edit(){
       form1.a.value="adsfsad";
      form1.b.value="bbafsdfasb";
     var win = showWin('编辑窗口',500,400);
     win.show();
   }
  </script>
	<body>
		<input type="button" value="测试按钮" onclick="edit();">
		<input type="button" value="测试按钮1" onclick="addWin();">
		<div id="content" class="x-hide-display">
		   <form action="" name="form1">
		      姓名：<input type="text" name="a"/><br>
		      年龄：<input type="text" name="b"/>
		   </form>
		</div>
	</body>
</html>
