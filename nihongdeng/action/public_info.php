<?php
//�˵�
$menulist = getRows("menu where menu_type='PublicTopNav' order by menu_index", $db ," id,menu_url,menu_name_".$currlang." as menu_name ");
$smarty->assign("menulist",$menulist);


//�ײ�����
$nav_buttom_info = getInfo("comm_code where type_name='ButtomNavInfo'",$db,"type_value_".$currlang." as type_value");
$smarty->assign("ButtomNavInfo",$nav_buttom_info[type_value]);

//��Ȩ��Ϣ
$copy_buttom_info = getInfo("comm_code where type_name='ButtomCopyInfo'",$db,"type_value_".$currlang." as type_value");
$smarty->assign("ButtomCopyInfo",$copy_buttom_info[type_value]);


//����
if($currlang=="zh_cn"){
	$clang = '����';
}else{
	$clang = 'English';
}
$smarty->assign("clang",$clang);


$smarty->assign("lang",$lang[$currlang]['public']);

?>
