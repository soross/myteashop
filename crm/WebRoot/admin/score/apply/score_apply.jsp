<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@include file="/ext/ext.jsp"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="jn0904" uri="/jn0904"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>积分申请管理</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/win.js"></script>

	<style type="text/css">
	<!--
	a{text-decoration: none}     
         text{
           width:100px;
           height:20px;
         }
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
	}
	.STYLE1 {font-size: 12px}
	.STYLE3 {font-size: 14px;color:red}
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>

	<script>
		var  highlightcolor='#c1ebff';
		//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
		var  clickcolor='#51b2f6';
		function  changeto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=highlightcolor;
			}
		}
		
		function  changeback(){
			if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
			return
			if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
			//source.style.backgroundColor=originalcolor
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
		
		function  clickto(){
			source=event.srcElement;
			if  (source.tagName=="TR"||source.tagName=="TABLE")
			return;
			while(source.tagName!="TD")
			source=source.parentElement;
			source=source.parentElement;
			cs  =  source.children;
			//alert(cs.length);
			if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor=clickcolor;
			}
			else
			for(i=0;i<cs.length;i++){
				cs[i].style.backgroundColor="";
			}
		}
	</script>

	<script type="text/javascript">
 
   var ischeck = false;
   function addWin(){
      //var content = document.getElementById("check").value;
      var win =showApply('积分申请信息验证',350,280,content);
      win.show();  
    }
   
   function apply(){
     var tel = Ext.get("tel").dom.value;
     Ext.Ajax.request({
        url:'admin/score.do',
        params:{task:'checkClient',tel:tel},
        success:function(response,options){
           	     var result=response.responseText;
           	     var msg = document.getElementById("check");
  		    	 msg.value="";
		  		 var tab = document.getElementById("tab");
		  		     tab.innerText="";
		  		 if(result == "exist"){
		  		    msg.value=" 该号码已经申请了积分！";
		  		    showInfo();
		  		    ischeck = false;
		  		 }else if(result == "noone"){
		  		    msg.value=" 号码不存在！";
		  		    showMsg("号码不存在！");
		  		    ischeck = false;		  		    
		  		 }else if(result == "noScore"){
		  		    showMsg("你当前累计的积分为0，无法申请！");
		  		    ischeck = false;		  		    
		  		 }else{
		  		    var clients = eval(result); 
		  		    var tr1=tab.insertRow(tab.rows.length);
		  			var td_phone_text=tr1.insertCell();
		  			    td_phone_text.innerText="用户号码：";
		  			var td_phone=tr1.insertCell();
		  			    td_phone.innerText=clients[0].phone;   
		  			var tr2=tab.insertRow(tab.rows.length);    
		  			var td_name_text=tr2.insertCell();
		  				td_name_text.innerText="姓 名：";
		  			var td_name=tr2.insertCell();
		  				td_name.innerText=clients[0].name;
		  			var tr3=tab.insertRow(tab.rows.length);    
		  			var td_type_text=tr3.insertCell();
		  				td_type_text.innerText="证件类别：";
		  			var td_type=tr3.insertCell();
		  				td_type.innerText=clients[0].type;
		            var tr4=tab.insertRow(tab.rows.length);  
		  			var td_code_text=tr4.insertCell();
		  				td_code_text.innerText="证件号码：";	
		  			var td_code=tr4.insertCell();
		  				td_code.innerText=clients[0].code;	
		  		    var tr5=tab.insertRow(tab.rows.length); 
		  			var td_isuse_text=tr5.insertCell();
		  				td_isuse_text.innerText="当前可用积分：";	
		  			var td_isuse=tr5.insertCell();
		  				td_isuse.innerText=clients[0].isuse;
		  			var tr6=tab.insertRow(tab.rows.length); 
		  			var td_total_text=tr6.insertCell();
		  				td_total_text.innerText="当前累计积分：";	
		  			var td_total=tr6.insertCell();
		  				td_total.innerText=clients[0].total;		
		   		    ischeck	= true;
		  		 }
        }
     });
   }
   
  
    
 </script>
</head>
<body>
	<div id="content" class="x-hide-display" align="center">
		<br>
		<form action="${pageContext.request.contextPath }/admin/score.do" name="sf">
		<input type="hidden" name="task" value="addApply">
			<table width="300" border="0" cellspacing="0" cellpadding="0"
				class="STYLE1">
				<tr>
					<td align="right">
						手机号码：
					</td>
					<td>
						<input type="text" id="tel" name="phone">
					</td>
					<td>
						<input type="button" value="验 证" onclick="apply();">
					</td>
				</tr>
			</table>
		</form>

		<br>
		<input type="hidden" id="check" class="STYLE3" />
		<table id="tab"></table>
	</div>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="30"
				background="${pageContext.request.contextPath}/admin/images/tab_05.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="12" height="30">
							<img
								src="${pageContext.request.contextPath}/admin/images/tab_03.gif"
								width="12" height="30" />
						</td>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="46%" valign="middle">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="50%" class="STYLE1">
													当前位置：积分申请管理
												</td>
												<td width="50%"></td>
											</tr>
										</table>
									</td>
									<td width="54%">
										<table border="0" align="right" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="60"></td>
												<td width="220">
													<table width="90%" border="0" cellpadding="0"
														cellspacing="0">

														<tr>
															<td class="STYLE1">
																<div align="center">
																	<a href="javascript:addWin();">[积分申请]</a>
																</div>
															</td>
															<td class="STYLE1">
																&nbsp;
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td width="16">
							<img
								src="${pageContext.request.contextPath}/admin/images/tab_07.gif"
								width="16" height="30" />
						</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td valign="top">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td align="center">
							&nbsp;
							<html:form action="/admin/score?task=applyList">
								<table width="300" class="STYLE4" cellpadding="0"
									cellspacing="0" style="vertical-align: middle">
									<tr>
										<td align="right">
											手机号码：
										</td>
										<td>
											<html:text property="phone" style="width:100px; height:20px"
												onkeyup="value=value.replace(/[^\d]/g,'')"></html:text>
											(模糊查询)
										</td>
										<td>
											<html:submit value="查 询"></html:submit>
										</td>
									</tr>
								</table>
							</html:form>
						</td>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_15.gif">
							&nbsp;
						</td>
					</tr>
				</table>
				<br>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="b5d6e6">
								<tr>
									<td width="3%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">序号</span>
										</div>
									</td>
									<td width="12%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">手机号码</span>
										</div>
									</td>
									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">操作人员</span>
										</div>
									</td>
									<td width="14%" height="22"
										background="${pageContext.request.contextPath}/admin/images/bg.gif"
										bgcolor="#FFFFFF">
										<div align="center">
											<span class="STYLE1">申请时间</span>
										</div>
									</td>
								</tr>

								<logic:empty name="applyList">
									<tr>
										<td height="20" align="center" bgcolor="#FFFFFF" colspan="4">
											暂无任何信息！
										</td>
									</tr>
								</logic:empty>
								<logic:present name="applyList">
									<logic:notEmpty name="applyList">
										<logic:iterate id="apply" name="applyList">
											<tr>
												<td height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${apply.id}</span>
													</div>
												</td>
												<td height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${apply.phone } </span>
													</div>
												</td>
												<td bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${apply.operater}</span>
													</div>
												</td>
												<td bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1"><bean:write
																format="yyyy-MM-dd HH:mm:ss" property="operdate"
																name="apply"></bean:write> </span>
													</div>
												</td>
											</tr>
										</logic:iterate>
									</logic:notEmpty>
								</logic:present>
							</table>
						</td>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_15.gif">
							&nbsp;
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="35"
				background="${pageContext.request.contextPath}/admin/images/tab_19.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="12" height="35">
							<img
								src="${pageContext.request.contextPath}/admin/images/tab_18.gif"
								width="12" height="35" />
						</td>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="STYLE4"></td>
									<td>
										<table border="0" align="right" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="500" class="STYLE4">
													<div>
														<jn0904:page name="pageUtil"></jn0904:page>
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td width="16">
							<img
								src="${pageContext.request.contextPath}/admin/images/tab_20.gif"
								width="16" height="35" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</body>
</html:html>
