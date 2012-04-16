<?php
session_start();
if (!isset ($_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'])) {
	$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = null;
	echo "<script>alert('请输入订单密码！');location.href='orderpass.php';</script>";
}else{

	/**
	 * 用户登陆超时时间(秒)
	 */
	$new_time = mktime();
	$onlinetime = $_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'];
	//echo ($new_time - $onlinetime ).'<br>';
	if (($new_time - $onlinetime ) > 180000) {
		$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = null;
		echo "<script>alert('订单密码超时，请重新输入！');location.href='orderpass.php';</script>";
		exit ();
	} else {
		$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = mktime();
	}
}



?>
