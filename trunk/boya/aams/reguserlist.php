<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 20;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from boya_reg_user");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;



//δ��˻�Ա����
$adminQuery = $db->query("select r.*,a.username as adminname from boya_reg_user r left join boya_admin_user a on a.id=r.input_user  order by create_date limit $firstcount, $displaypg");
$adminRow = array();
while($rowadmin = $db->fetch_array($adminQuery)){
	$adminRow[] = $rowadmin;
}
$smarty->assign("adminRow",$adminRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);

$smarty->display("reguserlist.html");
?>
