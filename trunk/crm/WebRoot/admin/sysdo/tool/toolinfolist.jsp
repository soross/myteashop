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
		function searchLog(){
			location.href="${pageContext.request.contextPath}/admin/client.do?task=searchGradeLog";
		}
		
		
		
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
		
		function showSonData(temp){			
		  var   allNode   =   document.all;   
		  for (var   i=0;   i<allNode.length;   i++) {  
		  	if  (allNode[i].id   ==   temp)
		  	
		  		if(allNode[i].style.display=="none"){
		  			allNode[i].style.display="block";
		  		}else{
		  			allNode[i].style.display="none";
		  		}
 			}	
		}
	</script>
</head>
<body>
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25">
				系统服务操作
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>器具资料选项：</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/toolinfo?task=toolinfoList" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				器具资料查询
			</th>
		</tr>
		<tr>
			<td width="20%" height=25 class="pl20">
			器具编码:	<html:text property="code"  size="15"  />
			</td>
			<td width="20%" height=25 class="pl20">
			器具名称:<html:text property="toolname"  size="15" />
			</td>
			<td>
				<html:submit value="查询"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	<table width="98%" border="0" align="center">
		<tr>
			<td>
				<div style="width:1200px; overflow-x:scroll;">
					<table id="listtab" width="3000px" border="0" align="center" cellpadding="3"
						cellspacing="1" class="tableBorderList">
						<tr>
							<th colspan=34 height=25>
								器具资料列表
							</th>
						</tr>
						<tr align="center" class="thstyle">
							<td height=25>
								<input type="checkbox" id="ckb" name="ckb"
									onclick="selectAll(this);" />全选
							</td>
							<td>
								序号
							</td>
							<td>
								器具名称
							</td>
							<td>
								拼音
							</td>
							<td>
								五笔
							</td>
							<td>
								编码
							</td>
							<td>
								别名
							</td>
							<td>
								别名拼音
							</td>
							<td>
								别名五笔
							</td>	
							<td>
								状态
							</td>
							<td>
								适用对象
							</td>
							<td>
								规格
							</td>	
							<td>
								重量
							</td>	
							<td>
								协助单位
							</td>	
							<td>
								销售单位
							</td>
							<td>
								换算关系
							</td>
							<td>
								材料
							</td>
							<td>
								产地
							</td>
							<td>
								最高库存
							</td>
							<td>
								最低库存
							</td>
							<td>
								生产厂家
							</td>
							<td>
								医保类型
							</td>
							<td>
								医保编码
							</td>
							<td>
								医保名称
							</td>
							<td>
								农保类型
							</td>
							<td>
								农保编码
							</td>
							<td>
								农保名称
							</td>
							<td>
								自付比率
							</td>
							<td>
								最近成本
							</td>
							<td>
								零售单价
							</td>
							<td>
								最高限价
							</td>
							<td>
								批准文号
							</td>
							<td>
								备注
							</td>
							<td width="100px">
								操作
							</td>
						</tr>
				
						 <logic:present name="toolinfoList">
				          	<logic:iterate id="toolinfo" name="toolinfoList">          	 
								<tr align="center" style="cursor: hand;">
									<td height=25>
										<input type="checkbox" name="phones" value="${toolinfo.id}"
											onclick="clickSon(this);" />
									</td>
									<td>
										${toolinfo.id}
									</td>
									<td>
										${toolinfo.toolname}
									</td>
									<td>
										${toolinfo.pinyin}
									</td>
									<td>
										${toolinfo.wubi}
									</td>
									<td>
										${toolinfo.code}
									</td>
									<td>
										${toolinfo.aliasname}
									</td>
									<td>
										${toolinfo.aliaspinyin}
									</td>
									<td>
										${toolinfo.aliaswubi}
									</td>	
									<td>
										<logic:equal value="1" name="toolinfo" property="state">可用</logic:equal>
										<logic:equal value="0" name="toolinfo" property="state">不可用</logic:equal>
									</td>
									<td>
										${toolinfo.obj}
									</td>
									<td>
										${toolinfo.spec}
									</td>	
									<td>
										${toolinfo.weight}
									</td>	
									<td>
										${toolinfo.helpunit}
									</td>	
									<td>
										${toolinfo.saleunit}
									</td>
									<td>
										${toolinfo.conver}
									</td>
									<td>
										${toolinfo.material}
									</td>
									<td>
										${toolinfo.prodadd}
									</td>
									<td>
										${toolinfo.savemax}
									</td>
									<td>
										${toolinfo.savemin}
									</td>
									<td>
										${toolinfo.prodbussion}
									</td>
									<td>
										${toolinfo.ybtype}
									</td>
									<td>
										${toolinfo.ybcode}
									</td>
									<td>
										${toolinfo.ybname}
									</td>
									<td>
										${toolinfo.nbtype}
									</td>
									<td>
										${toolinfo.nbcode}
									</td>
									<td>
										${toolinfo.nbname}
									</td>
									<td>
										${toolinfo.payself}
									</td>
									<td>
										${toolinfo.mincost}
									</td>
									<td>
										${toolinfo.salecost}
									</td>
									<td>
										${toolinfo.maxcost}
									</td>
									<td>
										${toolinfo.refcode}
									</td>
									<td>
										${toolinfo.remark}
									</td>
									<td>
										<a href="${pageContext.request.contextPath}/admin/toolinfo.do?task=toUpdateToolinfo&id=${toolinfo.id}"><img src="${pageContext.request.contextPath}/admin/images/edit.gif" border="0">[修改]</a>
										<a href="${pageContext.request.contextPath}/admin/toolinfo.do?task=deleteToolinfo&id=${toolinfo.id}" onclick="return confirm('是否确定删除!');"><img src="${pageContext.request.contextPath}/admin/images/del.gif" border="0">[删除]</a>
									</td>
								</tr>					
					          </logic:iterate>
				          </logic:present>
						<tr>
							<td  align="left" colspan="1" height=25>
								<!-- 
								&nbsp;<html:button property="" value="批量导出"
									onclick="outToExcel('exportClient')"></html:button>&nbsp;&nbsp;
								<html:button property="" value="全部导出"
									onclick="outAllToExcel('exportAllClient')"></html:button> -->
								&nbsp;
							</td>
							<td align="left" colspan="33" height=25>
								<page:page name="pageUtil" />
							</td>
						</tr>
					
					</table>
					</div>
			</td>
		</tr>
	</table>
	
	<br>&nbsp;
</body><script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>



<script language="javascript"><!--
function ejiaA1(o,a,b,c,d){
	var t=document.getElementById(o).getElementsByTagName("tr");
	for(var i=0;i<t.length;i++){
		t[i].style.backgroundColor=(t[i].sectionRowIndex%2==0)?a:b;
		/**
		t[i].onclick=function(){
			if(this.x!="1"){
				this.x="1";
				this.style.backgroundColor=d;
			}else{
				this.x="0";
				this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
			}
		}**/
		t[i].onmouseover=function(){
			if(this.x!="1")this.style.backgroundColor=c;
		}
		t[i].onmouseout=function(){
			if(this.x!="1")this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
		}
	}
}
//ejiaA1("名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>
</html:html>