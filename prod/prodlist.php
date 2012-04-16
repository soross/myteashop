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

$prodlistlist = getListBySql("SELECT pl.prodid,pl.amount,pl.sumprice,cl.clid,pl.id,cl.clname,cl.clgg,
	cl.unit,cl.price FROM prodlist AS pl LEFT JOIN cl ON pl.clid = cl.id where pl.prodid in(".$in.") order by pl.prodid",$db);
$smarty->assign("prodList",$prodlistlist);


$joblist = getListBySql("SELECT pj.prodid,pj.id,j.jobname FROM prodjob AS pj LEFT JOIN job j ON pj.jobid = j.id where pj.prodid in(".$in.") order by pj.prodid",$db);
$smarty->assign("jobList",$joblist);

//print_r($prodlist);
//print_r($prodlistlist);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("prodlist.html");
?>
