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
$smarty->assign("newsinfo",$row);


//��������
$newsClassQuery = $db->query("select * from news_class");
$newsClassRow = array();
while($rowCR = $db->fetch_array($newsClassQuery)){
	$newsClassRow[] = $rowCR;
}
$smarty->assign("newsClassRow",$newsClassRow);

//����
$smarty->assign("title",$row[title]."|���Ŷ�̬|".$SeoTitle);
$smarty->assign("keywords",$row[title]."|���Ŷ�̬|".$SeoKeywords);
$smarty->assign("description",$row[title]."|���Ŷ�̬|".$SeoDesc);



//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../news/newslist.html'>���Ŷ�̬<a> &gt; $row[title]";
$smarty->assign("address",$address);

$smarty->display("news/newsinfo.html",$_GET[id]);

$content = $smarty->fetch('news/newsinfo.html',$_GET[id]);
$db->makeSearchData("../news/newsinfo.php?id=".$_GET[id],$content);

//����html
/**
$filename = $db->getFileName($_GET[id],"../newspage/","news");
$db->makeHtml("../newspage/".$filename,$content);//д�����ݵ�news.html�ļ�

$db->query("update news set news_info_url='../newspage/".$filename."' where id='".$_GET[id]."'");
**/
//echo "<script>location.href='../newspage/".$filename."'</script>";
?>
