<?php
require_once ("../action/checkAamsLogin.php");
require_once ("../action/mysql.class.php");
if (isset ($_GET[task]) && "orderpass" == $_GET[task]) {
	if (isset ($_GET[id]) && !empty ($_GET[id])) {
		if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[id] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
			$db->query("update orderpass set orderpass='" . md5($_GET[orderpass]) . "' where id ='" . $_GET[id] . "'");
			$db->addLog("CAP10003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "订单密码修改", "密码修改成功!");
			echo "<script>alert('密码修改成功!');location.href='../orderpass.php';</script>";
		} else {
			$db->addLog("CAP10003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "订单密码修改", "不是管理员,无法修改别人的密码!");
			echo "<script>alert('您不是管理员,无法修改别人的密码!');location.href='../orderpass.php';</script>";
		}
	} else {
		$db->addLog("CAP10003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "订单密码修改", "非法操作!");
		echo "<script>alert('非法操作!" . $_GET[id] . "');location.href='../admin.php';</script>";
	}
}
//验证订单密码
else
	if (isset ($_POST[task]) && $_POST[task] == "checkOrderPassword") {
		session_start();
		$userid = $_POST[id];
		$query = $db->query("select * from user where id = '" . $userid . "'");
		$us = is_array($row = $db->fetch_array($query));
		$ps = $us ? md5($_POST[orderpass]) == $row[orderpass] : FALSE;
		if ($ps) {
			$_SESSION['WEB_AAMS_CHECKORDER_ONTIME_SESSION'] = mktime();
			$db->addLog("CAP11002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "订单登录", "订单登录成功!");
			echo "<script>location.href='../orderlist.php'</script>";
		} else {
			$db->addLog("CAP11002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "订单登录", "订单密码错误!");
			echo "#" . $userid . "#" . md5($_POST[orderpass]) . "#" . $row[orderpass] . "##";
			echo "<script>alert('订单密码错误!');location.href='../orderpass.php'</script>"; //?error=".md5('PASSWORD')."
		}
	}

//新增订单
else
	if (isset ($_POST[task]) && $_POST[task] == "addOrder") {
		if (isset ($_POST[custid]) && $_POST[custid] != -1) {
			$db->query('start transaction');
			//$orderid = randNum();//流水号生成，改成手工录入
			$db->query("insert into orderitem(orderid,custid,create_date) values('" . $_POST[orderid] . "','".$_POST[custid]."',now())");
			$insertID = $db->insert_id();

			$prodid = $_POST[prodid];
			$cnt = $_POST[cnt];
			$itemprice = $_POST[itemprice];

			$orderprice = 0;
			for ($i = 0; $i < count($prodid); $i++) {
				if ($prodid[$i] != -1) {
					$db->query("insert into orderlist(orderid,prodid,cnt,itemprice) values('" . $insertID . "','" . $prodid[$i] . "','" . $cnt[$i] . "','" . $itemprice[$i] . "')");
					$orderprice = $orderprice + ($cnt[$i] * $itemprice[$i]);
				} else {
					$db->query('rollback');
					$db->addLog("CAP04008", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "新增订单明细", "没有选择订单明细中的产品名称!");
					echo "<script>alert('没有选择订单明细中的产品名称!');location.href='../addorder.php'</script>";
					exit;
				}
			}

			$db->query("update orderitem set orderprice = '" . $orderprice . "' where id='" . $insertID . "'");

			if (mysql_errno()) {
				$db->query('rollback');
				$db->addLog("CAP04001", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "新增订单", "新增订单失败!");
				echo "<script>alert('新增订单失败!');location.href='../addorder.php'</script>";
			} else {
				$db->query('commit');
				$db->addLog("CAP04001", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "新增订单", "请选择客户!");
				echo "<script>if(confirm('新增订单成功,是否继续新增?')){location.href='../addorder.php';}else{location.href='../orderlist.php';}</script>";
			}
		} else {
			$db->addLog("CAP04001", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "新增订单", "请选择客户!");
			echo "<script>alert('请选择客户!');location.href='../addorder.php'</script>";
		}
	}
//删除订单
else
	if (isset ($_GET[task]) && $_GET[task] == "deleteOrderItem") {
		if (isset ($_GET[itemid]) && !empty ($_GET[itemid])) {
			$db->query("select id from orderitem where pddate is null and id='" . $_GET[itemid] . "'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				$db->query('start transaction');
				$db->query("delete from orderitem where id = '" . $_GET[itemid] . "'");
				$db->query("delete from orderlist where orderid = '" . $_GET[itemid] . "'");
				if (mysql_errno()) {
					$db->query('rollback');
					$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "删除订单", "删除订单失败!");
					echo "<script>alert('删除订单失败!');location.href='../orderlist.php'</script>";
				} else {
					$db->query('commit');
					$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "删除订单", "订单已成功删除!");
					echo "<script>alert('订单已成功删除!');location.href='../orderlist.php'</script>";
				}
			}else{
				$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "删除订单", "删除订单失败!");
				echo "<script>alert('订单已排单,无法删除!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04002", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "删除订单", "非法操作!");
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//删除订单明细
else
	if (isset ($_GET[task]) && $_GET[task] == "deleteOrderList") {
		if (isset ($_GET[listid]) && !empty ($_GET[listid])) {
			$db->query("select id from orderitem where pddate is null and id='" . $_GET[itemid] . "'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				$db->query("select id from orderlist where isfinish='0' and id = '" . $_GET[listid] . "'");
				$count = $db->db_num_rows();
				if($count<1){
					$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "删除订单明细", "删除订单明细失败,该明细已经竣工!");
					echo "<script>alert('删除订单明细失败,该明细已经竣工!');location.href='../orderlist.php'</script>";
				}else{
					$db->query("delete from orderlist where id = '" . $_GET[listid] . "'");
					$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "删除订单明细", "订单明细已成功删除!");
					echo "<script>alert('订单明细已成功删除!');location.href='../orderlist.php'</script>";
				}
			}else{
				$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "删除订单明细", "删除订单明细失败!");
				echo "<script>alert('订单已排单,无法删除!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04003", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "删除订单明细", "非法操作!");
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//进仓
else
	if (isset ($_POST[task]) && $_POST[task] == "orderJC") {
		if (isset ($_POST[itemid]) && !empty ($_POST[itemid])) {
			$db->query("select * from orderlist where isfinish='0' and orderid='" . $_POST[itemid] . "'");
			$cnt = $db->db_num_rows();
			if ($cnt > 0) {
				$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "进仓", "订单明细未全部竣工,进仓失败!");
				echo "<script>alert('订单明细未全部竣工,进仓失败!');location.href='../orderlist.php'</script>";
			} else {
				$db->query("update orderitem set jcdate='".$_POST[sdate]."' where id = '" . $_POST[itemid] . "'");
				$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "进仓", "订单已成功进仓!");
				echo "<script>alert('订单已成功进仓!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "进仓", "非法操作!");
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//出仓
else
	if (isset ($_POST[task]) && $_POST[task] == "orderCC") {
		if (isset ($_POST[orderid]) && !empty ($_POST[orderid])) {
			$db->query("select * from orderlist where isfinish='0' and orderid=(select id from orderitem where orderid='" . $_POST[orderid] . "')");
			$cnt = $db->db_num_rows();
			if ($cnt > 0) {
				$db->addLog("CAP04007", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "出仓", "订单明细未全部竣工,出仓失败!");
				echo "<script>alert('订单明细未全部竣工,出仓失败!');location.href='../orderlist.php'</script>";
			} else {
				$db->query("update orderitem set ccdate='".$_POST[sdate]."',staffid='".$_POST[staffid]."',yhy='".$_POST[yhy]."' where orderid = '" . $_POST[orderid] . "' ");
				$db->addLog("CAP04007", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "出仓", "订单已成功出仓!");
				echo "<script>alert('订单已成功出仓!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04004", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "出仓", "非法操作!");
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}
//订单明细完工
else
	if (isset ($_GET[task]) && $_GET[task] == "orderListFinish") {
		if (isset ($_GET[listid]) && !empty ($_GET[listid])) {
			$db->query("select id from orderitem where pddate is null and id='" . $_GET[itemid] . "'");
			$cnt = $db->db_num_rows();
			if($cnt>0){
				$db->addLog("CAP04005", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "订单明细竣工", "订单明细已竣工失败!");
				echo "<script>alert('该订单未排单,无法操作竣工!');location.href='../orderlist.php'</script>";
			}else{
				$db->query("update orderlist set isfinish='1',finish_date=now() where id = '" . $_GET[listid] . "'");
				$db->addLog("CAP04005", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "成功", "新增订单明细竣工", "订单明细已竣工!");
				echo "<script>alert('订单明细已竣工!');location.href='../orderlist.php'</script>";
			}
		} else {
			$db->addLog("CAP04005", $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'], "失败", "新增订单明细竣工", "非法操作!");
			echo "<script>alert('非法操作!');location.href='../orderlist.php'</script>";
		}
	}

//排单
else
	if (isset ($_POST[task]) && "addStaffJobMore" == $_POST[task]) {
		$db->query('start transaction');
		//$staffcnt = $_POST[staffcnt];
		//将会用到implode() 函数进行PHP数组转字符串。而在PHP里，explode() 函数则是用来实现PHP字符串转数组的。
		//$text = implode(",", $vegetables);
		//$vegetables = explode(", ", $text);
		$staffcnt = explode("#",$_POST[staffcnt]);
		$m = date( "m" );
		$y = date( "Y" );
		for($i=0;$i<count($staffcnt);$i++){
			$jobprice = getListBySql("select jobprice from jobprice where jobid='".$_POST[jobid]."' and prodid='".$_POST[prodid]."'",$db);
			$info = explode("-",$staffcnt[$i]);
			$sql = "insert into staffjob(staffid,jobpriceid,prodid,orderid,orderlistid,jobid,amount,m_job,y_job,create_date) ".
					"values('".$info[0]."','".$jobprice[0][jobprice]."','".$_POST[prodid]."','".$_POST[oid]."','".$_POST[olid]."','".$_POST[jobid]."','".$info[1]."','$m','$y',now())";
			$db->query($sql);
			$sql="";
		}
		if (mysql_errno()) {
			$db->query('rollback');
			$db->addLog("CAP04006",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","订单排单","订单排单失败！".mysql_errno());
			echo "DB_ERROR".mysql_errno();
		} else {
			$db->query('commit');
			$db->addLog("CAP04006",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","订单排单","订单排单成功！");
			echo "OK";
		}
	}

//修改排单
else
	if (isset ($_POST[task]) && "updateStaffJobMore" == $_POST[task]) {
		$db->query('start transaction');
		//$staffcnt = $_POST[staffcnt];
		//将会用到implode() 函数进行PHP数组转字符串。而在PHP里，explode() 函数则是用来实现PHP字符串转数组的。
		//$text = implode(",", $vegetables);
		//$vegetables = explode(", ", $text);
		$staffcnt = explode("#",$_POST[staffcnt]);
		$m = date( "m" );
		$y = date( "Y" );
		for($i=0;$i<count($staffcnt);$i++){
			$jobprice = getListBySql("select jobprice from jobprice where jobid='".$_POST[jobid]."' and prodid='".$_POST[prodid]."'",$db);
			$info = explode("-",$staffcnt[$i]);
			$sql = "insert into staffjob(staffid,jobpriceid,prodid,orderid,orderlistid,jobid,amount,m_job,y_job,create_date) ".
					"values('".$info[0]."','".$jobprice[0][jobprice]."','".$_POST[prodid]."','".$_POST[oid]."','".$_POST[olid]."','".$_POST[jobid]."','".$info[1]."','$m','$y',now())";
			$db->query($sql);
			$sql="";
		}
		$db->query("delete from staffjob where id='$_POST[sjid]'");
		if (mysql_errno()) {
			$db->query('rollback');
			$db->addLog("CAP14003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","修改员工作业","修改员工作业失败！".mysql_errno());
			echo "DB_ERROR".mysql_errno();
		} else {
			$db->query('commit');
			$db->addLog("CAP14003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","修改员工作业","修改员工作业成功！");
			echo "OK";
		}
	}
//完成全部排单
else if(isset($_GET[task])&&"overAllPd"==$_GET[task]){
	$db->query("update orderitem set pddate = now() where id = '".$_GET[oid]."'");
	$db->addLog("CAP04006",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","订单排单","订单排单全部完成！");
	echo "<script>alert('订单排单全部完成!');location.href='../orderlist.php'</script>";
}
//排单时间
else if(isset($_POST[task])&&"orderPDdate"==$_POST[task]){
	if (isset ($_POST[itemid]) && !empty ($_POST[itemid])) {
		$db->query("update orderitem set pddate ='".$_POST[sdate]."' where id = '".$_POST[itemid]."'");
		$db->addLog("CAP04009",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","订单排单时间","订单排单时间录入成功！");
		echo "<script>alert('订单排单时间录入时间!');location.href='../orderlist.php'</script>";
	}else{
		echo "<script>alert('非法操作!');location.href='../pd.php?orderid=$_POST[orderid]'</script>";
	}
}

?>
