<?php
require_once("../../action/global_post.php");
//��������
if(isset($_POST[task])&&"addNews"==$_POST[task]){
	$sql = "insert into news(title,create_date,content) values('$_POST[title]',now(),'$_POST[newsContent]')";
	$db->query($sql);
	echo "<script>if(confirm('���ŷ����ɹ�,�Ƿ������������?')){location.href='../newsadd.php';}else{location.href='../newslist.php'}</script>";
}
//ɾ������task=deleteNews&id={$newsList[list].id}&page={$cpage}
else if(isset($_GET[task])&&"deleteNews"==$_GET[task]){
	$db->query("delete from news where id='$_GET[id]'");
	echo "<script>alert('����ɾ���ɹ�,�����������б�!');location.href='../newslist.php?page=$_GET[page]'</script>";
}

//�����޸�
else if(isset($_POST[task])&&"editNews"==$_POST[task]){
	$sql = "update news set title='$_POST[title]',content='$_POST[newsContent]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('�����޸ĳɹ�,�Ƿ�����޸�����?')){location.href='../newsedit.php?page=$_POST[page]&id=$_POST[id]&task=editNews';}else{location.href='../newslist.php?page=$_POST[page]'}</script>";
}

//�����������
else if(isset($_POST[task])&& "addNewsClass"==$_POST[task]){
	$db->query("insert into news_class(class_name,create_date) values('$_POST[class_name]',now())");
	$newsClassId = $db->insert_id();
	$db->query("update news_class set url='newslist.php?classcode=$newsClassId' where id = '$newsClassId'");
	echo "<script>alert('����������ӳɹ�,�����������б�!');location.href='../newsclass.php'</script>";
}

//�޸���������updateNewsClass
else if(isset($_POST[task])&& "updateNewsClass"==$_POST[task]){
	$db->query("update news_class set class_name='$_POST[class_name]', url='newslist.php?classcode=$_POST[id]' where id = '$_POST[id]'");
	echo "<script>alert('���������޸ĳɹ�,�����������б�!');location.href='../newsclass.php'</script>";
}

//ɾ����������updateNewsClass
else if(isset($_GET[task])&& "deleteNewsClass"==$_GET[task]){
	$db->query("delete from news_class where id='$_GET[id]'");
	echo "<script>alert('��������ɾ���ɹ�,�����������б�!');location.href='../newsclass.php'</script>";
}
?>
