<?php
if(!isset($_GET[url] )|| ""==$_GET[url] ){
	echo "<script>window.history.back();alert('该首页正在审核中...');</script>";
}else{
	require_once("../action/mysql.class.php");

	$displayPath = $_GET[url];
	$path = "../templates/prod/".$displayPath;
	$fp = fopen($path,"r");
	$content = fread($fp,filesize($path));
	fclose($fp);
	$db->makeSearchData("/templates/prod/".$displayPath,$content);


	header("Location: ../templates/prod/".$displayPath);
}
?>
<html>
	<head>
		<title>方案首页-方案展示-果果网络(Www.GuoguoNet.com)</title>
		<meta content="方案首页 方案展示 果果网络 软件 软件开发 网站 网站建设 整站建设" name=keywords />
		<meta content="果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！" name=description />
		<link href="../css/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
	</body>
</html>
