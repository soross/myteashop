<?php
require_once("../action/checkAamsLogin.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>宝迪肤护品网站后台</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #43860c;
	font-size: 12px;
}
-->
</style></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
  <tr>
    <td height="9" style="line-height:9px; background-image:url(../images/main_04.gif)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="97" height="9" background="../images/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="47" background="../images/main_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="38" height="47" background="../images/main_06.gif">&nbsp;</td>
        <td width="59"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="29" background="../images/main_07.gif">&nbsp;</td>
          </tr>
          <tr>
            <td height="18" background="../images/main_14.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
              <tr>
                <td  style="width:1px;">&nbsp;</td>
                <td ><span class="STYLE1">
                	<?php
                		echo $_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION'];
                	?>
                </span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="155" background="../images/main_08.gif">&nbsp;</td>

        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" valign="bottom"><img src="../images/main_12.gif" width="367" height="23" border="0" usemap="#Map" /></td>
          </tr>
        </table></td>
        <td width="200" background="../images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="11%" height="23">&nbsp;</td>
            <td width="89%" valign="bottom"><!--<span class="STYLE1">日期：2008年7月22日 星期二</span>--></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="5" style="line-height:5px; background-image:url(../images/main_18.gif)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="180" background="../images/main_16.gif"  style="line-height:5px;">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

<map name="Map" id="Map">
	<area shape="rect" coords="3,1,49,22" href="javascript:window.parent.location.href='../main.php';" />
	<area shape="rect" coords="52,2,95,21" href="javascript:window.parent..mainFrame.dataFrame.location.history.go(-1);" />
	<area shape="rect" coords="102,2,144,21" href="javascript:window.parent..mainFrame.dataFrame.location.history.go(1);" />
	<area shape="rect" coords="150,1,197,22" href="javascript:window.parent.mainFrame.dataFrame.location.reload();" />
	<area shape="rect" coords="210,2,304,20" href="javascript:window.parent.location.href='../main.php';" />
	<area shape="rect" coords="314,1,361,23" href="javascript:if(confirm('提示：您确定要退出系统吗？'))window.parent.location.href='../admin.php?task=logout';" />
</map></body>
</html>
