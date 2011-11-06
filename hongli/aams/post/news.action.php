<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	$db->query("insert into lm_news(title,type,author,content,create_date) values('$_POST[title]','$_POST[type]','$_POST[author]','".addslashes($_POST[content])."',now())");
	echo "<script>if(confirm('新闻发布成功,是否继续发布?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	$db->query("delete from lm_news where id = '$_GET[newsid]'");
	echo "<script>alert('新闻删除成功?');location.href='../news.php';</script>";
}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";
}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	$db->query("update lm_news set title='$_POST[title]',type='$_POST[type]',author='$_POST[author]',content='".addslashes($_POST[content])."' where id='".$_POST[newsid]."'");
	echo "<script>if(confirm('新闻修改成功,是否继续修改?')){location.href='../updatenews.php?newsid=".$_POST[newsid]."';}else{location.href='../news.php';}</script>";
}

?>
