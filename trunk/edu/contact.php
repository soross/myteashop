<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('addressNav','<a href="index.php">��ҳ</a>&nbsp;-&gt;&nbsp;��ϵ����');

$info = getListBySql("select comm_value from comm_code where comm_type='Menu' and comm_code='contact.php'",$db);
$smarty->assign("content",$info[0][comm_value]);

$smarty->display("contact.htm");
?>
