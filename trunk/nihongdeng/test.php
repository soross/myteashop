<?php
//���ݿ�򻯲���
include_once('action/mysql.class.php');
//$row = getRows("lm_mb_limit",$db);  //�������ɼ�where֮����䣩 ����Դ �ֶ�
//$row = getInfo("lm_limit",$db);
print_r($row);

//cookie����
setcookie("Lang","zh_cn");
//setcookie("Lang","en");
//echo  ("".$_COOKIE["Lang"]);

//���������
/*
$lang = array(
	"zh_cn"=>array(
		"NAV"=>array(
			"HOMEPAGE"=>"��վ��ҳ",
			"ABOUTME"=>"��˾���",
			"PRODUCT"=>"��Ʒչʾ",
		),
		"ABOUTME"=>array(
			"GSWH"=>"��˾�Ļ�",
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
