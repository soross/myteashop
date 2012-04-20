<?php

//²Ëµ¥
$menulist = getList("menu order by seq", $db ," id,url,name,pid,remark");
$smarty->assign("menulist",$menulist);

//SEO
$title = getObject("comm_code where comm_type='SEO_Title'",$db,"comm_value");
$keyword = getObject("comm_code where comm_type='SEO_Keyword'",$db,"comm_value");
$desc = getObject("comm_code where comm_type='SEO_DESC'",$db,"comm_value");
$seo = array();
$seo['title']=$title[comm_value];
$seo['keyword']=$keyword[comm_value];
$seo['desc']=$desc[comm_value];

$smarty->assign("seo",$seo);

//µ×²¿µ¼º½
$navlist = getList("comm_code where comm_type='Buttom_Nav' order by fkid", $db ,"comm_value,comm_code,remark");
$smarty->assign("navList",$navlist);


$hotPhone = getObject("comm_code where comm_type='Hot_Phone'",$db,"comm_value");
$smarty->assign("hotPhone",$hotPhone[comm_value]);

?>
