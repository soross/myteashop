<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$smarty->assign('nav_style','197');
$smarty->assign('nav_son_style','260');

//��ϵ��ʽ
$ContactList = getList("comm_code a,comm_code b where a.id=b.fkid and a.comm_code='Contact'",$db,"b.comm_value,b.comm_type");
$smarty->assign('contactList',$ContactList);

$smarty->display("contact.htm");
?>

