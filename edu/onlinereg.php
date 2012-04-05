<?php
include_once("action/smarty_inc.php");
include_once("action/mysql.class.php");
include_once("action/public_info.php");

if(isset($_GET[err])&& !empty($_GET[err])){
	session_start();
	$user = array();
	$user = $_SESSION['OnlineRegUserInfo'];
	$smarty->assign("user",$user);
	if("SYS_ERROR"!=$_GET[err]){
		$script = "<script>document.zxbj.".$_GET[err].".focus();</script>";
		$smarty->assign("script",$script);
	}
}

$smarty->assign('addressNav','<a href="index.php">首页</a>&nbsp;-&gt;&nbsp;在线报名');

$list = getListBySql("select comm_type,comm_code from comm_code where flag='OnlineReg' order by remark",$db);
$smarty->assign("list",$list);

$smarty->display("onlinereg.htm");
?>
