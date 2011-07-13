<?php
require_once("../action/global_action.php");
//产品分类
$queryProdClass = $db->query("select * from prod_class");
$rowPC= array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodClassList",$rowPC);

$result = @mysql_query("select id from prod where state='1'");
$total = @mysql_num_rows($result);
pageft($total, 10);
if ($firstcount < 0) $firstcount = 0;
//列表

$query = $db->query("select a.class_name,b.* from prod_class a,prod b where a.id =b.prod_class and b.state='1' order by b.create_date desc limit $firstcount, $displaypg");
$prodList = array();
while($row = $db->fetch_array($query)){
	$prodList[] = $row;
}

$smarty->assign("caseList",$prodList);
$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);
$smarty->display("case/caselist.html");
?>
