<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<meta http-equiv="x-ua-compatible" content="ie=7" />
<title>后台管理</title>


</head>
<body>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder">
  <tr>
    <th height="25">模型管理</th>
  </tr>
  <tr>
    <td height=25 class="pl20"><b>管理选项：</b><a href="list.php">管理首页</a> | <a href="index.php?m=91736&c=model&f=model_add">添加模型</a> | <a href="index.php?m=91736&c=model&f=cache">更新模型缓存</a> | [<a href="javascript:location.reload()">刷新页面</a>]</td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellspacing="1" cellpadding="2" class="tableBorder mt6">
<form name="addform" action="index.php?m=91736&c=model&f=model_add_save" method="post">
    <tr>
    <th colspan="4">添加模型</th>
  </tr>
  <tr>
    <td align="right">模型名称：</td>
    <td colspan="3"><input type="text" name="modelname" class="txt" size="30" id="modelname"></td>
  </tr>
  <tr>
    <td align="right">模型数据表:</td>
    <td colspan="3"><input type="text" name="modeltable" class="txt" size="30" id="modeltable"></td>
  </tr>
  <tr>
    <td align="right">是否开启:</td>
    <td colspan="3">
      <input name="is_lock" type="radio" id="is_lock" value="1" checked="checked" />
      是
      <input type="radio" name="is_lock" id="is_lock" value="0" />
      否</td>
  </tr>
  <tr>
    <td align="right">是否固定:</td>
    <td colspan="3">
      <input name="is_fixed" type="radio" id="is_fixed" value="1" />
      是
      <input name="is_fixed" type="radio" id="is_fixed" value="0" checked="checked" />
      否</td>
  </tr>
  <tr>
    <td colspan="4" align="right" class="tdpage">
      <input type="submit" name="submit" value=" 保 存 " class="inputs" /></td>
    </tr>
  </form>
</table>
<table border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder" style="margin-top:6px; margin-bottom:10px;">
<tr align=center>
<td width="100%" class=copyright>Copyright (c) 2011-2015<a href="http://www.91736.com" target="_blank"><font color=#708796><b>·91736<font color=#CC0000>.COM</font></b></font></a>, All Rights Reserved ,</td>
</tr></table>

</body>
<script language="javascript" src="js/block.js"></script>
<script language="javascript" src="js/popup.js"></script>
</html>

