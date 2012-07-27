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
				系统辅助功能
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>系统辅助功能选项：</b><a
					href="#">系统辅助功能首页</a>
				|
				<a
					href="#">系统辅助功能</a>
				| [
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<form action="${pageContext.request.contextPath}/login.do?task=checkDate" method="post">
		<table width="100%" border="0" align="center" cellspacing="1"
			cellpadding="2" class="tableBorder mt6">
			<tr>
				<th colspan=5 height=25>
					系统时间校验
				</th>
			</tr>
			<tr>
				<td align="right">
					当前时间：
				</td>
				<td colspan="3">
					${currTime}
				</td>
			</tr>
			<tr>
				<td align="right">
					校验时间:
				</td>
				<td colspan="3">
					<input type="text" id="newdate" name="newdate"  size="25"  class="txt Wdate" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});"  readonly="readonly" />
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right" class="tdpage">
					<input type="reset" name="reset" value=" 重 置 " class="inputs" />
					<input type="submit" name="submit" value=" 时间校验 " class="inputs" />
				</td>
			</tr>
		</table>
	</form>
	<br>
	&nbsp;
</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
<!--日历控件 -->
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>

</html:html>
