<?php
//菜单
$indexlist = getRows("boya_type where pid = -1 and seq=1 order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("indexlist",$indexlist);

$aboutlist = getRows("boya_type where pid = -1 and seq=5  order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("aboutlist",$aboutlist);

$aboutlists = getRows("boya_type where pid = 1 order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("aboutlists",$aboutlists);

$trainslist = getRows("boya_type where pid = -1 and seq=2  order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("trainslist",$trainslist);

$trainsslist = getRows("boya_type where pid = 2  order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("trainsslist",$trainsslist);

$register = getRows("boya_type where pid = -1 and seq=3  order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("register",$register);

$registers = getRows("boya_type where pid = 3 order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("registers",$registers);

$contact = getRows("boya_type where  pid=-1 and seq=4 order by seq", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("contact",$contact);

//联系我们
$contactUs = getInfo("boya_config where comm_type='ContactUs'" ,$db);
$smarty->assign("contactUs",$contactUs);


//底部
$Buttom = getInfo("boya_config where comm_type='Buttom'" ,$db);
$smarty->assign("Buttom",$Buttom);

?>
