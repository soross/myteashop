<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");




$lmlist = getRows("boya_type where pid='3' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);

$courselist = getRows("boya_course where isselect=1 and type_id =8 order by create_date desc ", $db ," id,concat(class_name,'--',course_name) as course_name,fee ");
$smarty->assign("courselist",$courselist);


if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$smarty->assign("taskid",$_GET[typeid]);
}else{
	$smarty->assign("taskid","10");
}

if(isset($_GET[typeid])&&!empty($_GET[typeid])){
	$where = $where." and type_id ='$_GET[typeid]' ";
	$infocn = getInfo(" boya_type where id ='$_GET[typeid]'" ,$db);
	$smarty->assign("infocn",$infocn);
}
else{
	$where = $where." and type_id ='10' ";
	$infocn = getInfo(" boya_type where id ='10'" ,$db);
	$smarty->assign("infocn",$infocn);
}

$smarty->display("ddzxbm.html");
?>