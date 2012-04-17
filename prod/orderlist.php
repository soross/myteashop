<?php
require_once("action/checkAamsLogin.php");
require_once("action/checkOrderPassword.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");

$case=" where 1=1 ";
if(isset($_GET[key])&& !empty($_GET[key])){
	$case = $case." and orderid like '%".$_GET[key]."%'";
	$smarty->assign("key",$_GET[key]);
}
if(isset($_GET[sdate])&& !empty($_GET[sdate])){
	$case = $case." and DATE_FORMAT(pddate,'%Y-%m-%d') = '".$_GET[sdate]."'";
	$smarty->assign("sdate",$_GET[sdate]);
}



$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("SELECT * FROM orderitem AS oi LEFT JOIN customer AS c ON oi.custid = c.id ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

$sql = "SELECT
c.custname,
oi.id,
oi.orderid,
oi.pddate,
oi.jcdate,
oi.custid,
oi.orderprice,
oi.create_date,
oi.create_user,
oi.edit_date,
oi.edit_user,
oi.edit_reason
FROM
orderitem AS oi
LEFT JOIN customer AS c ON oi.custid = c.id ".$case." order by id desc limit $firstcount, $displaypg";

$orderRow = getListBySql($sql,$db);
$smarty->assign("orderlist",$orderRow);
//print_r($sql);

$in = "";
for($i=0;$i<count($orderRow);$i++){
	$in = $in."'".$orderRow[$i][id]."',";
}
$in = substr($in,0,strlen($in)-1);
if(!empty($in)){
	$orderlistRow = getListBySql("select ol.*,(select p.prodid from prod p where p.id = ol.prodid)as prodname from orderlist ol where ol.orderid in(".$in.")",$db);
}
$smarty->assign("orderlistlist",$orderlistRow);


//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("orderlist.html");
?>
