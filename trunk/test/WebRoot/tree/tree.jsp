<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String nodeid = request.getParameter("node");
	System.out.println("当前节点ID:"+nodeid);
	if("00".equals(nodeid)){
		%>
		[{id:'01',text:'系统设置',checked:false},{id:'02',text:'邮件管理',checked:false}]	
		<%
	}else if("01".equals(nodeid)){
	%>
		[{id:'011',text:'用户管理',leaf:true,checked:false},{id:'012',text:'角色管理',leaf:true,checked:false}]
		<%
	}else if("02".equals(nodeid)){
	%>
		[{id:'021',text:'收信箱管理',leaf:true,checked:false},{id:'022',text:'发件箱管理',leaf:true,checked:false}]
		<%
	}
%>