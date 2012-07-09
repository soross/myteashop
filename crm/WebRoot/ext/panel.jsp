<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/crm/public/ext.jsp"%>
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
      var panel =new Ext.Panel({
          renderTo:'panels',
          title:'用户查询',
          width:"100%",
          height:60,
          contentEl:'content',
          frame:true,
          collapsible:true
      });
    });
  </script>
  <body>
     <div id="panels">
     </div>
     
     <div id="content" class="x-hide-display">
		   <form action="" name="form1">
		      姓名：<input type="text" name="a"/> 
		      年龄：<input type="text" name="b"/>
		      <input type="button" value="查询"/>
		   </form>
		</div>
  </body>
</html>
