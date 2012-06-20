<?php
//菜单
$indexlist = getListBySql("select id,type_name as menu_name,pid,url,seq from boya_type where id='1' ", $db );
$smarty->assign("indexinfo",$indexlist[0]);

$aboutlist = getListBySql("select id,type_name as menu_name,pid,url,seq  from boya_type where id='14'", $db );
$smarty->assign("aboutinfo",$aboutlist[0]);

$aboutlists = getListBySql("select id,type_name as menu_name,pid,url,seq  from boya_type where pid = '14' order by seq", $db );
$smarty->assign("aboutlists",$aboutlists);

$trainslist = getListBySql("select id,type_name as menu_name,pid,url,seq  from boya_type where id='2'", $db );
$smarty->assign("trainsinfo",$trainslist[0]);

$trainsslist = getListBySql("select id,type_name as menu_name,pid,url,seq  from boya_type where pid = '2'  order by seq", $db );
$smarty->assign("trainsslist",$trainsslist);

$register = getListBySql("select id,type_name as menu_name,pid,url,seq  from boya_type where id='3' ", $db );
$smarty->assign("registerInfo",$register[0]);

$registers = getListBySql("select id,type_name as menu_name,pid,url,seq  from boya_type where pid = '3' order by seq", $db );
$smarty->assign("registers",$registers);

$contact = getListBySql("select id,type_name as menu_name,pid,url,seq  from  boya_type where  id='4'", $db );
$smarty->assign("contactinfo",$contact[0]);

//联系我们
$contactUs = getListBySql("select * from boya_config where comm_type='ContactUs'" ,$db);
$smarty->assign("contactUs",$contactUs[0]);


//底部
$Buttom = getListBySql("select * from boya_config where comm_type='Buttom'" ,$db);
$smarty->assign("Buttom",$Buttom[0]);

//底部
$map = getListBySql("select * from boya_config where comm_type='Map'" ,$db);
$smarty->assign("map",$map[0]);

?>
