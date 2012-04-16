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

$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from orderitem ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;


$orderRow = getListBySql("select oi.*,(select c.custname from customer c where c.id = oi.custid)as custname from orderitem oi ".$case." order by id desc limit $firstcount, $displaypg",$db);
$smarty->assign("orderlist",$orderRow);

$in = "";
for($i=0;$i<count($orderRow);$i++){
	$in = $in."'".$orderRow[$i][id]."',";
}
$in = substr($in,0,strlen($in)-1);

$orderlistRow = getListBySql("select ol.*,(select p.prodid from prod p where p.id = ol.prodid)as prodname from orderlist ol where ol.orderid in(".$in.")",$db);

$smarty->assign("orderlistlist",$orderlistRow);


//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("orderlist.html");
?>
