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
		<title>������ҳ-����չʾ-��������(Www.GuoguoNet.com)</title>
		<meta content="������ҳ ����չʾ �������� ��� ������� ��վ ��վ���� ��վ����" name=keywords />
		<meta content="�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���" name=description />
		<link href="../css/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
	</body>
</html>
