<?php
require_once("../../action/global_post.php");
//��������
if(isset($_POST[task])&&"addNews"==$_POST[task]){
	$sql = "insert into news(title,news_class,author,src,create_date,content) values('$_POST[title]','$_POST[news_class]','$_POST[author]','$_POST[src]',now(),'$_POST[newsContent]')";
	$db->query($sql);
	//�����ֶ�
	$newsId = $db->insert_id();
	$db->query("update news set news_info_url='newsinfo.php?id=$newsId' where id='$newsId'");
	echo "<script>if(confirm('���ŷ����ɹ�,�Ƿ������������?')){location.href='../newsadd.php';}else{location.href='../newslist.php'}</script>";
}
//ɾ������task=deleteNews&id={$newsList[list].id}&page={$cpage}
else if(isset($_GET[task])&&"deleteNews"==$_GET[task]){
	$db->query("delete from news where id='$_GET[id]'");
	echo "<script>alert('����ɾ���ɹ�,�����������б�!');location.href='../newslist.php?page=$_GET[page]'</script>";
}

//�����޸�
else if(isset($_POST[task])&&"editNews"==$_POST[task]){
	$sql = "update news set title='$_POST[title]',news_class='$_POST[news_class]',author='$_POST[author]',src='$_POST[src]',content='$_POST[newsContent]',news_info_url='newsinfo.php?id=$_POST[id]' where id='$_POST[id]'";
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

//RSS��������
else if(isset($_POST[task])&& "createNews"==$_POST[task]){
	$db->query("insert into news(title,content,news_class) select title,content,'-123' from rss where state='0'");
	$db->query("update rss set state='1' where state='0'");
	$db->query("update news set news_class='4',author='����Ա����',src='����˼E',create_date=now(),news_info_url=CONCAT('newsinfo.php?id=',id) where news_class='-123'");
	$cnt = $db->db_affected_rows();
	echo $cnt;
}
//RSS������������
else if(isset($_POST[task])&& "getState"==$_POST[task]){
	$query = $db->query("select count(*) from rss where state='0'");
	$row = $db->fetch_array($query);
	$cnt = $row[0];
	echo $cnt;
}

//��ȡRSS����
else if(isset($_POST[task])&&"getRssDate" == $_POST[task]){
	require_once("../../util/icove.php");
	$query = $db->query("select id,title from rss where state='0'");
	$rss = "<table>";
	$index = 1;
	while ($row = $db->fetch_array($query)) {
		$rss.="<tr><td width='30%' align='center'>&nbsp;".$index."&nbsp;</td><td>".$row[title]."</td></tr>";
		$index++;
	}
	$rss.="</table>";
	echo escape($rss);
}

?>
