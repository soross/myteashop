<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>顶部</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {
		font-size: 12px;
		color: #FFFFFF;
	}
	.STYLE2 {font-size: 9px}
	.STYLE3 {
		color: #033d61;
		font-size: 12px;
	}
	-->
	</style>
	<script type="text/javascript" src="time/numbtime.js"></script>
	
	<script type="text/javascript">
		function exit(){
			if(confirm("确定退出系统吗？")){
				top.location.href="${pageContext.request.contextPath}/login.do?task=exit";
			}
		}		
	</script>
  </head>
  
<body onload="show();">
<!-- 
	<div style="position: absolute; width: 100px; height: 80px; z-index: 1">
		<object id="obj1" border="0" width="400px" height="117px">
			<embed src="images/flash.swf"
				type="application/x-shockwave-flash" name="obj1" width="400px"
				height="117px" quality="High" wmode="transparent">
		</object>
	</div>
 -->
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="images/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="images/main_03.gif">&nbsp;</td>
            <td width="505" background="images/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="images/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr valign="bottom">
            <td width="270" height="38" background="images/main_09.gif">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" ></td>
                <td width="220" nowrap="nowrap" align="right">
                	<span style="width:144px;">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<img
										src="time/cb.gif"
										name="a" style="height: 20px;width:15px;">
								</td>
								<td>
									<img
										src="time/cb.gif"
										name="b" style="height: 20px;width:15px;">
								</td>
								<td>
									<img
										src="time/colon.gif"
										name="c" style="height: 20px;width:15px;">
								</td>
								<td>
									<img
										src="time/cb.gif"
										name="d" style="height: 20px;width:15px;">
								</td>
								<td>
									<img
										src="time/cb.gif"
										name="e" style="height: 20px;width:15px;">
								</td>
								<td>
									<img
										src="time/colon.gif"
										name="f" style="height: 20px;width:15px;">

								</td>
								<td>
									<img
										src="time/cb.gif"
										name="g" style="height: 20px;width:15px;">

								</td>
								<td>
									<img
										src="time/cb.gif"
										name="h" style="height: 20px;width:15px;">
								</td>
								<td>
									<img
										src="time/cam.gif"
										name="j" style="height: 20px;width:15px;">
								</td>
							</tr>
						</table> 
					</span> 
					
                </td>
              </tr>
            </table></td>
            <td width="21"><img src="images/main_11.gif" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="images/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="images/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="images/main_32.gif">
            
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="70%" valign="bottom" class="STYLE1"> 当前用户：${user.userid} </td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td align="right"><table width="50%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr> 
                    <td height="20" >
                    &nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" >
                &nbsp;</td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20"  >
                &nbsp;</td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="75px"><table width="70" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr valign="bottom">
                <td  align="center" height="20" style="cursor:hand;font-size:13" 
                	onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "
                	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                <a href="${pageContext.request.contextPath}/admin/pub/user/updatepass.jsp" target="rightframe" style="text-decoration: none;color:black;">修改密码</a></td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="75px"><table width="70" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr valign="bottom">
                <td align="center" height="20" style="cursor:hand;font-size:13" 
                	onMouseOver="this.style.backgroundImage='url(images/bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#a6d0e7'; "
                	onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"
                	onclick="exit();">
                	安全退出
                </td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="75"><table width="65" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="right" height="20" style="cursor:hand;font-size:13" >                
                </td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" height="20" style="cursor:hand;font-size:13" >                	
                </td>
              </tr>
            </table></td>
            <td width="3"></td>
            <td width="63"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="20" >
                </td>
              </tr>
            </table></td>
            <td align="right">            	         
            </td>
          </tr>
        </table></td>
        <td width="21"><img src="images/main_37.gif" width="21" height="28"></td>
      </tr>
    </table></td>
  </tr>
</table>
  </body>
</html:html>
