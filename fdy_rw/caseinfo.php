<?php
if(isset($_GET[caseid])&&!empty($_GET[caseid])){
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");


$case = getObject("`case` where id='$_GET[caseid]'",$db);
$smarty->assign('case',$case);

$smarty->display("caseinfo.htm");
}else{
	echo "<script>window.history.back(-1);</script>" ;
}
?>

