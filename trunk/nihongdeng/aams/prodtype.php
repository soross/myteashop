<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");


//新闻类型
$query = $db->query("select * from product_type where remark='1'");
$row = array();
while($rows = $db->fetch_array($query)){
	$row[] = $rows;
}
$smarty->assign("typeRows",$row);


$smarty->display("prodtype.html");
?>
