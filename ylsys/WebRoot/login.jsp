<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/global.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.4.2.js"></script>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=basePath%>css/login/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
    <!--
    body {
	    margin-top: 150px;
    }
    -->
    </style>
    <script language="JavaScript" >
	function login(){
		var username = document.getElementById("username").value;
		var passWord = document.getElementById("passWord").value;
		var code = document.getElementById("txtCode").value;
		if(username.length==0)
		{
			alert("请输入用户名!");
			return;
		}
		else if(passWord.length==0)
		{
			alert("请输入密码!");
			return;
		}
		else if(code.length==0)
		{
			alert("请输入验证码!");
			return;
		}
		else
		{
		  $.ajax( {
				url : domain+'/login.shtml',
				type : 'POST',
				dataType : 'json',
				cache : false,
				async : false,
				data : ({userName : username,passWord : passWord,code : code}),
				timeout : 1000,
				error : function()
				{
					alert('系统有问题！！请联系站长');
				},
				success : function(json) 
				{
					if(json.loginflag=="true"){
					window.location.href='<%=request.getContextPath()%>'+"/fb/fb_main/index.jsp";
					}
					else{
					alert(json.message);
					}		
				}
			});
		}
	}
	</script>
  </head>
  
 <body>
    
<div>
</div>
    <div>
    <table width="549" height="287" border="0" align="center" cellpadding="0" cellspacing="0" background="<%=basePath%>image/login/login_bg.jpg">
      <tr>
        <td width="23"><img src="<%=basePath%>image/login/login_leftbg.jpg" width="23" height="287"></td>
        <td width="503" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="49%" valign="bottom"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="100" valign="top" class="login_text"><div align="left">
                    网站后台管理系统</div></td>
              </tr>
              <tr>
                <td><div align="right"><img src="<%=basePath%>image/login/login_img.jpg" width="104" height="113"></div></td>
              </tr>
            </table></td>
            <td width="2%"><img src="<%=basePath%>image/login/login_line.jpg" width="6" height="287"></td>
            <td width="49%"><div align="right">
              <table width="223" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><img src="<%=basePath%>image/login/login_tit.jpg" width="223" height="30"></td>
                </tr>
                <tr>
                  <td><table width="100%"  border="0" cellspacing="10" cellpadding="0">
                    <tr>
                      <td width="28%"><div align="left">用户名：</div></td>
                      <td width="72%"><div align="left"><SPAN class=style1>
                          <input name="username" type="text" id="username" style="height:18px;width:140px;" />
                      </SPAN></div></td>
                    </tr>
                    <tr>
                      <td><div align="left">密&nbsp;&nbsp;码：</div></td>
                      <td><div align="left"><SPAN class=style1>
                          <input name="passWord" type="password" id="passWord" class="form2" style="height:18px;width:140px;" /></SPAN></div></td>
                    </tr>
                    <tr>
                      <td><div align="left">验证码：</div></td>
                      <td><div align="left">
                          <img id="Image1" src="<%=basePath%>image/login/img.jsp" style="border-width:0px;" />&nbsp;</div></td>
                    </tr>
                    <tr>
                      <td><div align="left">验证码：</div></td>
                      <td><div align="left"><SPAN class=style1>
                          <input name="txtCode" type="text" size="8" id="txtCode" class="form2" style="height:18px;" /></SPAN></div></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td align="center"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><div align="center"><a href="#"></a></div></td>
                      <td><div align="center">
                          <input type="image" name="btnLogin" id="btnLogin" src="<%=basePath%>image/login/login_menu2.jpg" style="border-width:0px;" onclick="login();" /><a href="#"></a></div></td>
                    </tr>
                  </table>
                </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="23"><img src="<%=basePath%>image/login/login_rigbg.jpg" width="23" height="287"></td>
      </tr>
    </table>
    </div>
   
</body>
</html>
