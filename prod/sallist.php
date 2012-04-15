<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");

$m = date( "m" );
$y = date( "Y" );
if($m-1 ==0){
	$y = $y-1;
	$m = 12;
}else{
	$m=$m-1;
}

$querySql = $db->query("select id from sal where m_sal=$m and y_sal=$y");
$cnt = $db->db_num_rows();
if($cnt<1){
	$db->query("insert into sal(staffid,sal,m_sal,y_sal,ispay,create_date)
		select t.staffid , t.s,'3','2012','0',now()
		from (
		select sj.staffid , sum((select jp.jobprice from jobprice jp where jp.id = sj.jobpriceid)*amount) as s
		from staffjob  sj
		where sj.m_job = 3  and sj.y_job = 2012  group by staffid
		) t");
}


$pagesize = 20;//一页显示多少条
//分页
$queryTotal = $db->query("select id from sal");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select n.*,DATE_FORMAT(n.create_date,'%Y-%m-%d') as create_dates," .
		"(select staffid  from staff s where s.id = n.staffid)as staffid," .
		"(select staffname from staff s where s.id = n.staffid)as staffname from sal n " .
		"order by n.create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("sallist",$newsRow);



//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("sallist.html");
?>
