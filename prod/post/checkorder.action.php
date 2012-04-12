<?php
		$username = str_replace(" ", "", $_POST[username]);
		$query = $db->query("select * from orderpass where username = '" . $username . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[orderpass]) == $row[orderpass] : FALSE;
		if ($ps) {
			$_SESSION['WEB_AAMS_ORDER_UID_SESSION'] = $row[id];
			$_SESSION['WEB_AAMS_ORDER_SESSION'] = $row[username];
			$_SESSION['WEB_AAMS_ORDER_SESSION'] = md5($row[password]);
			echo "<script>location.href='../orderlist.php'</script>";
		} else {
			session_destroy();
			echo "<script>alert('订单用户名或密码错误!');location.href='../checkorder.php'</script>";
		}
?>
