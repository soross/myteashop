<?php
require_once("../action/checkAamsLogin.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.STYLE7 {font-size: 12}

-->
</style>

<script>
var  highlightcolor='#eafcd5';
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
</head>

<body>

  <form action="../post/account.action.php" method="post"  onsubmit="javascript:return(confirm('确定修改吗?\n\n密码如果不修改请放空!\n否则会无法登入噢!'));">



<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="../images/tab/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="../images/tab/tab_05.gif"><img src="../images/tab/311.gif" width="16" height="16" /> <span class="STYLE4">欢迎来到泛地缘管理平台</span></td>
        <td width="281" background="../images/tab/tab_05.gif">

        </td>
        <td width="14"><img src="../images/tab/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="../images/tab/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3">
        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="100%" height="26" background="../images/tab/tab_14.gif" class="STYLE1" colspan="2"><div align="center" class="STYLE2 STYLE1">管理员信息</div></td>

          </tr>
          <tr>
          	<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	用户名：
           	</div></td>
           	<td height="30" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
          	<?php
                		require_once ("../action/mysql.class.php");
                		$query = $db->query("select * from aams_user where id='$_SESSION[WEB_AAMS_USER_LOGIN_UID_SESSION]'",$db);
                		$info = $db->fetch_array($query);
             ?>
                <strong><?php echo $info[username];?></strong>

           	</div></td>


          </tr>
           <tr>
          		<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	真实姓名：
           	</div></td>
           	<td height="30" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
           	<input type="text" value="<?php echo $info[realname];?>" name="realname" id="realname">
           	</div></td>
          </tr>
          <tr>
          		<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	新密码：
           	</div></td>
           	<td height="30" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
           	<input type="text"  name="password" id="password"><font style="color:red;">*如果没有修改请放空!</font><br>
           	</div></td>
          </tr>
          <tr>
          		<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	确定密码：
           	</div></td>
           	<td height="30" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
           	<input type="text"  name="password_confirm" id="password_confirm"><font style="color:red;">*如果没有修改请放空!</font><br>
           	</div></td>
          </tr>

          <tr>
          	<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	创建时间：
           	</div></td>
           	<td height="30" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
          	<?php
                		echo $info[create_date];
                ?>
           	</div></td>
          </tr>
           <tr>
          	<td colspan="2" height="30" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">
				<input type="hidden" id="task" name="task" value="updateAdminUserInfo">
 				 <input type="submit" name="updateAdminUserInfo" value="更新管理员信息" />

           	</div></td>
          </tr>

        </table></td>
        <td width="9" background="../images/tab/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="../images/tab/tab_20.gif" width="15" height="29" /></td>
        <td background="../images/tab/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25%" height="29" nowrap="nowrap"><span class="STYLE1"></span></td>
            <td width="75%" valign="top" class="STYLE1"><div align="right">
              <table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
                <tr>

                </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="14"><img src="../images/tab/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
 </form>
</body>
</html>
