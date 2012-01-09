<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/aboutus_public_info.php");
include_once("action/page.class.php");

//分页
$pagesize = 6;//一页显示多少条
$queryTotal = $db->query("select id from comm_code where type_name='Environment' and isshow='0'" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;
//显示分页的内容
$smarty->assign("page",$pagenav);

$row = getRows("comm_code where type_name='Environment' and isshow='0' limit $firstcount, $displaypg  ",$db);
$smarty->assign("envRows",$row);


$smarty->display("environment.htm");
?>
