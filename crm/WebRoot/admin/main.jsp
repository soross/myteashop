<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>ϵͳ������ҳ��</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>

<body style="MARGIN: 0px">
	<div class="top">
		<div>
			<div class="logo">����Ե��֫ҽ�ƹ���ϵͳ</div>
			<div class="topdl">
				<li>�������ѣ�</li>
				<li><marquee scrollamount=3 width="200px" onMouseOver="this.stop();" onMouseOut="this.start();">����ǰ��ע���ȱ������ݿ�,�������ݶ�ʧ!</marquee></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;��ӭ${user.userid}��<a href="#" target="main"><span class="fff">���߰���</span></a>��<a href="main.php" target="_blank"><span class="fff">��ҳ</span></a>��<a href="${pageContext.request.contextPath}/login.do?task=exit" target="_parent"><span class="fff">�˳�</span></a></li>
			</div>
	    </div>
		<div class="tabm">
			<ul>
				<li class="tabms" id="menu_00" onClick="getleftbar(this,0,6,0);"><a href="index.php?m=91736&c=index&f=main" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left';"><span>��̨��ҳ</span></a></li>
				<li id="menu_01" onClick="getleftbar(this,0,6,1);"><a href="index.php?m=91736&c=setting" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=set';"><span>ϵͳ����</span></a></li>
				<li id="menu_02" onClick="getleftbar(this,0,6,2);"><a href="index.php?m=91736&c=index&f=main" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=content';"><span>���ݹ���</span></a></li>
				<li id="menu_03" onClick="getleftbar(this,0,6,3);"><a href="index.php?m=91736&c=index&f=main" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=module';"><span>ģ�����</span></a></li>
				<li id="menu_04" onClick="getleftbar(this,0,6,4);"><a href="index.php?m=91736&c=template" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=template';"><span>ģ�����</span></a></li>
				<li id="menu_05" onClick="getleftbar(this,0,6,5);"><a href="index.php?m=91736&c=categorytree" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=file';"><span>�ļ�����</span></a></li>
			</ul>
		</div>
	</div>
	<table width="100%" height="80%" border="0" cellpadding="0" cellspacing="0" class="mindex">
	  <tr>
	    <td width="200px" valign="top" id="frmleft" name="frmleft">
	    	<table width="200px" border="0" cellpadding="0" cellspacing="0">
	      		<tr>
	        		<td height="28" id="leftmenu_title" class="leftmenu_title"><span>��̨��ҳ</span></td>
	      		</tr>
	    	</table>
	    	<iframe src="main/menu.jsp" frameborder="0" id="left" name="left" scrolling="auto" align="top" class="leftiframe"></iframe>
			</td>
	    	<td width="10">
	    		<table height="100%" cellspacing="0" cellpadding="0" border="0">
			      <tbody>
			        <tr>
			          <td style="HEIGHT: 100%" onClick="switchSysBar()"><span id="switchPoint" title="�ر�/������"><img src="images/lere.gif" width="10" height="20" /></span> </td>
			        </tr>
			      </tbody>
	    		</table>
	    	</td>
	    	<td valign="top">
	    		<iframe style="margin:0; padding:0; width:100%; height:480px!important;height:100%; background-color:#081250; visibility:inherit;" src="main/index.jsp" frameborder="0" scrolling="yes" id="main" name="main"></iframe>
	    	</td>
	  	</tr>
	</table>
	<table width="100%" height="30" border="0" cellpadding="4" cellspacing="0" class="mindex">
	  <tr>
	    <td width="75%">&nbsp;</td>
	    <td width="25%"></td>
	  </tr>
	</table>
</body>
<script language="javascript" src="js/admin.js"></script>
</html:html>