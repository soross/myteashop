<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getList(" boya_config where comm_type in('SEO_Title','SEO_Keyword','SEO_Desc')" ,$db,'id,comm_code,comm_flag');
$seolist = array();
for ($i = 0; $i < sizeof($list); $i++) {
	if($list[$i][comm_flag]=='Title'){
		$seolist["title"] = $list[$i][comm_code];
	}
	if($list[$i][comm_flag]=='Keyword'){
		$seolist["keyword"]= $list[$i][comm_code];
	}
	if($list[$i][comm_flag]=='Desc'){
		$seolist["desc"] = $list[$i][comm_code];
	}
}
//print_r($list);
$smarty->assign("seolist",$seolist);

$smarty->display("seo.html");
?>
