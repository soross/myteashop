<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	$db->query("insert into news(title,type_id,author,content,create_date,lang) values('$_POST[title]','$_POST[type]'," .
			"'$_POST[author]','".replaceContent($_POST[content])."',now(),'$_POST[lang]')");
	echo "<script>if(confirm('新闻发布成功,是否继续发布?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	$db->query("delete from news where id = '$_GET[newsid]'");
	echo "<script>alert('新闻删除成功?');location.href='../news.php';</script>";
}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";
}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	$db->query("update news set title='$_POST[title]',type_id='$_POST[type]',author='$_POST[author]'," .
			"content='".replaceContent($_POST[content])."',lang='$_POST[lang]' where id='".$_POST[newsid]."'");
	echo "<script>if(confirm('新闻修改成功,是否继续修改?')){location.href='../updatenews.php?newsid=".$_POST[newsid]."';}else{location.href='../news.php';}</script>";
}


function replaceContent($str){
	return str_replace("'","&acute;",$str);
}
?>
