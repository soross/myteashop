<?php
if(!isset($_GET[url] )|| ""==$_GET[url] ){
	echo "<script>window.history.back();alert('����ҳ���������...');</script>";
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
		<title>������ҳ|����չʾ|��������|���|��վ|�������|��վ����|��վ����|��վ����|�������|Www.GuoguoNet.com</title>
		<meta content="������ҳ|����չʾ|��������|���|�������|��վ|��վ����|��վ����|��վ����|�������" name=keywords />
		<meta content="������ҳ|����չʾ|�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����վ���ơ�������Ƶȷ���" name=description />
		<link href="../css/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
	<table><tr><td><script type="text/javascript">var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F3c5ccdae98e7b11e96137e3e4b35326d' type='text/javascript'%3E%3C/script%3E"));</script></td><td width="10px"></td><td><script src="http://s19.cnzz.com/stat.php?id=3204615&web_id=3204615&show=pic1" language="JavaScript"></script></td></tr></table>
	</body>
</html>
