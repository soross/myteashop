<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);

if($_GET[action]=='logout')$db->Get_user_out();

 $query=$db->findall("tea_config");
 while($row=$db->fetch_array($query)){
 	$row_arr[$row[name]]=$row[values];
 }


 if(isset($_POST['update'])){
 	unset($_POST['update']);
 	foreach($_POST as $name=>$values){
 		$db->query("update tea_config set `values`='$values' where `name`='$name'");
 	}
 	$db->Get_admin_msg("admin_main.php");
 }


?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE>��̨����</TITLE>
	<META http-equiv=Content-Type content="text/html; charset=gb2312">
	<LINK href="images/private.css" type=text/css rel=stylesheet>
	<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
</HEAD>
<BODY>
<TABLE class=navi cellSpacing=1 align=center border=0>
  <TBODY>
  <TR>

  <form action="" method="post" >

    <TH>��̨ >> ϵͳ����</TH></TR></TBODY></TABLE><BR>

	<table border=0 cellspacing=1 align=center class=form>
	<tr>
		<th colspan="2">ϵͳ����</th>
	</tr>
     	  <tr>
  <td align="right">��վ����:</td>
  <td><input type="text" name="websitename" value="<?php echo $row_arr[websitename]?>"/>  </td>
  </tr>
       	  <tr>
  <td align="right">��վ��ַ:</td>
  <td><input type="text" name="website_url" value="<?php echo $row_arr[website_url]?>"/>  </td>
  </tr>
         	  <tr>
  <td align="right">�ؼ���:</td>
  <td><input type="text" name="website_keyword" size=40 value="<?php echo $row_arr[website_keyword]?>"/>  </td>
  </tr>
           	  <tr>
  <td align="right">˵��:</td>
  <td><input type="text" name="website_cp" size=40 value="<?php echo $row_arr[website_cp]?>"/>  </td>
  </tr>
             	  <tr>
  <td align="right">�绰:</td>
  <td><input type="text" name="website_tel" size=40 value="<?php echo $row_arr[website_tel]?>"/>  </td>
  </tr>
             	  <tr>
  <td align="right">email:</td>
  <td><input type="text" name="website_email" size=40 value="<?php echo $row_arr[website_email]?>"/>  </td>
  </tr>
  <tr>
    <td colspan="2" align="center" height='30'>
  <input type="submit" name="update" value=" ���� "/>

  </td>  </form>
    </tr>
	</table>

	</BODY></HTML>
