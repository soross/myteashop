<?php
require_once ("../action/checkAamsLogin.php");
require_once ("../action/mysql.class.php");
if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
	if (isset ($_POST[task]) && "addProdDDD" == $_POST[task]) {
		if ($_POST[prodid] == $_POST[prodid]) {
			$db->query("select * from prod where prodid='" . $_POST[prodid] . "'");
			$cnt = $db->db_num_rows();
			if ($cnt < 1) {
				$db->query("insert into user(username,password,realname,create_date) values('" . $_POST[username] . "','" . md5($_POST[password]) . "','" . $_POST[realname] . "',now())");
				echo "<script>if(confirm('管理员帐号新增成功,是否继续新增?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
			} else {
				echo "<script>alert('该管理员帐号已存在!');location.href='../adduser.php';</script>";
			}
		} else {
			echo "<script>alert('两次密码不一致!');location.href='../adduser.php';</script>";
		}
	}
} else {
	echo "<script>alert('您的权限不够,请联系管理员!');location.href='../adduser.php';</script>";
}
if (isset ($_GET[task]) && "toUpdateUser" == $_GET[task]) {
	if (isset ($_GET[aamsid]) && !empty ($_GET[aamsid])) {
		if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
			$db->query("update user set password='" . md5($_GET[password]) . "' where id ='" . $_GET[aamsid] . "'");
			echo "<script>alert('密码修改成功!');location.href='../userlist.php';</script>";
		} else {
			echo "<script>alert('您不是管理员,无法修改别人的密码!');location.href='../userlist.php';</script>";
		}
	} else {
		echo "<script>alert('非法操作!" . $_GET[aamsid] . "');location.href='../admin.php';</script>";
	}
} else
	if (isset ($_GET[task]) && "deleteAamsUser" == $_GET[task]) {
		if ($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == 1) {
			$db->query("delete from  user where id ='" . $_GET[aamsid] . "'");
			echo "<script>alert('帐号删除成功!');location.href='../userlist.php';</script>";
		} else {
			echo "<script>alert('您不是管理员,无法删除账户!');location.href='../userlist.php';</script>";
		}
	}

//更新信息
else
	if (isset ($_POST[task]) && "updateAdminUserInfo" == ($_POST[task])) {
		$sql = "update user set ";
		if (isset ($_POST[password]) && !empty ($_POST[password]) && $_POST[password] == $_POST[password_confirm]) {
			$sql = $sql . " password='" . md5($_POST[password]) . "' , realname='" . $_POST[realname] . "' ";
		} else {
			$sql = $sql . " realname='" . $_POST[realname] . "' ";
		}
		$sql = $sql . " where id=' " . $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] . " '";
		$db->query($sql);
		echo "<script>alert('管理员信息更新成功!');location.href='../inc/tab.php';</script>";
	}

//新增产品 CAP01001 新增产品
else
	if (isset ($_POST[task]) && "addProd" == ($_POST[task])) {
		//文件保存目录URL
		$save_path = '../images/prod/'; //201109281154581.jpg
		//定义允许上传的文件扩展名
		$ext_arr = array (
			'gif',
			'png',
			'jpg'
		);
		require "../action/FileUpload.class.php";
		$up = new FileUpload(array (
			'isRandName' => true,
			'allowType' => $ext_arr,
			'FilePath' => $save_path,
			'MAXSIZE' => (1024 * 1000
		)));
		if ($up->uploadFile('picpath')) {
			$filename = "images/prod/" . $up->getNewFileName();
			$db->query('start transaction');
			$db->query("insert into prod(prodid,picname,picpath,create_date) values('" . $_POST[prodid] . "','" . $_POST[picname] . "','" . $filename . "',now())");
			$insertID = $db->insert_id();

			//产品明细
			$cls = $_POST[clid];
			$clcnt = $_POST[amount];
			for ($i = 0; $i < count($cls); $i++) {
				$clinfo = getListBySql("select * from cl where id='" . $cls[$i] . "'", $db);
				$sumprice = $clcnt[$i] * $clinfo[0][price];
				$db->query("insert into prodlist(prodid,clid,amount,sumprice) values('" . $insertID . "','" . $cls[$i] . "','" . $clcnt[$i] . "','" . $sumprice . "')");
			}

			//工种明细
			$job = $_POST[job];
			for ($i = 0; $i < count($job); $i++) {
				$db->query("insert into prodjob(prodid,jobid) values('" . $insertID . "','" . $job[$i] . "')");
			}
			if (mysql_errno()) {
				$db->query('rollback');

				$db->addLog("CAP01001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增产品","新增产品失败".mysql_errno());

				echo "<script>alert('产品新增失败!');location.href='../addprod.php'</script>";
			} else {
				$db->query('commit');

				$db->addLog("CAP01001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","新增产品","新增产品成功");

				echo "<script>if(confirm('新增产品成功,是否继续新增?')){location.href='../addprod.php';}else{location.href='../prodlist.php';}</script>";
			}
		} else {
			$db->addLog("CAP01001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","新增产品","新增产品失败,上传文件不符合要求");
			echo "<script>alert('产品新增失败。请检查上传的文件是否符合要求!');location.href='../addprod.php';</script>";
		}
	}

//删除产品 CAP01002 删除产品
else
	if (isset ($_GET[task]) && "delProd" == ($_GET[task])) {
		if(isExistsOrder($db,$_GET[prodid])){
			$db->query('start transaction');
			$db->query("delete from prod where id='" . $_GET[prodid] . "'");
			$db->query("delete from prodlist where prodid='" . $_GET[prodid] . "'");
			$db->query("delete from prodjob where prodid='" . $_GET[prodid] . "'");

			if (mysql_errno()) {
				$db->query('rollback');
				$db->addLog("CAP01002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除产品","删除产品失败".mysql_errno());
				echo "<script>alert('产品删除失败!');location.href='../prodlist.php'</script>";
			} else {
				if (file_exists("../" . $_GET[path]))
					unlink("../" .
					$_GET[path]);
				$db->query('commit');
				$db->addLog("CAP01002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除产品","删除产品成功");
				echo "<script>alert('产品已删除成功!');location.href='../prodlist.php'</script>";
			}
		}else{
			$db->addLog("CAP01002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除产品","删除产品失败，产品在订单明显中存在");
			echo "<script>alert('产品删除失败,因为订单明细中使用了该产品!');location.href='../prodlist.php'</script>";
		}
	}

//删除产品工种 CAP01004 删除产品工种属性
else
	if (isset ($_GET[task]) && "delProdJob" == ($_GET[task])) {
		if(isExistsOrder($db,$_GET[prodid])){
			$db->query("delete from prodjob where id='" . $_GET[jobid] . "'");
			$db->addLog("CAP01004",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除产品工种","删除产品工种成功");
			echo "<script>alert('产品工种删除成功!');location.href='../prodlist.php'</script>";
		}else{
			$db->addLog("CAP01004",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除产品工种","删除产品工种失败，因为订单明细中使用了该产品!");
			echo "<script>alert('删除产品工种失败,因为订单明细中使用了该产品!!');location.href='../prodlist.php'</script>";
		}
	}
//删除产品材料delProdList&listid=12 CAP01003 删除产品材料属性
else
	if (isset ($_GET[task]) && "delProdList" == ($_GET[task])) {
		if(isExistsOrder($db,$_GET[prodid])){
			$db->query("delete from prodlist where id='" . $_GET[listid] . "'");
			$db->addLog("CAP01003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"成功","删除产品材料属性","删除产品材料属性成功");
			echo "<script>alert('产品材料删除成功!');location.href='../prodlist.php'</script>";
		}else{
			$db->addLog("CAP01003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"失败","删除产品材料属性","删除产品材料属性失败，因为订单明细中使用了该产品!");
			echo "<script>alert('删除产品材料属性失败,因为订单明细中使用了该产品!!');location.href='../prodlist.php'</script>";
		}
	}

function isExistsOrder($db ,$prodid){
	$db->query("select id from orderlist where prodid ='".$prodid."'");
	$cnt = $db->db_num_rows();
	if($cnt>0){
		return false;
	}else{
		return true;
	}
}
?>
