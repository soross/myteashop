<?php
if(isset($_GET[prodid])&& !empty($_GET[prodid])){
	require_once("action/checkAamsLogin.php");
	require_once("action/smarty_inc.php");
	require_once("action/mysql.class.php");

	//未审核会员分类
	$prodlist = getListBySql("select * from prod where id='$_GET[prodid]'",$db);
	$smarty->assign("prodRow",$prodlist);

	$in = "";
	for ($i = 0; $i < sizeof($prodlist); $i++) {
		$in = $in."'".$prodlist[$i][id]."',";
	}
	$in = substr($in,0,strlen($in)-1);

	$prodlistlist = getListBySql("SELECT pl.prodid,pl.amount,pl.sumprice,cl.id as cid,cl.clid,pl.id,cl.clname,cl.clgg,
		cl.unit,cl.price FROM prodlist AS pl LEFT JOIN cl ON pl.clid = cl.id where pl.prodid in(".$in.") order by pl.prodid",$db);
	$smarty->assign("prodList",$prodlistlist);
	$smarty->assign("count",count($prodlistlist));

	//print_r(count($prodlistlist));

	$joblist = getListBySql("SELECT pj.prodid,pj.id,pj.jobid,j.jobname,jp.jobprice FROM prodjob AS pj LEFT JOIN job j ON pj.jobid = j.id " .
			"left join jobprice jp on j.id=jp.jobid and jp.prodid=pj.prodid where pj.prodid in(".$in.") order by pj.prodid",$db);
	$smarty->assign("prodjoblist",$joblist);

	//print_r($joblist);

	$job = getListBySql("select * from job",$db);
	$smarty->assign("joblist",$job);

	//print_r($job);

	$cl = getListBySql("select c.id,c.clid,c.clname,c.clgg,c.price from cl c order by c.clname,c.clid",$db);
	$smarty->assign("cllist",$cl);

	$smarty->display("updateprod.html");
}else{
	echo "<script>window.history.back();</script>";
	exit;
}
?>
