<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	$db->query("insert into news(title,type_id,author,content,create_date) values('$_POST[title]','$_POST[type]'," .
			"'$_POST[author]','".replaceContent($_POST[content])."',now())");
	echo "<script>if(confirm('���ŷ����ɹ�,�Ƿ��������?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	$db->query("delete from news where id = '$_GET[newsid]'");
	echo "<script>alert('����ɾ���ɹ�?');location.href='../news.php';</script>";
}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";
}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	$db->query("update news set title='$_POST[title]',type_id='$_POST[type]',author='$_POST[author]'," .
			"content='".replaceContent($_POST[content])."' where id='".$_POST[newsid]."'");
	echo "<script>if(confirm('�����޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updatenews.php?newsid=".$_POST[newsid]."';}else{location.href='../news.php';}</script>";
}



else if(isset($_POST[task]) && "updateNewsType"==$_POST[task]){
	$db->query("update news_type set type_name='$_POST[type_name]',seq='$_POST[seq]' where id='".$_POST[typeid]."'");
	echo "<script>alert('�޸ĳɹ�!');location.href='../newstype.php';</script>";
}

else if(isset($_POST[task]) && "addNewsType"==$_POST[task]){
	$db->query("insert into news_type(type_name,seq) values('$_POST[type_name]','$_POST[seq]')");
	echo "<script>alert('����������ͳɹ�!');location.href='../newstype.php';</script>";
}
else if(isset($_GET[task]) && "deleteNewsType"==$_GET[task]){
	$db->query("delete from news_type where id = '$_GET[typeid]'");
	echo "<script>alert('ɾ���������ͳɹ�!');location.href='../newstype.php';</script>";
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}
?>
