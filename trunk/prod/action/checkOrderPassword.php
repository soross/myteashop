<?php
session_start();
if (!isset ($_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'])) {
	$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = null;
	echo "<script>alert('�����붩�����룡');location.href='orderpass.php';</script>";
}else{

	/**
	 * �û���½��ʱʱ��(��)
	 */
	$new_time = mktime();
	$onlinetime = $_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'];
	//echo ($new_time - $onlinetime ).'<br>';
	if (($new_time - $onlinetime ) > 180000) {
		$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = null;
		echo "<script>alert('�������볬ʱ�����������룡');location.href='orderpass.php';</script>";
		exit ();
	} else {
		$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = mktime();
	}
}



?>
