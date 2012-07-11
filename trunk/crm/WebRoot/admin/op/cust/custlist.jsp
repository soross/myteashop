<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/jn0904" prefix="page"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>中间主页面</title>

	<link rel="STYLESHEET" type="text/css"
		href="${pageContext.request.contextPath}/admin/css/style.css">
	<script>	
	
		function selectAll(obj){
			var chks = document.getElementsByName("phones");
		//	alert(chks.length);
			for(var i=0;i<chks.length;i++){
				chks[i].checked = obj.checked;
			}
		}
		function clickSon(obj){
			if(obj.checked==true){
				document.getElementById("ckb").checked=true;
			}else{
				var chks = document.getElementsByName("phones");
				for(var i=0;i<chks.length;i++){
					if(chks[i].checked == true){
						document.getElementById("ckb").checked=true;
						break;
					}else{
						document.getElementById("ckb").checked=false;
					}
				}
			}
		}
		
		function outToExcel(tmp){
			var chks = document.getElementsByName("phones");
			for(var i = 0; i < chks.length; i++ ){
				if(chks[i].checked==true){
					tag = true;	
					break;
				}
			}			
			if(tag){
				document.getElementById("task").value=tmp;		
				clientForm.submit();
			}else{
				alert("请选择要导出的客户！！");
			}
		}
		function outAllToExcel(temp){			
			document.getElementById("task").value=temp;				
			clientForm.submit();		
		}
	</script>
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				会员管理
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>会员选项：</b><a
					href="${pageContext.request.contextPath}/admin/cust.do?task=custList">会员首页</a>
				|
				<a href="${pageContext.request.contextPath}/admin/cust.do?task=toAddCust">添加会员</a> |
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<table width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorder">
		<tr>
			<th colspan=15 height=25>
				会员列表
			</th>
		</tr>
		<tr align="center" class="thstyle">
			<td width="3%" height=25>
				<input type="checkbox" id="ckb" name="ckb"
					onclick="selectAll(this);" />
			</td>
			<td width="8%">
				编码
			</td>
			<td width="6%">
				姓名
			</td>
			<td width="3%">
				性别
			</td>
			<td width="3%">
				年龄
			</td>
			<td width="5%">
				学历
			</td>
			<td width="6%">
				职业
			</td>
			<td width="8%">
				身份证号
			</td>
			<td width="8%">
				手机号码
			</td>
			<td width="15%">
				常住地址
			</td>
			<td width="8%">
				IC卡号
			</td>
			<td width="5%">
				会员类型
			</td>
			<td width="8%">
				保险号码
			</td>
			<td width="5%">
				状态
			</td>
			<td>
				操作
			</td>
		</tr>

		<logic:present name="custList">
			<logic:empty name="custList">
				<Tr>
					<td colspan="15" height="25">
						没有所要查询的数据...
					</td>
				</Tr>
			</logic:empty>
			<logic:iterate id="cust" name="custList">
					<tr align="center">
						<td height=25>
							<input type="checkbox" name="phones" value="${cust.id}"
								onclick="clickSon(this);" />
						</td>
						<td>
							${cust.code}
						</td>
						<td>
							${cust.username}
						</td>
						<td>
							${cust.garden}
						</td>
						<td>
							${cust.old}
						</td>
						<td>
							${cust.college}
						</td>
						<td>
							${cust.work}
						</td>
						<td >
							${cust.idCode}
						</td>
						<td >
							${cust.mobile}
						</td>
						<td align="left">
							${cust.liveAdd}
						</td>
						<td>
							${cust.icCardCode}
						</td>
						<td>
							${cust.vipType}
						</td>						
						<td>
							${cust.safeCode}
						</td>
						<td >
							${cust.state}
						</td>						
						<td>
							<a href="${pageContext.request.contextPath}/admin/cust.do?task=toUpdateCust&id=${cust.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/cust.do?task=deleteCust&id=${cust.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
						</td>
					</tr>
			</logic:iterate>
		</logic:present>
		<tr>
			<td  align="left" colspan="15" height=25>
				&nbsp;<html:button property="" value="批量导出"
					onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
				<html:button property="" value="全部导出"
					onclick="outAllToExcel('exportAllClient')"></html:button>
			</td>
		</tr>
	
	</table>
	<br>&nbsp;
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
</html:html>
