<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addNews"==$_POST[task]){
	$db->query("insert into news(title,type_id,author,content,create_date,lang) values('$_POST[title]','$_POST[type]','$_POST[author]','".addslashes($_POST[content])."',DATE_FORMAT('$_POST[times]','%Y-%m-%d'),'$_POST[lang]')");
	echo "<script>if(confirm('新闻发布成功,是否继续发布?')){location.href='../addnews.php';}else{location.href='../news.php';}</script>";
}else if(isset($_GET[task]) && "deleteNews"==$_GET[task]){
	$db->query("delete from news where id = '$_GET[newsid]'");
	echo "<script>alert('新闻删除成功?');location.href='../news.php';</script>";
}else if(isset($_GET[task]) && "toUpdateNews"==$_GET[task]){
	echo "<script>location.href='../updatenews.php?newsid=".$_GET[newsid]."';</script>";
}else if(isset($_POST[task]) && "updateNews"==$_POST[task]){
	$db->query("update news set title='$_POST[title]',type_id='$_POST[type]',author='$_POST[author]',content='".addslashes($_POST[content])."',create_date=DATE_FORMAT('$_POST[times]','%Y-%m-%d'), lang='$_POST[lang]' where id='".$_POST[newid]."'");
	echo "<script>if(confirm('新闻修改成功,是否继续修改?')){location.href='../updatenews.php?newsid=".$_POST[newid]."';}else{location.href='../news.php';}</script>";
}else if(isset($_POST[task]) && "alldelNews"==$_POST[task]){
	$selectsingle=$_POST['selectsingle'];            //接收复选框的值   为数组
if($selectsingle!=""){
$del_num=count($selectsingle);
for($i=0;$i<$del_num;$i++){
	$db->query("delete from news where id ='$selectsingle[$i]'");
}
echo("<script type='text/javascript'>alert('删除成功！');location.href='../news.php';</script>");
}else{
echo("<script type='text/javascript'>alert('删除成功失改！');location.href='../news.php';</script>");
}

}



?>
