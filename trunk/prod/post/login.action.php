<?php
require_once ("../action/mysql.class.php");
if(isset($_POST['task']) && "Login"==$_POST['task']){
	if(isset($_POST[randomCode]) && 4==strlen($_POST[randomCode])){
		session_start();
		$username = str_replace(" ", "", $_POST[username]);
		$query = $db->query("select * from user where username = '" . $username . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[password]) == $row[password] : FALSE;
		if ($ps) {
			$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] = $row[id];
			$_SESSION['WEB_AAMS_USER_LOGIN_UNAME_SESSION'] = $row[username];
			$_SESSION['WEB_AAMS_USER_LOGIN_SESSION'] = md5($row[username] . $row[password] . "TKBK");
			$_SESSION['WEB_AAMS_USER_LOGIN_BEAN_SESSION'] = $row;
			$_SESSION['WEB_AAMS_USER_LOGIN_ONTIME_SESSION'] = mktime();
			$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","ϵͳ��¼","ϵͳ��¼�ɹ�!");
			echo "<script>location.href='../main.php'</script>";
		} else {
			session_destroy();
			$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ϵͳ��¼","�û������������!");
			echo "<script>alert('�û������������!');location.href='../admin.php'</script>";//?error=".md5('PASSWORD')."
		}
	}else{
		require_once ("../action/SysCrypt.class.php");
		$sc = new SysCrypt('');
		$username = $sc -> php_encrypt($_POST[username]);
		$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ϵͳ��¼","��֤�����!");
		echo "<script>alert('��֤�����!');location.href='../admin.php?error=".md5('RANDOM')."&u=".$username."'</script>";
	}
}else{
	$db->addLog("CAP11001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ϵͳ��¼","�Ƿ��ύ!");
	echo "<script>alert('�Ƿ��ύ!');location.href='../admin.php?error=".md5('ERROR')."'</script>";
}
?>
