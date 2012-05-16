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

//是否查询数据
if(isset($_GET['isinfo'])&&!empty($_GET['isinfo']) &&"1"==$_GET['isinfo']){
	//获取查询条件
	$case = " and 1=1 ";
	if(isset($_GET['year'])&&!empty($_GET['year'])){
		$y = $_GET['year'];
		$case = $case." and DATE_FORMAT(create_date,'%Y')='".$y."' ";
	}
	if(isset($_GET['months'])&&!empty($_GET['months'])){
		$ms = $_GET['months'];
		if($ms==1){
			$case = $case." and DATE_FORMAT(create_date,'%m') in('01','02','03','1','2','3') ";
		}else if($ms==2){
			$case = $case." and DATE_FORMAT(create_date,'%m') in('04','05','06','4','5','6') ";
		}else if($ms==3){
			$case = $case." and DATE_FORMAT(create_date,'%m') in('07','08','09','7','8','9') ";
		}else if($ms==4){
			$case = $case." and DATE_FORMAT(create_date,'%m') in('10','11','12') ";
		}
		$smarty->assign("ms",$ms);
	}
	if(isset($_GET['mon'])&&!empty($_GET['mon'])){
		$m = $_GET['mon'];
		$case = $case." and DATE_FORMAT(create_date,'%m') ='".$m."' ";
		$smarty->assign("mon",$m);
	}

	//查询数据
	$overrpt= getListBySql("select count(*) as cnt,sum(orderprice) as sumprice from orderitem where ccdate is not null" .$case." "	,$db);
	$smarty->assign("overrpt",$overrpt[0]);

	$nooverrpt= getListBySql("select count(*) as cnt,sum(orderprice) as sumprice from orderitem where ccdate is null" .$case." "	,$db);
	$smarty->assign("nooverrpt",$nooverrpt[0]);

	$list= getListBySql("select *,(select c.custname from customer c where c.id=oi.custid) as custname from orderitem oi where ccdate is null" .$case." "	,$db);
	$smarty->assign("orderlist",$list);

	$smarty->assign("isinfo",$_GET[isinfo]);
}
$smarty->display("orderrpt.html");
?>
