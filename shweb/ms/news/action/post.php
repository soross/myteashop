<?php
require_once("../../action/global_post.php");
//发布新闻
if(isset($_POST[task])&&"addNews"==$_POST[task]){
	$sql = "insert into news(title,create_date,content) values('$_POST[title]',now(),'$_POST[newsContent]')";
	$db->query($sql);
	echo "<script>if(confirm('新闻发布成功,是否继续发布新闻?')){location.href='../newsadd.php';}else{location.href='../newslist.php'}</script>";
}
//删除新闻task=deleteNews&id={$newsList[list].id}&page={$cpage}
else if(isset($_GET[task])&&"deleteNews"==$_GET[task]){
	$db->query("delete from news where id='$_GET[id]'");
	echo "<script>alert('新闻删除成功,将返回新闻列表!');location.href='../newslist.php?page=$_GET[page]'</script>";
}

//新闻修改
else if(isset($_POST[task])&&"editNews"==$_POST[task]){
	$sql = "update news set title='$_POST[title]',content='$_POST[newsContent]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('新闻修改成功,是否继续修改新闻?')){location.href='../newsedit.php?page=$_POST[page]&id=$_POST[id]&task=editNews';}else{location.href='../newslist.php?page=$_POST[page]'}</script>";
}

//添加新闻类型
else if(isset($_POST[task])&& "addNewsClass"==$_POST[task]){
	$db->query("insert into news_class(class_name,create_date) values('$_POST[class_name]',now())");
	$newsClassId = $db->insert_id();
	$db->query("update news_class set url='newslist.php?classcode=$newsClassId' where id = '$newsClassId'");
	echo "<script>alert('新闻类型添加成功,将新闻类型列表!');location.href='../newsclass.php'</script>";
}

//修改新闻类型updateNewsClass
else if(isset($_POST[task])&& "updateNewsClass"==$_POST[task]){
	$db->query("update news_class set class_name='$_POST[class_name]', url='newslist.php?classcode=$_POST[id]' where id = '$_POST[id]'");
	echo "<script>alert('新闻类型修改成功,将新闻类型列表!');location.href='../newsclass.php'</script>";
}

//删除新闻类型updateNewsClass
else if(isset($_GET[task])&& "deleteNewsClass"==$_GET[task]){
	$db->query("delete from news_class where id='$_GET[id]'");
	echo "<script>alert('新闻类型删除成功,将新闻类型列表!');location.href='../newsclass.php'</script>";
}
?>
