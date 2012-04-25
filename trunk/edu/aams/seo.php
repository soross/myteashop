<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");

$list = getList(" comm_code where comm_type in('SEO_Title','SEO_Keyword','SEO_DESC')" ,$db,'id,comm_value,comm_type');
$seolist = array();
for ($i = 0; $i < sizeof($list); $i++) {
	if($list[$i][comm_type]=='SEO_Title'){
		$seolist["title"] = $list[$i][comm_value];
	}
	if($list[$i][comm_type]=='SEO_Keyword'){
		$seolist["keyword"]= $list[$i][comm_value];
	}
	if($list[$i][comm_type]=='SEO_DESC'){
		$seolist["desc"] = $list[$i][comm_value];
	}
}
//print_r($list);
$smarty->assign("seolist",$seolist);

$smarty->display("seo.html");
?>
