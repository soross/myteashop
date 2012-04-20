<?php

//菜单
$menulist = getListBySql("select flag,comm_code from comm_code where comm_type='Menu' order by (remark+0) ", $db );
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

//底部信息
$copyInfo = getObject("comm_code where comm_type='Copy_Info'", $db ,"comm_value");
$smarty->assign("copyInfo",$copyInfo[comm_value]);


//最新公告
$newNews = getListBySql("select title,id from news order by create_date desc limit 0,8",$db);
$smarty->assign("newNews",$newNews);

// 热门专业
$hotNews = getListBySql("select title,id from news where type_id='1' order by create_date desc limit 0,8",$db);
$smarty->assign("hotNews",$hotNews);

//资料下载
$downloadNews = getListBySql("select title,id from news where type_id='9' order by create_date desc limit 0,8",$db);
$smarty->assign("downloadNews",$downloadNews);

?>
