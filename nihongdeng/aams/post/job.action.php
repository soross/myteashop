<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	$db->query("insert into lm_news(title,type,author,content,create_date) values('$_POST[title]','$_POST[type]','$_POST[author]','".addslashes($_POST[content])."',now())");
	echo "<script>if(confirm('���ŷ����ɹ�,�Ƿ��������?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	$db->query("delete from lm_news where id = '$_GET[newsid]'");
	echo "<script>alert('����ɾ���ɹ�?');location.href='../news.php';</script>";
}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";
}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	$db->query("update lm_news set title='$_POST[title]',type='$_POST[type]',author='$_POST[author]',content='".addslashes($_POST[content])."' where id='".$_POST[newsid]."'");
	echo "<script>if(confirm('�����޸ĳɹ�,�Ƿ�����޸�?')){location.href='../updatenews.php?newsid=".$_POST[newsid]."';}else{location.href='../news.php';}</script>";
}

?>
