<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$lmlist = getRows("boya_type where pid='2' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);

if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$smarty->assign("taskid",$_GET[typeid]);
}


if(isset($_GET[typeid])&&!empty($_GET[typeid])&&isset($_GET[id])&&!empty($_GET[id])){
$infocn = getInfo(" boya_course where id='$_GET[id]' and type_id='$_GET[typeid]'" ,$db);
$smarty->assign("infocn",$infocn);
$infocn_type = getInfo(" boya_type where id='$_GET[typeid]'" ,$db);
$smarty->assign("infocn_type",$infocn_type);

}









$smarty->display("zsjz.html");
?>