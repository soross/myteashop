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

	<title>��Ʒ�����б�</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/win.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/js/Calendar.js"></script>
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
		//�˴�clickcolorֻ����winϵͳ��ɫ������ܳɹ�,�����#xxxxxx�Ĵ���Ͳ���,��û�����Ϊʲô:(
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
	
	    function modify(pid){
	       var count = document.getElementById(pid).value;
           if(!/^[0-9]/.test(count)){
               showMsg("������ʽ���ԣ�");
               return;
           }
           
           location.href="${pageContext.request.contextPath}/admin/score.do?task=modify&presentId="+pid+"&count="+count;
	    }
	    
	    function del(pid){
	       Ext.MessageBox.confirm("��Ϣ��ʾ","�Ƿ�ɾ������Ʒ��",function(btn){
               if(btn=='yes'){
                   location.href="${pageContext.request.contextPath}/admin/score.do?task=delPresent&presentId="+pid;
               }
          });
	    }
	    
         function modify1(pid){ //�޸���Ʒ����
           var count = document.getElementById(pid).value;
           if(!/^[0-9]/.test(count)){
               showMsg("������ʽ���ԣ�");
               return;
           }
           Ext.Ajax.request({
              url:'admin/score.do',
              params:{task:'modify',presentId:pid,count:count},
              success:function(response,options){
                var result=response.responseText;
                if(result=="more"){
                   showMsg("����Ʒ��治�������裡");
                }else{
                   showMsg("�����޸ĳɹ���");
                }
              }
           });
         }
         
         function del1(pid){//ɾ����Ʒ
          �� Ext.MessageBox.confirm("��Ϣ��ʾ","�Ƿ�ɾ������Ʒ��",function(btn){
               if(btn=='yes'){
                  delAjax(pid);
               }
          });
         }
         
         function delAjax(pid){
           Ext.Ajax.request({
              url:'admin/score.do',
              params:{task:'delPresent',presentId:pid},
              success:function(response,options){
                var result=response.responseText;              
                   showMsg("ɾ���ɹ���");

              }
           });
         }
    
</script>
</head>
<body>
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
													��ǰλ�ã�[��������]-[�һ���Ʒ]-[���ﳵ]
												</td>
												<td width="50%"></td>
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
						<td align="center">
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
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="200" valign="top" bgcolor="#FFFBF0">
										<jsp:include page="clientinfo.jsp"></jsp:include>
									</td>
									<td valign="top">
										<table width="100%" border="0" cellpadding="0" cellspacing="1"
											bgcolor="b5d6e6">
											<tr>
												<td width="12%" height="22"
													background="${pageContext.request.contextPath}/admin/images/bg.gif"
													bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">ͼƬ</span>
													</div>
												</td>
												<td width="12%" height="22"
													background="${pageContext.request.contextPath}/admin/images/bg.gif"
													bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">��Ʒ��</span>
													</div>
												</td>
												<td width="14%" height="22"
													background="${pageContext.request.contextPath}/admin/images/bg.gif"
													bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">�������</span>
													</div>
												</td>
												<td width="14%" height="22"
													background="${pageContext.request.contextPath}/admin/images/bg.gif"
													bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">��Ʒ����</span>
													</div>
												</td>
												<td width="14%" height="22"
													background="${pageContext.request.contextPath}/admin/images/bg.gif"
													bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">�� &nbsp;��</span>
													</div>
												</td>
												<td width="14%" height="22"
													background="${pageContext.request.contextPath}/admin/images/bg.gif"
													bgcolor="#FFFFFF">
													<div align="center">
														<span class="STYLE1">��������</span>
													</div>
												</td>
											</tr>
											<logic:notPresent name="cart">
												<tr>
													<td height="20" bgcolor="#FFFFFF" colspan="7"
														align="center" class="STYLE1">
														����δ���й���
													</td>
												</tr>
											</logic:notPresent>
											<logic:present name="cart">
												<logic:empty name="cart" property="carMap">
													<tr>
														<td height="20" bgcolor="#FFFFFF" colspan="7"
															align="center" class="STYLE1">
															�����κ���Ʒ��
														</td>
													</tr>
												</logic:empty>
												<logic:iterate id="item" name="cart" property="carMap">
													<tr>
														<td height="80" width="150" bgcolor="#FFFFFF">
															<div align="center">
																<span class="STYLE1"> <logic:empty name="item"
																		property="value.picture">
																		<img id="previewImg"
																			src="${pageContext.request.contextPath}/images/I3GWAY9WYB_104_120_120.gif"
																			style="cursor: hand;width:80px;height:50px"
																			onclick="window.open(this.src);" width="150"
																			height="150" alt="����鿴��ͼ" />
																	</logic:empty> <logic:notEmpty name="item" property="value.picture">
																		<img id="previewImg"
																			src="${pageContext.request.contextPath}/admin/upload/${item.value.picture}"
																			style="cursor: hand;width:80px;height:50px"
																			onclick="window.open(this.src);" width="150"
																			height="150" alt="����鿴��ͼ" />
																	</logic:notEmpty> </span>
															</div>
														</td>
														<td height="20" bgcolor="#FFFFFF">
															<div align="center">
																<span class="STYLE1">${item.value.pname } </span>
															</div>
														</td>
														<td bgcolor="#FFFFFF">
															<div align="center">
																<span class="STYLE1">${item.value.score }</span>
															</div>
														</td>
														<td bgcolor="#FFFFFF">
															<div align="center">
																<span class="STYLE1"><input
																		id="${item.value.pid }" name="${item.value.pid }"
																		type="text" value="${item.value.changenum }"  style="width:40px; height:20px" onkeyup="value=value.replace(/[^\d]/g,'')"/>
																</span>
															</div>
														</td>
														<td bgcolor="#FFFFFF">
															<div align="center">
																<span class="STYLE1">${item.value.changenum*item.value.score}
																</span>
															</div>
														</td>
														<td bgcolor="#FFFFFF" align="center" class="STYLE1">
															<a href="javascript:modify(${item.value.pid });">[��
																��]</a>
															<a href="javascript:del(${item.value.pid });">[ɾ ��]</a>
														</td>
													</tr>
												</logic:iterate>
											</logic:present>
										</table>

									</td>
								</tr>
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
												 <logic:present name="cart">
													<logic:notEmpty name="cart" property="carMap">
														<div align="right" class="STYLE1">
															��Ʒ������ ${cart.count }&nbsp;&nbsp;&nbsp; ��
															��:${cart.totalScore }�����ֵ�&nbsp;&nbsp;&nbsp;&nbsp;
															<a
																href="javascript:location.href='${pageContext.request.contextPath}/admin/score.do?task=pay';">[���㹺�ﳵ]</a>
															<a
																href="javascript:location.href='${pageContext.request.contextPath}/admin/score.do?task=buy';">[��������]</a>
															&nbsp;&nbsp;
														</div>
													</logic:notEmpty>
													<logic:empty name="cart" property="carMap">
														<div align="right" class="STYLE1">
															<a
																href="javascript:location.href='${pageContext.request.contextPath}/admin/score.do?task=buy';">[��������]</a>
															&nbsp;&nbsp;&nbsp;
														</div>
													</logic:empty>
													</logic:present>
													<logic:notPresent name="cart">
													    <div align="right" class="STYLE1">
															<a
																href="javascript:location.href='${pageContext.request.contextPath}/admin/score.do?task=buy';">[��������]</a>
															&nbsp;&nbsp;&nbsp;
														</div>
													</logic:notPresent>
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
