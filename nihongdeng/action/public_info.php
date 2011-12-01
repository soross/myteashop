<?php
//²Ëµ¥
$menulist = getRows("menu where menu_type='PublicTopNav' order by menu_index", $db ," id,menu_url,menu_name_".$currlang." as menu_name ");
$smarty->assign("menulist",$menulist);

//ÓïÑÔ
if($currlang=="zh_cn"){
	$clang = 'ÖÐÎÄ';
}else{
	$clang = 'English';
}
$smarty->assign("clang",$clang);


$smarty->assign("lang",$lang[$currlang]['public']);

?>
