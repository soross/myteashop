<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<jsp:directive.page import="org.apache.ojb.jdo.jdoql.Import" />

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>���ֲ�����������</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="${pageContext.request.contextPath}/admin/js/testform.js"
		type="text/javascript"></script>
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
	.STYLE1 {font-size: 12px}
	.STYLE3 {font-size: 12px; font-weight: bold; }
	.STYLE4 {
		color: #03515d;
		font-size: 12px;
	}
	-->
	</style>
	<script>
		var  highlightcolor='#c1ebff';
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
      function child(parent){   
        var pid=parent.value;
        var chks=document.getElementsByName("menus");
        for(var i=0;i<chks.length;i++){
         if(parent.checked==true){//�������ѡ��,����������ȫ��ѡ��
            if(chks[i].id==pid){
              chks[i].checked=true;
            }
         }else{
            if(chks[i].id==pid){
              chks[i].checked=false;
            }
         }
      }   
    }
    
    function parent(child){
      var pid=child.id;//��ȡ����ID
      var chks=document.getElementsByName("menus");
      var flag=false;
      if(child.checked==true){//���ѡ������,����Ҳѡ��
         for(var i=0;i<chks.length;i++){
            if(chks[i].value==pid){
               chks[i].checked=true;
               flag=true;
            }
         }
      }else{
         for(var i=0;i<chks.length;i++){
            if(chks[i].checked==true&& chks[i].id==pid){
               flag=true;
               break;
            }
         }
      }
      if(!flag){
        for(var i=0;i<chks.length;i++){
            if(chks[i].value==pid){
               chks[i].checked=false;
            }
         }
      }  
    }
    
    function subAdd(task){
       document.all.item("task").value=task;
       if(checkAddr()&&checkType()&&checkContext()&&checkLevel()&&checkManger()&&checkTelnum()){
       clubnetworkForm.submit();
       }
    }
    

    function checkAdd(obj){
    	if(isChinese(obj.value)){
    		return true;
    	}else {
    	alert("����������");
    	}
    }
    
    function checkAddr(){
    var addr=document.getElementById("clubnetAddr").value;
    if(addr.length==0){
    alert("��ַ����Ϊ�գ�")
    return false;
    }else{
    return true;
    }  
    }
    function checkType(){
    var type=document.getElementById("clubnetType").value;
  
     if(type.length==0){
    alert("���Ͳ���Ϊ�գ�")
    return false;
    }else{
    return true;
    } 

    }
     function checkContext(){
    var Context=document.getElementById("clubnetConten").value;
    
    if(Context.length==0){
    alert("���ݲ���Ϊ�գ�")
    return false;
    }else{
    return true;
    } 

    }
    function checkLevel(){
    var Level=document.getElementById("clubnetLevel").value;
    if(Level.length==0){
    alert("������Ϊ�գ�")
    return false;
    }else{
    return true;
    } 
    }
     function checkManger(){
    var Manger=document.getElementById("clubnetManger").value;
      if(Manger.length==0){
    alert("����Ա����Ϊ�գ�")
    return false;
    }else{
    return true;
    }
    }
     function checkTelnum(){
    var Telnum=document.getElementById("clubnetTelnum").value;
     if(Telnum.length==0){
    alert("�绰���벻��Ϊ�գ�")
    return false;
    }else{
    return true;
    }
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
													<logic:equal value="doAdd" parameter="task">
                                                           ��ǰλ��:��������
                                                    </logic:equal>
													<logic:equal value="doUpdate" parameter="task">
                                                             ��ǰλ�ã������޸�
                                                     </logic:equal>

												</td>
												<td width="50%" align="right" class="STYLE1"></td>
											</tr>
										</table>
									</td>
									<td width="54%">
										<table border="0" align="right" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="60"></td>
												<td width="60">
													<table width="90%" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td class="STYLE1" align="right" colspan="2">
																<div align="center">
																	<a
																		href="${pageContext.request.contextPath}/admin/clubnetwork.do?task=clubNetworkList">�����б�</a>
																</div>
															</td>

														</tr>
													</table>
												</td>
												<td width="60">
													<table width="90%" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td class="STYLE1">
																<div align="center"></div>
															</td>
															<td class="STYLE1">
																<div align="center"></div>
															</td>
														</tr>
													</table>
												</td>
												<td width="52">
													<table width="88%" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td class="STYLE1">
																<div align="center"></div>
															</td>
															<td class="STYLE1">
																<div align="center"></div>
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
						<td>
							<html:form action="admin/clubnetwork">
								<html:hidden property="clubnetId" />
								<input type="hidden" name="task">
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="b5d6e6" class="STYLE1">
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="center"
											colspan="2">
											���ֲ���������Ϣ
										</td>

									</tr>
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="right" width="500">
											�����ַ:
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500">
											<html:text property="clubnetAddr" maxlength="50"></html:text>
										</td>
									</tr>
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="right" width="500">
											��������:
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500">
											<logic:present name="clubtypelist">
												<html:select property="clubnetType">
													<html:option value="">==��ѡ��==</html:option>
													<logic:iterate id="type" name="clubtypelist">
														<html:option value="${type.id}">${type.name}</html:option>
													</logic:iterate>
												</html:select>

											</logic:present>
										</td>

									</tr>
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="right" width="500">
											��������:
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500">
											<html:textarea property="clubnetConten"></html:textarea>
										</td>
									</tr>
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="right" width="500">
											���㼶��:
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500">
											<logic:present name="clublelist">
												<html:select property="clubnetLevel">
													<html:option value="">==��ѡ��==</html:option>
													<logic:iterate id="level" name="clublelist">
														<html:option value="${level.id}">${level.name}</html:option>
													</logic:iterate>
												</html:select>

											</logic:present>
										</td>
									</tr>
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="right" width="500">
											��&nbsp;��&nbsp;Ա:
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500">
											<html:text property="clubnetManger" maxlength="40"></html:text>
										</td>
									</tr>
									<tr>
										<td class="STYLE1" bgcolor="#FFFFFF" align="right" width="500">
											����绰:
										</td>
										<td class="STYLE1" bgcolor="#FFFFFF" align="left" width="500">
											<html:text property="clubnetTelnum"
												onkeypress="if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}"
												onkeyup="value=value.replace(/[^\d]/g,'')" maxlength="50"></html:text>
										</td>
									</tr>


									<tr>
										<td bgcolor="#FFFFFF" width="500" align="right">
											�� &nbsp;&nbsp;����
										</td>
										<td bgcolor="#FFFFFF" width="500">
											<logic:equal value="doAdd" parameter="task">
												<html:button property="" value="����������"
													onclick="subAdd('addClubNet');"></html:button>
											</logic:equal>
											<logic:equal value="doUpdate" parameter="task">
												<html:button property="" value="�޸�����"
													onclick="subAdd('updateClubNet');"></html:button>
											</logic:equal>
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
												<td width="40"></td>
												<td width="45"></td>
												<td width="45"></td>
												<td width="40"></td>
												<td width="100"></td>
												<td width="40">
													&nbsp;
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