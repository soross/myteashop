<?php
//�˵�
$menulist = getRows("boya_type order by indexshow", $db ," id,type_name as menu_name,pid,url,seq ");
$smarty->assign("menulist",$menulist);


//��ϵ����
$contactUs = getInfo("boya_config where comm_type='ContactUs'" ,$db);
$smarty->assign("contactUs",$contactUs);


//�ײ�
$Buttom = getInfo("boya_config where comm_type='Buttom'" ,$db);
$smarty->assign("Buttom",$Buttom);

?>
