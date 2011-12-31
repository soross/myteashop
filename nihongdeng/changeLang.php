<?php
session_start();
if(isset($_GET[lang])&& !empty($_GET[lang])){
	$_SESSION['Lang'] = $_GET[lang];
	$url = $_GET[url];
	//将处理后的URL的查询字串替换原来的URL的查询字串：
	$url=str_replace("?lang=en&","?",$url);
	$url=str_replace("?lang=en","",$url);
	$url=str_replace("?lang=zh_cn&","?",$url);
	$url=str_replace("?lang=zh_cn","",$url);

	echo "<script>location.href='".$url."';</script>";

}

?>
