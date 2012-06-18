<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

$lmlist = getRows("boya_type where pid='3' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);


if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$smarty->assign("taskid",$_GET[typeid]);
}else{
	$smarty->assign("taskid","11");
}

if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id ='$_GET[typeid]' ";
	$infocn = getInfo(" boya_type where id ='$_GET[typeid]'" ,$db);
	$smarty->assign("infocn",$infocn);
}
else{
	$where = $where." and type_id ='11' ";
	$infocn = getInfo(" boya_type where id ='11'" ,$db);
	$smarty->assign("infocn",$infocn);
}

$smarty->display("xcbm.html");
?>