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
					<table>						
						<logic:present name="powerlist">
							<logic:notEmpty name="powerlist">
								<logic:iterate id="power" name="powerlist">
									<logic:equal value="0" name="power" property="parentid">
										<tr><td><html:multibox property="tprows" styleClass="one${power.id}" value="${power.id}" onclick="selectSonAll(this)"></html:multibox>${power.powername}</td></tr>
										<logic:iterate id="power2" name="powerlist">
											<logic:equal value="${power.id}" name="power2" property="parentid">
												<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:multibox  styleClass="two${power.id}" property="tprows" value="${power2.id}"  onclick="selectOneThree(this,'${power.id}')"></html:multibox>${power2.powername}</td></tr>
												<logic:iterate id="power3" name="powerlist">
													<logic:equal value="${power2.id}" name="power3" property="parentid">
														<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<html:multibox  styleClass="three${power2.id}" property="tprows" value="${power3.id}" onclick="selectParentAll(this,'${power.id}','${power2.id}')"></html:multibox>${power3.powername}</td></tr>
													</logic:equal>
												</logic:iterate>		
											</logic:equal>
										</logic:iterate>
									</logic:equal>
	                            </logic:iterate>
							</logic:notEmpty>
						</logic:present><span id="tpower"></span>							
					</table>
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
function selectSonAll(obj){
	//选中所有只项
	var chks = document.getElementsByTagName('input');
	//alert(chks[0].className+"two"+obj.value);
	for(var i=0;i<chks.length;i++){//选中2级
		if(chks[i].className=="two"+obj.value){
			chks[i].checked=obj.checked;
			for(var j=0;j<chks.length;j++){//选中3级
				if(chks[j].className=="three"+chks[i].value){
					chks[j].checked=obj.checked;
				}
			}		
		}
	}
}

function selectParentAll(obj,vid,val){
	//选中所有父项
	var chks = document.getElementsByTagName('input');
	
	for(var i=0;i<chks.length;i++){
		//判断是否有同一级别的其他项选中
		var boolean = true;
		for(var j=0;j<chks.length;j++){
			//alert(chks[j].className+"==three"+val +"----"+chks[j].value+"!="+obj.value);
			if(chks[j].className=="three"+val && chks[j].value!=obj.value){
				if(chks[j].checked){
					boolean = false;
					break;
				}
			}
		}
		
		var booleanTWO = true;
		for(var j=0;j<chks.length;j++){
			if(chks[j].className=="two"+vid && chks[j].value!=val){
				if(chks[j].checked){
					booleanTWO = false;
					break;
				}
			}
		}
		
		//2级选中
		if(chks[i].className=="two"+vid && chks[i].value==val){
			if(obj.checked==true){
				chks[i].checked=obj.checked;
			}else{
				//如果有其他3级项选中，不选的时候不过滤
				if(boolean){
					chks[i].checked=obj.checked;
				}
			}
		}
		//1级选中
		if(chks[i].className=="one"+vid){
			if(obj.checked==true){
				chks[i].checked=obj.checked;
			}else{
				if(boolean && booleanTWO){
					chks[i].checked=obj.checked;
				}
			}
		}
	}
}

function selectOneThree(obj,vid){
	var chks = document.getElementsByTagName('input');
	var boolean = true;
	for(var i=0;i<chks.length;i++){
		var boolean = true;
		//判断父级是否不去选中
		for(var j=0;j<chks.length;j++){
			//alert(chks[j].className+"=="+obj.className +"&&"+ chks[j].value+"!="+obj.value)
			if(chks[j].className==obj.className && chks[j].value!=obj.value){
				if(chks[j].checked){
					boolean = false;
					break;
				}
			}
		}		
		//选中父级
		if(chks[i].className=="one"+vid){
			if(obj.checked){
				chks[i].checked = obj.checked;
			}else{
				if(boolean){
					chks[i].checked = false;
				}
			}
			
		}
		//选中3级
		if(chks[i].className=="three"+obj.value){
			chks[i].checked=obj.checked;
		}
	}
}
</script>
</html:html>
