<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>中间主页面</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				用户管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>用户选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/user?task=updatePower" method="post">

		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					权限配置
				</th>
			</tr>
			<tr>
				<td align="right">
					登入帐号：
				</td>
				<td colspan="3">
					<html:text property="userid" readonly="true"/><span id="uid"></span>
				</td>
			</tr>
			<tr>
				<td align="right">
					权限列表:
				</td>
				<td colspan="3">
					<logic:present name="powerlist">
						<logic:notEmpty name="powerlist">
							<logic:iterate id="power" name="powerlist">
								<logic:equal value="0" name="power" property="parentid">
									<html:multibox property="tprows" styleId="one${power.id}" value="${power.id}" onclick="checkSonAll('${power.id}');"></html:multibox>${power.powername}<br>
									<logic:iterate id="power2" name="powerlist">
										<logic:equal value="${power.id}" name="power2" property="parentid">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:multibox  styleId="two${power.id}" property="tprows" value="${power2.id}"></html:multibox>${power2.powername}<br>
											<logic:iterate id="power3" name="powerlist">
												<logic:equal value="${power2.id}" name="power3" property="parentid">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:multibox  styleId="three${power2.id}" property="tprows" value="${power3.id}"></html:multibox>${power3.powername}<br>
												</logic:equal>
											</logic:iterate>		
										</logic:equal>
									</logic:iterate>
								</logic:equal>
                            </logic:iterate>
						</logic:notEmpty>
					</logic:present><span id="tpower"></span>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="hidden" value="309" name="powerID">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 配置权限 " class="inputs" />
				</td>
			</tr>
		</table>
	</html:form>
	<br>
	&nbsp;
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
<script>
function checkSonAll(pid){
	var cks = document.getElementsByTagName("input");
	for(var i=0;i<cks.length;i++){
		if(cks[i].className=="two"+pid){
			cks[i].check = true;
			for(var j=0;j<cks.length;j++){
				if(cks[j].className=="three"+cks[i].value){
					cks[j].check = true;				
				}
			}			
		}
	}
}



</script>
</html:html>
