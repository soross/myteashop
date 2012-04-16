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
$prodlist = getListBySql("select * from prod order by id desc limit $firstcount, $displaypg",$db);
$smarty->assign("prodRow",$prodlist);

$in = "";
for ($i = 0; $i < sizeof($prodlist); $i++) {
	$in = $in."'".$prodlist[$i][id]."',";
}
$in = substr($in,0,strlen($in)-1);

$prodlistlist = getListBySql("select pl.prodid,pl.amount,pl.sumprice,(select c.clid from cl c where c.id = pl.clid) as clid,(select c.unit from cl c where c.id = pl.clid) as unit,(select c.clname from cl c where c.id = pl.clid) as clname,(select c.clgg from cl c where c.id = pl.clid) as clgg from prodlist pl where prodid in(".$in.")",$db);
$smarty->assign("prodList",$prodlistlist);


//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("prodlist.html");
?>
