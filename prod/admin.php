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
				$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ϵͳ��¼","�Ƿ��ύ!");
				$smarty->assign("err_code","1");
				$smarty->assign("err_info","�Ƿ��ύ!");
			}else if(md5("RANDOM")==$_GET[error]){
				require_once ("action/SysCrypt.class.php");
				$sc = new SysCrypt('');
				$smarty->assign("username",$sc -> php_decrypt($_GET[u]));
				$smarty->assign("err_code","2");
				$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ϵͳ��¼","��֤�����!");
				$smarty->assign("err_info","��֤�����!");
			}else{
				$smarty->assign("err_code","3");
				$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ϵͳ��¼","�û������������!");
				$smarty->assign("err_info","�û������������!");
			}
		}
		$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","ϵͳ��¼","ϵͳ��¼�ɹ�!");
		$smarty->display("admin.html");
	}
?>
