<?php
//菜单
$menulist = getRows("boya_type order by indexshow", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("menulist",$menulist);


//联系我们
$contactUs = getInfo("boya_config where comm_type='ContactUs'" ,$db);
$smarty->assign("contactUs",$contactUs);


//底部
$Buttom = getInfo("boya_config where comm_type='Buttom'" ,$db);
$smarty->assign("Buttom",$Buttom);

?>
