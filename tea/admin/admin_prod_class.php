<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);

if(isset($_POST[into_class])){
	$db->query("INSERT INTO `tea_prod_class` (`id`, `class_name`,`create_date`) VALUES (NULL, '$_POST[name]',now())");
	$seq_id = $db->insert_id();
	$db->query("update tea_prod_class set class_code='".md5($seq_id)."' where id = '".$seq_id."'");
	$db->Get_admin_msg("admin_prod_class.php","�Ѿ��ɹ���ӷ���");
}

if(!empty($_GET[del])){
	$db->query("DELETE FROM `tea_prod_class` WHERE `id` = '$_GET[del]' LIMIT 1;");
	$db->Get_admin_msg("admin_prod_class.php","ɾ���ɹ�");
}

if(isset($_POST[update_class])){
	$db->query("update `tea_prod_class` set `class_name`='$_POST[name]' WHERE `id` = '$_POST[id]' LIMIT 1;");
	$db->Get_admin_msg("admin_prod_class.php","���³ɹ�");
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>��̨����</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=Alan name=Author><LINK rev=MADE
href="mailto:haowubai@hotmail.com"><LINK href="images/private.css"
type=text/css rel=stylesheet>
<META content="MSHTML 6.00.6000.16890" name=GENERATOR></HEAD>
<BODY>
<TABLE class=navi cellSpacing=1 align=center border=0>
  <TBODY>
  <TR>
    <TH>��̨ >> ��Ʒ����</TH></TR></TBODY></TABLE><BR>

	<table border=0 cellspacing=1 align=center class=form>
	<tr>
		<th colspan="2">��Ӳ�Ʒ����</th>
	</tr>
	<form action="" method="post" >
    <tr>
    <td colspan="2" align="center" height='30'>
    <input type="text" name="name" value="" />
    <input type="submit" name="into_class" value=" ��Ӳ�Ʒ���� "/>
    </td>
    </form>
    </tr>
	</table>
<br>
		<table border=0 cellspacing=1 align=center class=form>
	<tr>
	<th colspan="2">ϵͳ��Ʒ����</th>
	</tr>
<?php
    $query_fid=$db->findall("tea_prod_class");
    while ($row_fid=$db->fetch_array($query_fid)) {
?>
  <tr style="vertical-align:top">
  <form action="" method="post">
  <td width="40%" align=right><?php echo $row_fid[id]?>&nbsp;&nbsp;</td>
  <td align=left>
  <input type="hidden" name="id" value="<?php echo $row_fid[id]?>" />
  <input type="text" name="name" value="<?php echo $row_fid[class_name]?>"/>
  <input type="submit" name="update_class" value="����"/>
  <input type="button" value="ɾ��" onclick="if(confirm('ȷ��ɾ���÷�����?'))location.href='?del=<?php echo $row_fid[id] ?>'"/>
  </form>
  </td>
  </tr>
 <?php } ?>
	</table>



<br>
	</BODY></HTML>
