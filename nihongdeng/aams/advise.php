<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$remark='新增';
if(isset($_GET[remark])&&"OK"==$_GET[remark]){
	$remark='已处理';
}

$pagesize = 15;//一页显示多少条
//分页
$queryTotal = $db->query("select id from message where type='ADVISE' and remark='$remark'");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select * from message where type='ADVISE' and  remark='$remark' order by create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("messageRow",$newsRow);

//显示分页的内容
$smarty->assign("page",$pagenav);


$smarty->display("advise.html");
?>
