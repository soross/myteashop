<?php
include_once("action/smarty_inc.php");
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

//一级目录
$eduTitleRow = getRows("menu where pid='9'",$db,"id,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleRows",$eduTitleRow);

//小百科
$eduSonTitleRow = getRows("menu where pid='13'",$db,"id,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleSonRows",$eduSonTitleRow);

//使用方法
$eduSonTitleRow2 = getRows("menu where pid='16'",$db,"id,menu_name_".$currlang." as menu_name  ");
$smarty->assign("titleSonRows2",$eduSonTitleRow2);

//详细信息
$typeid=12;
if(!empty($_GET[typeid])&&""!=$_GET[typeid]){
	$typeid=$_GET[typeid];
}
$eduInfo = getInfo("college c,menu m where lang='".$currlang."' and c.type_id=m.id and type_id=$typeid",$db,"c.*,menu_name_".$currlang." as menu_name  ");
$smarty->assign("eduInfo",$eduInfo);

//show=yes是否展示
if(!empty($_GET[show]) && "yes"==$_GET[show]){
	$smarty->assign("display","block");
}else{
	$smarty->assign("display","none");
}
if(!empty($_GET[show]) && "yes2"==$_GET[show]){
	$smarty->assign("display2","block");
}else{
	$smarty->assign("display2","none");
}


$smarty->display("college.html");
?>
