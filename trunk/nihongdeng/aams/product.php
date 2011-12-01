<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 12;//一页显示多少条
//分页
$queryTotal = $db->query("select id from news");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//产品列表
$prodQuery = $db->query("select n.*,m.menu_name_zh_cn,m.menu_name_en from product n,menu m where n.type_id=m.id order by create_date desc limit $firstcount, $displaypg");
$prodRow = array();
while($rowprod = $db->fetch_array($prodQuery)){
	$prodRow[] = $rowprod;
}
$smarty->assign("prodRow",$prodRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

//显示分页的内容
$smarty->assign("page",$pagenav);


$smarty->display("product.html");
?>
