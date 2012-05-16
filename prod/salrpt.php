<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");


//查询条件 年份
$query=$db->query("select min(y_sal) from sal");
$info = $db->fetch_array($query);
$search_min_y=$info[0];
$search_max_y = date( "Y" );

$outhtml = "";
for ($i = 0; $i <= $search_max_y-$search_min_y; $i++) {
	$year = $search_min_y+$i;
	if($year==$search_max_y && empty($_GET['year'])){
		$outhtml=$outhtml."<option value='".$year."' selected>".$year."年</option>";
	}else{
		if(isset($_GET['year'])&&!empty($_GET['year'])&& $year==$_GET['year']){
			$outhtml=$outhtml."<option value='".$year."' selected>".$year."年</option>";
		}else{
			$outhtml=$outhtml."<option value='".$year."'>".$year."年</option>";
		}
	}
}
$smarty->assign("outYear",$outhtml);

$stafflist = getListBySql("select * from staff order by staffname,staffid",$db);
$smarty->assign("staff",$stafflist);

if(isset($_GET[isinfo])&&!empty($_GET[isinfo])&&"1"==$_GET[isinfo]){
	$smarty->assign("isinfo",$_GET[isinfo]);

	//查询条件
	$case= " and 1=1 ";
	if(isset($_GET['year'])&&!empty($_GET['year'])){
		$y = $_GET['year'];
		$case = $case." and y_sal='".$y."' ";
	}
	if(isset($_GET['months'])&&!empty($_GET['months'])){
		$ms = $_GET['months'];
		if($ms==1){
			$case = $case." and m_sal in('01','02','03','1','2','3') ";
		}else if($ms==2){
			$case = $case." and m_sal in('04','05','06','4','5','6') ";
		}else if($ms==3){
			$case = $case." and m_sal in('07','08','09','7','8','9') ";
		}else if($ms==4){
			$case = $case." and m_sal in('10','11','12') ";
		}
		$smarty->assign("ms",$ms);
	}
	if(isset($_GET['mon'])&&!empty($_GET['mon'])){
		$m = $_GET['mon'];
		$case = $case." and m_sal ='".$m."' ";
		$smarty->assign("mon",$m);
	}
	if(isset($_GET['staffid'])&&!empty($_GET['staffid'])){
		$staffid = $_GET['staffid'];
		$case = $case." and staffid ='".$staffid."' ";
		$smarty->assign("staffid",$staffid);
	}


	//工资总数
	//未支付
	$nopayquery = $db->query("select sum(sal) as cnt from sal where ispay='0' ".$case ." " );
	$nopayinfo = $db->fetch_array($nopayquery);
	$smarty->assign("nopaysal",$nopayinfo);

	//已支付
	$payquery = $db->query("select sum(sal) as cnt from sal where ispay='1' ".$case ." " );
	$payinfo = $db->fetch_array($payquery);
	$smarty->assign("paysal",$payinfo);


}

$smarty->display("salrpt.html");

?>
