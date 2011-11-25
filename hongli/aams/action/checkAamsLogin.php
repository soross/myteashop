<?php
session_id(SID);
if(!isset($_SESSION)){
	session_start();
}
ini_set('display_errors', 'Off');

if (!isset ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']) || !isset($_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION']) ||
    !isset ($_SESSION['WEB_AAMS_USER_LOGIN_SESSION']) || !isset ($_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'])) {

	if(isset($_COOKIE['WEB_AAMS_USER_LOGIN_UID_COOKIE']) && !empty($_COOKIE['WEB_AAMS_USER_LOGIN_UID_COOKIE'])
		&& isset($_COOKIE['WEB_AAMS_USER_LOGIN_UNAME_COOKIE']) && !empty($_COOKIE['WEB_AAMS_USER_LOGIN_UNAME_COOKIE'])
		&& isset($_COOKIE['WEB_AAMS_USER_LOGIN_COOKIE']) && !empty($_COOKIE['WEB_AAMS_USER_LOGIN_COOKIE'])
		&& isset($_COOKIE['WEB_AAMS_USER_LOGIN_ONTIME_COOKIE']) && !empty($_COOKIE['WEB_AAMS_USER_LOGIN_ONTIME_COOKIE'])){

		if(Get_user_ontime()){
			$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] = $_COOKIE['WEB_AAMS_USER_LOGIN_UID_COOKIE'];
			$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION'] = $_COOKIE['WEB_AAMS_USER_LOGIN_UNAME_COOKIE'];
			$_SESSION['WEB_AAMS_USER_LOGIN_SESSION'] = $_COOKIE['WEB_AAMS_USER_LOGIN_COOKIE'];
			$_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'] = $_COOKIE['WEB_AAMS_USER_LOGIN_ONTIME_COOKIE'];
		}else{
			Get_Return_Page("admin.php",'���볬ʱ�������µ��룡');
		}
	} else{
		session_destroy();
		Get_Return_Page('admin.php', '����û�е��룬���ȵ��룡');
	}
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
	if(empty($onlinetime)){
		$onlinetime = $_COOKIE['WEB_AAMS_USER_LOGIN_ONTIME_COOKIE'];
	}

	if (($new_time - $onlinetime ) > 36000000) {
		session_destroy();
		return false;
	} else {
		$_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'] = mktime();
		setcookie('WEB_AAMS_USER_LOGIN_ONTIME_COOKIE',mktime(),(time()+ (20*60)),'/aams/') ;
		return true;
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
