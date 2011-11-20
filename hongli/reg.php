<?php
require_once("action/smarty_index.php");
require_once("action/mysql.class.php");

$buttomQuery=$db->query("select content from lm_comm_code where type_name='ButtomCopyInfo'");
$buttomInfo = $db->fetch_array($buttomQuery);
$smarty->assign("buttomInfo",html_entity_decode($buttomInfo[content]));


$navQuery=$db->query("select content from lm_comm_code where type_name='ButtomNav'");
$navInfo = $db->fetch_array($navQuery);
$smarty->assign("buttomNavInfo",html_entity_decode($navInfo[content]));

if(isset($_GET[action])&&"yes"==$_GET[action]){
	$smarty->assign("checked","checked='checked'");
}else{
	$smarty->assign("checked","");
}


if("-1"==$_GET[error]){
	$smarty->assign("errorInfo","您需要同意《用户协议》内容才能注册!");
}else if("0"==$_GET[error]){
	$smarty->assign("errorInfo","用户密码不一致!");
}else if("1"==$_GET[error]){
	$smarty->assign("errorInfo","二次密码不一致!");
}else if("2"==$_GET[error]){
	$smarty->assign("errorInfo","推荐人不正确,如果没有推荐人请使用“lianmengwang”!");
}else if("3"==$_GET[error]){
	$smarty->assign("errorInfo","用户名已存在!");
}else if("-2"==$_GET[error]){
	$smarty->assign("errorInfo","用户名不能为空!");
}else{
	$smarty->assign("errorInfo","OK");
}

$smarty->display("reg.html");
?>
