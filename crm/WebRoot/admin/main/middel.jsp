<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>�м�ҳ��</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
	-->
	</style>
	<style> 
	.navPoint { 
	COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt 
	} 
	</style>
	<script type="text/javascript">
		function switchSysBar(){ 
			var locate=location.href.replace('middel.jsp','');			
			var ssrc=document.all("img1").src.replace(locate,'');
			if (ssrc=="images/main_55.gif")
			{ 
				document.all("img1").src="images/main_55_1.gif";
				document.all("frmTitle").style.display="none" 
			} 
			else
			{ 
				document.all("img1").src="images/main_55.gif";
				document.all("frmTitle").style.display="" 
			} 
		} 
	</script>
</head>

<body style="overflow:hidden">
	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout:fixed;">
		<tr>
			<td width="182px" id=frmTitle noWrap name="fmTitle" align="center"
				valign="top">
				<table width="182px" height="100%" border="0" cellpadding="0"
					cellspacing="0" style="table-layout:fixed;">
					<tr>
						<td bgcolor="#1873aa" style="width:6px;">
							&nbsp;
						</td>
						<td width="176px">
							<iframe name="I1" height="100%" width="176px" src="left.jsp"
								border="0" frameborder="0" scrolling="yes">
								�������֧��Ƕ��ʽ��ܣ�������Ϊ����ʾǶ��ʽ��ܡ�
							</iframe>
						</td>
					</tr>
				</table>
			</td>
			<td width="6" style="width:6px;" valign="middle" bgcolor="1873aa"
				onclick=switchSysBar()>
				<SPAN class=navPoint id=switchPoint title=�ر�/������><img
						src="images/main_55.gif" name="img1" width=6 height=40 id=img1>
				</SPAN>
			</td>
			<td width="100%" align="center" valign="top">
				<iframe name="rightframe" height="100%" width="100%" border="0"
					frameborder="0" src="tab.jsp">
					�������֧��Ƕ��ʽ��ܣ�������Ϊ����ʾǶ��ʽ��ܡ�
				</iframe>
			</td>
		</tr>
	</table>
</body>
</html:html>
