<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");
require_once("../action/public_info.php");

$pagesize = 10;//一页显示多少条

//分页
$queryTotal = $db->query("SELECT id FROM succ_case");
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//成功案例列表
$caseQuery = $db->query("select * from succ_case order by create_date desc limit $firstcount, $displaypg ");
$caseList = array();
while($row = $db->fetch_array($caseQuery)){
	$caseList[] = $row;
}
$smarty->assign("caseList",$caseList);


//显示分页的内容
$smarty->assign("page",$pagenav);


//当前位置
$address = "您当前位置：首 页 &gt; <font color='#FF3300'>成功案例</font>";
$smarty->assign("address",$address);

$smarty->display("case/caselist.html");
?>
