<?php
//²Ëµ¥
$menuRow = getRows(" menu m where m.`show`='1'",$db," id,pid,url,menu_name_".$currlang." as menu_name " );
$smarty->assign("menuRows",$menuRow);
//print_r($menuRow);

if($currlang=="zh_cn"){
	$clang = 'ÖÐÎÄ';
}else{
	$clang = 'English';
}
$smarty->assign("clang",$clang);


$smarty->assign("lang",$lang[$currlang]['public']);

?>
