<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//一页显示多少条
//分页
$queryTotal = $db->query("select id from prod");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//未审核会员分类
$prodRow = getListBySql("select * from prod order by id desc limit $firstcount, $displaypg",$db);

for($i=0;i<3;$i++){
    $sql="SELECT p.amount,p.sumamount,p.bz,c.clid,c.clname FROM prodlist p, cl c where p.clid = c.id and p.prodid='".$prodRow[$i][id]."'";
	$prodRow[$i][prodlist] = getListBySql($sql,$db);;
}
$smarty->assign("prodRow",$prodRow);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("prodlist.html");
?>
