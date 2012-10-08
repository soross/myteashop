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

	<title>�м���ҳ��</title>
	<style type="text/css">
		#divSCA {
			position: absolute;
			width: 300px;
			height: 100px;
			font-size: 12px;
			background: #EEF7FD;
			border: 0px solid #000;
			z-index: 10001;
			display: none;
			text-algin: center;
			padding: 10px 0 0 10px;
		}
	</style>
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
				alert("��ѡ��Ҫ�����Ŀͻ�����");
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
				�ճ����Ʋ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>����Ӱ��ѡ�</b>
				<logic:iterate id="menu" name="sonPowerByMenu">
				<a href="${pageContext.request.contextPath}${menu.url}">${menu.powername}</a> |
				</logic:iterate>
				[<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/file?task=fileListByPhoto" method="post">
	<table width="100%" border="0" align="center" cellpadding="2"
		cellspacing="1" class="tableBorder">
		<tr>
			<th height="25" colspan="6">
				����Ӱ���ѯ
			</th>
		</tr>
		<tr>
			<td width="20%" height=25 class="pl20">
			����Ӱ������:	<html:text property="filename"  size="15"  />
			</td>
			<td>
				<html:submit value="��ѯ"></html:submit>
			</td>
		</tr>
	</table>
	</html:form>
	<!--startprint-->
	<table id="listtab" width="98%" border="0" align="center" cellpadding="3"
		cellspacing="1" class="tableBorderList">
		<tr>
			<th height=25>
				����Ӱ���б�
			</th>
		</tr>
		<tr>
			<th>
				<table width="100%">
    				<tr>
    					<td>ҽ��֤�ţ�</td>
    					<td>������</td>
    					<td>���䣺</td>
    					<td>�Ա�</td>
    					<td>������ڣ�</td>
    				</tr>
    				<tr>
    					<td colspan="5">��Ͻ����</td>
    				</tr>
    			</table>
			</th>
		</tr>
		<tr align="left" class="thstyle">
			<td >
				<div style="float:left;">
					<logic:present name="fileList">
	          			<logic:iterate id="file" name="fileList"> 
	          				<li style="float:left; position:relative;text-align:center;padding:5px 10px 25px 10px;">
				    			<img src="${pageContext.request.contextPath}/admin/upload/${file.filepath}" width="200px" height="150px">
								<br>${file.filename}
								<br><bean:write  name="file" property="createDate" format="yyyy-MM-dd HH:mm:ss"/>
								<br><input type="button" value="ɾ��" onclick="deleteFile('${file.id}','${file.filename}');">&nbsp;<input type="button" value="����" onclick="playView('${file.filepath}');">
				    		</li>
						</logic:iterate>
		          	</logic:present>
	          	</div>
			</td>
		</tr>
		<tr>
			<td align="center"  height=25>
				<input type="button" value="��ӡ" onclick="preview();"/>
			</td>
		</tr>
	
	</table><!--endprint-->
	<br>&nbsp;
</body>

<div id="divSCA" style="display:none;">
<html:form action="/admin/file?task=deleteFileByPhoto" method="post">
	<table align="center">
		<tr>
			<td>Ӱ������</td>
			<td><input type="text" id="filename" name="filename"></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type="text" id="password" name="password"></td>
		</tr>
		<tr>
			<td colspan="2"  align="center">
				<input type="hidden" id="modfunid" name="modfunid" value="604">
				<input type="hidden" id="fileid" name="fileid">
				<input type="hidden" id="srcname" name="srcname">
				<input type="hidden" id="path" name="path" value="${pageContext.request.contextPath}/admin/upload">
				<input type="submit" value="ȷ��ɾ��">
			</td>
		</tr>
	</table>
</html:form>
</div>


<script language="javascript" src="js/block.js"></script>
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
//ejiaA1("����","�����б���","ż���б���","��꾭������","����󱳾�");
ejiaA1("listtab","#E1F1F1","#F5F5F5","#FFFFCC","");
--></script>


<!-- ������ -->
<script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.divbox.js"></script>
<script type="text/javascript">
function openDiv() { 
	$("#divSCA").OpenDiv(); 
} 
function closeDiv() {
	$("#divSCA").CloseDiv();
}

function deleteFile(fileid,filename){
	openDiv();
	document.getElementById("fileid").value=fileid;
	document.getElementById("srcname").value=filename;
}

function bigPhoto(path){
	//window.open();
	var url = '${pageContext.request.contextPath}/admin/file.do?task=bigPhoto&path='+path;
	window.open (url,'��ͼ','height=600,width=800,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no'); 
}

function preview()
{
	bdhtml=window.document.body.innerHTML;
	sprnstr="<!--startprint-->";
	eprnstr="<!--endprint-->";
	prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
	prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));
	window.document.body.innerHTML=prnhtml;
	window.print();
}
</script>
</html:html>