<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='newslist.php'</script>";
	exit();
}

//������������
$query = $db->query("select * from news where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='newslist.php'</script>";
	exit();
}
//���ʴ���
$db->query("update news set click_count=click_count+17 where id ='".$_GET[id]."'");

$smarty->assign("newsinfo",$row);

//��ǰλ��
$address = "����ǰλ�ã��� ҳ &gt; ������Ѷ &gt; <font color='#FF3300'>$row[title]</font>";
$smarty->assign("address",$address);

$smarty->display("news/newsinfo.html",$_GET[id]);
?>
