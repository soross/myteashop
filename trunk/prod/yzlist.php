<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select * from yz");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$yzQuery = $db->query("select y.*,(select staffname from staff s where s.id= y.staffid) as staffname,(select staffid from staff s where s.id= y.staffid) as staffid from yz y order by y.id desc limit $firstcount, $displaypg");
$yzRow = array();
while($rowyz = $db->fetch_array($yzQuery)){
	$yzRow[] = $rowyz;
}
$smarty->assign("yzRow",$yzRow);

//显示分页的内容
$smarty->assign("page",$pagenav);




$smarty->display("yzlist.html");
?>
