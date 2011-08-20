<?php
require_once("../action/global_action.php");
//产品分类
$queryProdClass = $db->query("select * from prod_class");
$rowPC= array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodClassList",$rowPC);
$smarty->display("case/prodadd.html");
?>
