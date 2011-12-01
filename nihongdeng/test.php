<?php
//数据库简化操作
include_once('action/mysql.class.php');
//$row = getRows("lm_mb_limit",$db);  //表名（可加where之后语句） 数据源 字段
//$row = getInfo("lm_limit",$db);
print_r($row);

//cookie操作
setcookie("Lang","zh_cn");
//setcookie("Lang","en");
//echo  ("".$_COOKIE["Lang"]);

//多语句数组
/*
$lang = array(
	"zh_cn"=>array(
		"NAV"=>array(
			"HOMEPAGE"=>"网站首页",
			"ABOUTME"=>"公司简介",
			"PRODUCT"=>"产品展示",
		),
		"ABOUTME"=>array(
			"GSWH"=>"公司文话",
		),
	),
	"en"=>array(
		"NAV"=>array(
			"HOMEPAGE"=>"HOMEPAGE",
			"ABOUTME"=>"ABOUTME",
			"PRODUCT"=>"PRODUCT",
		),
	),
);

print_r($lang["".$_COOKIE["Lang"]]);
*/
?>
