<?php
//�˵�
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

//��ϵ����
$contactUs = getListBySql("select * from boya_config where comm_type='ContactUs'" ,$db);
$smarty->assign("contactUs",$contactUs[0]);

//SEO_Title

$SEO_Title = getInfo("boya_config where comm_type='SEO_Title'" ,$db);
$smarty->assign("SEO_Title",$SEO_Title);

//SEO_Keyword

$SEO_Keyword = getInfo("boya_config where comm_type='SEO_Keyword'" ,$db);
$smarty->assign("SEO_Keyword",$SEO_Keyword);

//SEO_Desc
$SEO_Desc = getInfo("boya_config where comm_type='SEO_Desc'" ,$db);
$smarty->assign("SEO_Desc",$SEO_Desc);

//�ײ�
$Buttom = getListBySql("select * from boya_config where comm_type='Buttom'" ,$db);
$smarty->assign("Buttom",$Buttom[0]);

//�ײ�
$map = getListBySql("select * from boya_config where comm_type='Map'" ,$db);
$smarty->assign("map",$map[0]);


//�ײ�
$imlist = getListBySql("select * from boya_config where comm_type='Im_Account' order by id" ,$db);
$smarty->assign("imlist",$imlist);




?>
