<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$remark='����';
if(isset($_GET[remark])&&"OK"==$_GET[remark]){
	$remark='�Ѵ���';
}

$pagesize = 15;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from message where type='ADVISE' and remark='$remark'");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select * from message where type='ADVISE' and  remark='$remark' order by create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("messageRow",$newsRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("advise.html");
?>
