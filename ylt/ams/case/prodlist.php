<?php
require_once("../action/global_action.php");

$result = @mysql_query("select * from prod_class a,prod b where a.id =b.prod_class");
$total = @mysql_num_rows($result);
pageft($total, 10);
if ($firstcount < 0) $firstcount = 0;
//ап╠М

$query = $db->query("select a.class_name,b.* from prod_class a,prod b where a.id =b.prod_class order by b.create_date desc limit $firstcount, $displaypg");
$prodList = array();
while($row = $db->fetch_array($query)){
	$prodList[] = $row;
}

$smarty->assign("prodList",$prodList);
$smarty->assign("cpage",$page);
$smarty->assign("page",$pagenav);

$smarty->display("case/prodlist.html");
?>
