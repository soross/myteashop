<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//����������
$smarty->clear_cache('video/play.html'); //���index.tpl�Ļ���
require_once("../action/public_info.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='../video/videolist.php'</script>";
	exit();
}

//������������
$query = $db->query("select * from video where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='../video/videolist.php'</script>";
	exit();
}
$smarty->assign("videoinfo",$row);


//�ж��ļ�����
$moiveType = "MediaPlayer";
if (eregi(".mid$",$movieurl) || eregi(".avi$",$movieurl) || eregi(".asf$",$movieurl) ||eregi(".asx$",$movieurl) || eregi(".wmv$",$movieurl) || eregi(".wma$",$movieurl)){
	//MediaPlayer����
	$moiveType = "MediaPlayer";
}else if(eregi(".ra$",$movieurl)|| eregi(".mp3$",$movieurl) || eregi(".rm$",$movieurl) || eregi(".ram$",$movieurl) ){
	//RealPlayer���ŵ�
	$moiveType= "RealPlayer";
}else if(eregi(".swf$",$movieurl)) {
	//flashplayer���ŵ�
	$moiveType= "FlashPlayer";
}else{
	$moiveType = "MediaPlayer";
}
$smarty->assign("moiveType",$moiveType);

//��Ʒ����
$queryProdClass = $db->query("select id,class_name,url from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//����
$smarty->assign("title","��Ѷ����|".$SeoTitle);
$smarty->assign("keywords","��Ѷ����|".$SeoKeywords);
$smarty->assign("description","��Ѷ����|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='../video/videolist.php'>��Ѷ����</a> &gt; ".$row[video_name];
$smarty->assign("address",$address);

$smarty->display("video/play.html");
?>
