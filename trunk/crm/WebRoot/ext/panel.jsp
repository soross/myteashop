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
          title:'�û���ѯ',
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
		      ������<input type="text" name="a"/> 
		      ���䣺<input type="text" name="b"/>
		      <input type="button" value="��ѯ"/>
		   </form>
		</div>
  </body>
</html>
