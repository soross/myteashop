<?php
//菜单
$menulist = getRows("menu where menu_type='PublicTopNav' order by menu_index", $db ," id,menu_url,menu_name_".$currlang." as menu_name ");
$smarty->assign("menulist",$menulist);


//底部导航
$nav_buttom_info = getInfo("comm_code where type_name='ButtomNavInfo'",$db,"type_value_".$currlang." as type_value");
$smarty->assign("ButtomNavInfo",$nav_buttom_info[type_value]);

//版权信息
$copy_buttom_info = getInfo("comm_code where type_name='ButtomCopyInfo'",$db,"type_value_".$currlang." as type_value");
$smarty->assign("ButtomCopyInfo",$copy_buttom_info[type_value]);


//语言
if($currlang=="en"){
	$clang = 'en';
}else{
	$clang = '';
}
$smarty->assign("clang",$clang);


$url=$_SERVER["REQUEST_URI"];
$smarty->assign("CURL",$url);


$smarty->assign("lang",$lang[$currlang]['public']);

?>
