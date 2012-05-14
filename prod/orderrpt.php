<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");

//查询条件 年份
$query=$db->query("select min(create_date) from orderitem");
$info = $db->fetch_array($query);
$search_min_y=substr($info[0],0,4);
$search_max_y = date( "Y" );

$outhtml = "";
for ($i = 0; $i <= $search_max_y-$search_min_y; $i++) {
	$year = $search_min_y+$i;
	if($year==$search_max_y && empty($_GET['year'])){
		$outhtml=$outhtml."<option value='".$year."' selected>".$year."年</option>";
	}else{
		if(isset($_GET['year'])&&!empty($_GET['year'])){
			$outhtml=$outhtml."<option value='".$year."' selected>".$year."年</option>";
		}else{
			$outhtml=$outhtml."<option value='".$year."'>".$year."年</option>";
		}
	}
}
$smarty->assign("outYear",$outhtml);



//生成上一个月工资
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
	$sallist = getListBySql("select sj.staffid , sum(sj.jobpriceid*amount) as s
		from staffjob  sj where sj.isfinish='1' and sj.issal='0'  group by staffid ",$db);
	for ($i = 0; $i < sizeof($sallist); $i++) {
		$db->query("insert into sal(staffid,sal,m_sal,y_sal,ispay,create_date) values('".$sallist[$i][staffid]."',
				'".$sallist[$i][s]."','$m','$y','0',now())");
		$insertsalid = $db->insert_id();
		print_r($insertsalid);
		$db->query("update staffjob sj set sj.issal='".$insertsalid."' where sj.isfinish='1' and sj.issal='0' and sj.staffid='".$sallist[$i][staffid]."'");
	}
	/**
	$db->query("insert into sal(staffid,sal,m_sal,y_sal,ispay,create_date)
		select t.staffid , t.s,'$m','$y','0',now() from (select sj.staffid , sum(sj.jobpriceid*amount) as s
		from staffjob  sj where sj.isfinish='1' and sj.issal='0'  group by staffid ) t");
	$db->query("update staffjob sj set sj.issal='".$insertsalid."' where sj.isfinish='1' and sj.issal='0'");
	**/
	if (mysql_errno()) {
		$db->query('rollback');
		$db->addLog("CAP08004", '', "失败", "生成上一月工资", "工资生成失败!");
	} else {
		$db->query('commit');
		$db->addLog("CAP08004", '', "成功", "生成上一月工资", "工资生成成功!");
	}
}

//查询条件
$case=" where 1=1 ";
if(isset($_GET[staffname])&&!empty($_GET[staffname])){
	$case=$case." and sf.staffname like '%".$_GET[staffname]."%' ";
	$smarty->assign("staffname",$_GET[staffname]);
}
if(isset($_GET[m])&&!empty($_GET[m])){
	$case=$case." and s.m_sal ='".$_GET[m]."' ";
	$smarty->assign("m",$_GET[m]);
}
if(isset($_GET[y])&&!empty($_GET[y])){
	$case=$case." and s.y_sal = '".$_GET[y]."' ";
	$smarty->assign("y",$_GET[y]);
}
if(isset($_GET[staffid])&&!empty($_GET[staffid])){
	$case=$case." and s.staffid = '".$_GET[staffid]."' ";
	$smarty->assign("staffid",$_GET[staffid]);
}

$pagesize = 20;//一页显示多少条
//分页
$queryTotal = $db->query("select s.id from sal as s left join staff sf on s.staffid = sf.id ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//新闻列表
$newsQuery = $db->query("select s.*,DATE_FORMAT(s.create_date,'%Y-%m-%d') as create_date,
		 sf.id as sfid,sf.staffid,sf.staffname from sal as s left join staff sf
		 on s.staffid = sf.id ".$case." order by s.create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("sallist",$newsRow);


$staff = getListBySql("select id,staffid,staffname from staff order by staffname,staffid",$db);
$smarty->assign("staff",$staff);

//显示分页的内容
$smarty->assign("page",$pagenav);

$smarty->display("orderrpt.html");
?>
