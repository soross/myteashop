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
	$db->query('start transaction');
	$db->query("insert into sal(staffid,sal,m_sal,y_sal,ispay,create_date)
		select t.staffid , t.s,'$m','$y','0',now() from (select sj.staffid , sum(sj.jobpriceid*amount) as s
		from staffjob  sj where sj.isfinish='0' and sj.issal='0'  group by staffid ) t");
	$db->query("update staffjob sj set sj.issal='1' where sj.isfinish='0' and sj.issal='0'");
	if (mysql_errno()) {
		$db->query('rollback');
		$db->addLog("CAP08004", '', "失败", "生成上一月工资", "工资生成失败!");
	} else {
		$db->query('commit');
		$db->addLog("CAP08004", '', "成功", "生成上一月工资", "工资生成成功!");
	}
}


$pagesize = 20;//一页显示多少条
//分页
$queryTotal = $db->query("select id from sal");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select s.*,DATE_FORMAT(s.create_date,'%Y-%m-%d') as create_date,
		 sf.id as sfid,sf.staffid,sf.staffname from sal as s left join staff sf
		 on s.staffid = sf.id order by s.create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("sallist",$newsRow);



//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("sallist.html");
?>
