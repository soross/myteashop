<?php
//菜单
$menuRow = getRows(" menu m where m.`show`='1'",$db," id,pid,url,menu_name_".$currlang." as menu_name " );
$smarty->assign("menuRows",$menuRow);
//print_r($menuRow);

//获取宝迪学院的子菜单
$collegeRow = getRows(" college_type t where t.pid='0'",$db," id,link_url,college_title_".$currlang." as menu_name " );
$smarty->assign("collegeRows",$collegeRow);

//获取宝迪学院的id号
$collegeIdInfo = getInfo("comm_code where type_name='College_Menu_ID'",$db,"type_code");
$smarty->assign("collegeID",$collegeIdInfo[type_code]);



if($currlang=="zh_cn"){
	$clang = '中文';
}else{
	$clang = 'English';
}
$smarty->assign("clang",$clang);


$smarty->assign("lang",$lang[$currlang]['public']);

?>
