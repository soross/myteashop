<?php
		$username = str_replace(" ", "", $_POST[username]);
		$query = $db->query("select * from orderpass where username = '" . $username . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[orderpass]) == $row[orderpass] : FALSE;
		if ($ps) {
			$_SESSION['WEB_AAMS_ORDER_UID_SESSION'] = $row[id];
			$_SESSION['WEB_AAMS_ORDER_SESSION'] = $row[username];
			$_SESSION['WEB_AAMS_ORDER_SESSION'] = md5($row[password]);
			$db->addLog("CAP11002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","������¼","������¼�ɹ�!");
			echo "<script>location.href='../orderlist.php'</script>";
		} else {
			session_destroy();
			$db->addLog("CAP11002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","������¼","�����û������������!");
			echo "<script>alert('�����û������������!');location.href='../checkorder.php'</script>";
		}
?>
