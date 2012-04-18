<?php
	if(isset($_GET[task]) && "logout"==$_GET[task]){
		if(!isset($_SESSION)){
			session_start();
		}
		session_destroy();

		echo "<script>location.href='admin.php';</script>";
		exit;
	}else{
		require_once("action/smarty_inc.php");
		require_once("action/mysql.class.php");
		if(isset($_GET[error])&& !empty($_GET[error])){
			if(md5("ERROR")==$_GET[error]){
				$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","系统登录","非法提交!");
				$smarty->assign("err_code","1");
				$smarty->assign("err_info","非法提交!");
			}else if(md5("RANDOM")==$_GET[error]){
				require_once ("action/SysCrypt.class.php");
				$sc = new SysCrypt('');
				$smarty->assign("username",$sc -> php_decrypt($_GET[u]));
				$smarty->assign("err_code","2");
				$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","系统登录","验证码错误!");
				$smarty->assign("err_info","验证码错误!");
			}else{
				$smarty->assign("err_code","3");
				$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","系统登录","用户名或密码错误!");
				$smarty->assign("err_info","用户名或密码错误!");
			}
		}
		$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","系统登录","系统登录成功!");
		$smarty->display("admin.html");
	}
?>
