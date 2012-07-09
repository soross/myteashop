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

	<title>积分消费</title>

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
	.STYLE3 {font-size: 14px;}
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
	
	function checkPhone(){
	   var phone = document.getElementById("tel").value;
	   if(phone==""){
	      showMsg("请输入手机号！");
	      return false;
	   }else if(!/^[0-9]/.test(phone)){
	      showMsg("无效的手机号码！");
	      return false;
	   }
	   return true;
	}
	
	function checkCard(){
	  var card = document.getElementById("card").value;
	  if(card==""){
	     showMsg("请输入证件号码！");
	     return false;
	  }else if(!/^[0-9a-zA-Z]{18}$/.test(card)){
	     showMsg("无效的证件号码！");
	     return false;
	  }
	  return true;
	}
	
	function showInfo(){
      var win =showWin2('用户积分信息',400,350);
      win.show();  
    }
    
    function showLogin(){
      var win =showWin3('用户信息验证',300,240);
      win.show(); 
    }
    var msg ="";
	function search(){
	     if(!checkPhone()){
	        return;
	     }
	     if(!checkCard()){
	        return;
	     }
         var tel = Ext.get("tel").dom.value;
         var type = Ext.get("type").dom.value;
             type = encodeURI(type);
         var code = Ext.get("card").dom.value;
         Ext.Ajax.request({
         url:'admin/score.do',
         params:{task:'payCheck',tel:tel,type:type,code:code},
         success:function(response,options){
           	     var result=response.responseText;         	     
		  		 var tab = document.getElementById("tab");
		  		     tab.innerText="";
		  		 if(result == "noPhone"){
		  		    showMsg("该号码不存在！");
		  		 }else if(result == "noApply"){
		  		    showMsg("该号码尚未申请积分！");	  		    
		  		 }else if(result=="codeError"){
		  		    showMsg("证件不对！");
		  		 }else{ 
                    msg="ok";	  	        
		  		    var tab1=document.getElementById("tab1");
		  		        tab1.innerText="";
		  		    showInfo();   	 
		  		    var arr = eval(result); 
		  		    var client = arr[0];
		  		    var totalScore = arr[1];
		  		    var tr1=tab.insertRow(tab.rows.length);
		  			var td_phone_text=tr1.insertCell();
		  			    td_phone_text.innerText="用户号码：";
		  			var td_phone=tr1.insertCell();
		  			    td_phone.innerText=client.phone;  
		  			    message=client.phone;
		  			var tr2=tab.insertRow(tab.rows.length);    
		  			var td_name_text=tr2.insertCell();
		  				td_name_text.innerText="姓 名：";
		  			var td_name=tr2.insertCell();
		  				td_name.innerText=client.name;
		  			var tr3=tab.insertRow(tab.rows.length);    
		  			var td_type_text=tr3.insertCell();
		  				td_type_text.innerText="证件类别：";
		  			var td_type=tr3.insertCell();
		  				td_type.innerText=client.type;
		            var tr4=tab.insertRow(tab.rows.length);  
		  			var td_code_text=tr4.insertCell();
		  				td_code_text.innerText="证件号码：";	
		  			var td_code=tr4.insertCell();
		  				td_code.innerText=client.code;
		  			var tr5=tab.insertRow(tab.rows.length);  
		  			var td_address_text=tr5.insertCell();
		  				td_address_text.innerText="地 址：";	
		  			var td_address=tr5.insertCell();
		  				td_address.innerText=client.address;
		  			var tr6=tab.insertRow(tab.rows.length);  
		  			var td_isuse_text=tr6.insertCell();
		  				td_isuse_text.innerText="当前可用积分：";	
		  			var td_isuse=tr6.insertCell();
		  				td_isuse.innerText=totalScore.isuse;		
		  			var tr7=tab.insertRow(tab.rows.length);  
		  			var td_total_text=tr7.insertCell();
		  				td_total_text.innerText="当前累计积分：";	
		  			var td_total=tr7.insertCell();
		  				td_total.innerText=totalScore.total;	
		  		    Ext.get("no").dom.value=client.phone;			
		  		    Ext.get("isuse").dom.value=totalScore.isuse;
		  		    Ext.get("total").dom.value=totalScore.total;			
		  		 }
        }
     });
   }	 
   
   
   
    </script>
</head>
<body>
	<div id="content" class="x-hide-display" align="center">
		<br>
		<html:form action="/admin/score">
			<input type="hidden" name="task">
			<input type="hidden" name="no">
			<input type="hidden" name="isuse">
			<input type="hidden" name="total">
			<table width="300" id="tab1" class="STYLE1" cellpadding="0"
				cellspacing="3" style="vertical-align: middle">
				<tr>
					<td align="right">
						手机号码：
					</td>
					<td>
						<html:text property="phone" styleId="tel" styleClass="tel"></html:text>
					</td>
				</tr>
				<tr>
				<tr>
					<td align="right">
						证件类型：
					</td>
					<td>
						<html:select property="type" styleClass="type">
							<html:option value="身份证" />
							<html:option value="军官证" />
						</html:select>
					</td>
				</tr>
				<tr>
					<td align="right">
						证件号码：
					</td>
					<td>
						<html:text property="code" styleId="card" styleClass="card"></html:text>
					</td>
				</tr>
			</table>
		</html:form>
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
												<td  class="STYLE1">
													当前位置：积分消费[包括兑换和回退]
												</td>
												
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
															<td class="STYLE1"></td>
															<td class="STYLE1">
																<a href="javascript:showLogin();">[消费验证]</a>
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
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td valign="top">
							&nbsp;
							
						</td>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_15.gif">
							&nbsp;
						</td>
					</tr>
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="8"
							background="${pageContext.request.contextPath}/admin/images/tab_12.gif">
							&nbsp;
						</td>
						<td align="center">
							&nbsp;
							<logic:present name="presentList">
								<table width="100%" height="100%" border="0" cellpadding="0"
									cellspacing="1" bgcolor="b5d6e6">
									<logic:empty name="presentList">
										<tr>
											<td colspan="4" bgcolor="#FFFFFF" align="center"
												class="STYLE1">
												暂无商品！
											</td>
										</tr>
									</logic:empty>
									<logic:notEmpty name="presentList">
										<tr>
											<td width="12%" height="22"
												background="${pageContext.request.contextPath}/admin/images/bg.gif"
												bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">礼品名称</span>
												</div>
											</td>
											<td width="12%" height="22"
												background="${pageContext.request.contextPath}/admin/images/bg.gif"
												bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">效果图</span>
												</div>
											</td>
											<td width="12%" height="22"
												background="${pageContext.request.contextPath}/admin/images/bg.gif"
												bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">礼品数量</span>
												</div>
											</td>
											<td width="14%" height="22"
												background="${pageContext.request.contextPath}/admin/images/bg.gif"
												bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">所需积分</span>
												</div>
											</td>
											<td width="14%" height="22"
												background="${pageContext.request.contextPath}/admin/images/bg.gif"
												bgcolor="#FFFFFF">
												<div align="center">
													<span class="STYLE1">有效时间</span>
												</div>
											</td>
										</tr>
										<logic:iterate id="present" name="presentList">
											<tr>
												<td height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${present.name}</span>
													</div>
												</td>
												<td height="50"  bgcolor="#FFFFFF" align="center">
													<div align="center" >
														<logic:empty name="present"
																property="picture">
																<img id="previewImg"
																	src="${pageContext.request.contextPath}/images/I3GWAY9WYB_104_120_120.gif"
																	style="cursor: hand;width:80px;height:50px;"
																	onclick="window.open(this.src);"   alt="点击查看大图" />
															</logic:empty> <logic:notEmpty name="present" property="picture">
																<img id="previewImg"
																	src="${pageContext.request.contextPath}/admin/upload/${present.picture}"
																	style="cursor: hand;width:80px;height:50px"
																	onclick="window.open(this.src);"  alt="点击查看大图" />
															</logic:notEmpty> 
													</div>
												</td>
												<td height="20" bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${present.num } </span>
													</div>
												</td>
												<td bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">${present.integral}</span>
													</div>
												</td>
												<td bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1"> <bean:write
																format="yyyy-MM-dd HH:mm:ss" property="invalidate"
																name="present"></bean:write> </span>
													</div>
												</td>
											</tr>
										</logic:iterate>
									</logic:notEmpty>
								</table>
							</logic:present>
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
							<table  width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="STYLE4" ></td>
									<td><table border="0" align="right" cellpadding="0" cellspacing="0">
                                       <tr>
                                            <td width="500" class="STYLE4">    
                                               <jn0904:page name="pageUtil"/></td>                                    
                                         </tr>
                                       </table></td>									
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
