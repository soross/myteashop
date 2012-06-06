<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 20;//一页显示多少条
//分页
$queryTotal = $db->query("select id from boya_reg_user");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//未审核会员分类
$adminQuery = $db->query("select r.*,a.username as adminname from boya_reg_user r left join boya_admin_user a on a.id=r.input_user  order by create_date limit $firstcount, $displaypg");
$adminRow = array();
while($rowadmin = $db->fetch_array($adminQuery)){
	$adminRow[] = $rowadmin;
}
$smarty->assign("adminRow",$adminRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("reguserlist.html");
?>
