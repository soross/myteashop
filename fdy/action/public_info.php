<?php

//�˵�
$menulist = getList("menu order by seq", $db ," id,url,name,pid,remark");
$smarty->assign("menulist",$menulist);

/**
//�ײ�����
$nav_buttom_info = getInfo("comm_code where type_name='ButtomNavInfo'",$db,"type_value_".$currlang." as type_value");
$smarty->assign("ButtomNavInfo",html_entity_decode($nav_buttom_info[type_value]));

//��Ȩ��Ϣ
$copy_buttom_info = getInfo("comm_code where type_name='ButtomCopyInfo'",$db,"type_value_".$currlang." as type_value");
$smarty->assign("ButtomCopyInfo",html_entity_decode($copy_buttom_info[type_value]));


////modify by 1-8 flash�л�
$flashPic = getRows("comm_code where type_name='TopFlashImage' order by remark",$db);
$smarty->assign("TopFlashImage",$flashPic);




//����
if($currlang=="en"){
	$clang = 'en';
}else{
	$clang = '';
}
$smarty->assign("clang",$clang);


$url=$_SERVER["REQUEST_URI"];
$smarty->assign("CURL",$url);


$smarty->assign("lang",$lang[$currlang]['public']);
**/
?>
