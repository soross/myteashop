<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");
include_once("action/page.class.php");





$lmlist = getRows("boya_type where pid='2' order by seq", $db ," id,type_name as name,url,seq as typeid  ");
$smarty->assign("lmlist",$lmlist);

$courselist = getRows("boya_course where isselect=1 order by create_date desc ", $db ," id,concat(class_name,'--',course_name) as course_name,fee ");
$smarty->assign("courselist",$courselist);




if(isset($_GET[picid])&&!empty($_GET[picid])){
	$infocn = getInfo(" boya_type where id ='13'" ,$db);
	$smarty->assign("infocn",$infocn);
}

if(isset($_GET[picid])&&!empty($_GET[picid])){
	$info = getInfo(" boya_news where id ='$_GET[picid]'" ,$db);
	$smarty->assign("info",$info);
}



$smarty->display("info.html");
?>