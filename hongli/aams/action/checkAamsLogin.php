<?php
session_start();
if (!isset ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']) || !isset($_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION'])
	|| !isset ($_SESSION['WEB_AAMS_USER_LOGIN_SESSION']) || !isset ($_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'])) {
	session_destroy();
	Get_Return_Page('admin.php', '����û�е��룬���ȵ��룡');
}else{
	Get_user_ontime();
}

function Get_Return_Page($url, $show = '�����ѳɹ���') {
	echo "<script>alert('".$show."');location.href='" . $url . "';</script>";
}
/**
 * �û���½��ʱʱ��(��)
 */
function Get_user_ontime() {
	$new_time = mktime();
	$onlinetime = $_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'];
	//echo ($new_time - $onlinetime ).'<br>';
	if (($new_time - $onlinetime ) > 36000000) {
		session_destroy();
		Get_Return_Page("admin.php",'���볬ʱ�������µ��룡');
		exit ();
	} else {
		$_SESSION['WEB_USER_LOGIN_ONTIME_SESSION'] = mktime();
	}
}

function Save_log($db,$service_code,$mb_id,$remark,$num,$result,$cardNo,$domode,$orderNo){
	$db->query("insert into lm_mb_log(service_code,create_Date,mb_id,remark,num,result,cardno,domode,orderNo) " .
			"values('".$service_code."',now(),'".$mb_id."','".$remark."','".$num."','".$result."','".$cardNo."','".$domode."','".$orderNo."')");
}


function randNum(){
	$str=date("YmdHis").rand(10000,99999);
	return $str;
}
?>
