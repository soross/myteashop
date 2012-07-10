<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");

if(isset($_POST[task]) && "addAamsUser"==$_POST[task]){
	if($_POST[password]==$_POST[password2]){
		$db->query("select * from boya_admin_user where adminname='".$_POST[username]."'");
		$cnt = $db->db_num_rows();
		if($cnt<1){
			$db->query('start transaction');
			$db->query("insert into boya_admin_user(adminname,password,username,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."',now())");
			$userid = $db->insert_id();
			$powers = $_POST[power];
		 	for($i=0;$i<count($powers);$i++){
		  		$db->query("insert into boya_admin_user_menu(userid,menuid) values('$userid','$powers[$i]')");
		 	}
			if (mysql_errno()) {
				$db->query('rollback');
				echo "<script>if(confirm('管理员帐号新增失败,是否重试?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
			} else {
				$db->query('commit');
				//创建xml文件
				createPowerXml($userid,$db);
				echo "<script>if(confirm('管理员帐号新增成功,是否继续新增?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
			}

		}else{
			echo "<script>alert('该管理员帐号已存在!');location.href='../adduser.php';</script>";
		}
	}else{
		echo "<script>alert('两次密码不一致!');location.href='../adduser.php';</script>";
	}
}

else if(isset($_POST[task]) && "updateUser"==$_POST[task]){
	$db->query('start transaction');

	$db->query("update boya_admin_user set username='$_POST[realname]' where id ='".$_POST[userid]."'" );
	$db->query("delete from boya_admin_user_menu where userid='$_POST[userid]'");
	$powers = $_POST[power];
 	for($i=0;$i<count($powers);$i++){
  		$db->query("insert into boya_admin_user_menu(userid,menuid) values('$_POST[userid]','$powers[$i]')");
 	}
	if (mysql_errno()) {
		$db->query('rollback');
		echo "<script>if(confirm('管理员帐号修改失败,是否重试?')){location.href='../updateuser.php?task=updateUser&userid=$_POST[userid]';}else{location.href='../userlist.php';}</script>";
	} else {
		$db->query('commit');
		//创建xml文件
		createPowerXml($_POST[userid],$db);
		echo "<script>if(confirm('管理员帐号修改成功,是否继续修改?')){location.href='../updateuser.php?task=updateUser&userid=$_POST[userid]';}else{location.href='../userlist.php';}</script>";
	}

}
//删除账户
else if(isset($_GET[task]) && "deleteUser"==$_GET[task]){
	$db->query('start transaction');
	$db->query("delete from boya_admin_user where id ='".$_GET[userid]."'" );
	$db->query("delete from boya_admin_user_menu where userid='".$_GET[userid]."'");
	if (mysql_errno()) {
		$db->query('rollback');
		echo "<script>alert('帐号删除失败!');location.href='../userlist.php';</script>";
	} else {
		$db->query('commit');
		echo "<script>alert('帐号删除成功!');location.href='../userlist.php';</script>";
	}

}
//重置密码
else if(isset($_GET[task]) && "resetPassword"==$_GET[task]){
	$db->query("update boya_admin_user set password='".md5('123123')."' where id='".$_GET[userid]."'");
	echo "<script>alert('帐号密码重置成功!');location.href='../userlist.php';</script>";
}
//新增权限
else if(isset($_POST[task]) && "addPower"==$_POST[task]){
	$db->query("insert into boya_admin_menu(menuname,pid,url,seq) values('$_POST[menuname]','$_POST[pid]','$_POST[url]','$_POST[seq]')");
	echo "<script>if(confirm('新增权限成功,是否继续新增?')){location.href='../addpower.php';}else{location.href='../powerlist.php';}</script>";
}

//修改权限
else if(isset($_POST[task]) && "updatePower"==$_POST[task]){
	$db->query("update boya_admin_menu set menuname='$_POST[menuname]',pid='$_POST[pid]',url='$_POST[url]',seq='$_POST[seq]' where id='$_POST[menuid]'");
	echo "<script>if(confirm('权限修改成功,是否继续修改?')){location.href='../updatepower.php?task=updatePower&menuid=$_POST[menuid]';}else{location.href='../powerlist.php';}</script>";
}
//删除account.action.php?task=deletePower&menuid=17
else if(isset($_GET[task]) && "deletePower"==$_GET[task]){
	$db->query("delete from  boya_admin_menu  where id='$_GET[menuid]'");
	echo "<script>alert('权限删除成功!');location.href='../powerlist.php';</script>";
}

//更新信息
else if(isset($_POST[task]) && "updateAdminUserInfo"==($_POST[task])){
	$sql = "update boya_admin_user set ";
	if(isset($_POST[password]) &&  !empty($_POST[password]) && $_POST[password]==$_POST[password_confirm]){
		$sql = $sql." password='".md5($_POST[password])."' , username='".$_POST[realname]."' ";
	}else{
		$sql = $sql." username='".$_POST[realname]."' ";
	}
	$sql = $sql." where id=' ". $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']." '";
	$db->query($sql);
	echo "<script>alert('管理员信息更新成功!');location.href='../inc/tab.php';</script>";
}

else if(isset($_POST[task]) && "updateStudent"==($_POST[task])){
	$db->query("update boya_reg_user set username='$_POST[regname]',gender='$_POST[gender]',college='$_POST[college]',work_unit='$_POST[work_unit]',mobile='$_POST[mobile]',telephone='$_POST[telephone]',qq='$_POST[qq]',email='$_POST[email]',course='$_POST[course]',xllb='$_POST[xllb]',bmcc='$_POST[bmcc]',zy='$_POST[zy]' where id='$_POST[menuid]' ");
	echo "<script>alert('修改在线报名信息成功!');location.href='../reguserlist.php';</script>";
}

function createPowerXml($userid,$db){
	//删除已经存在xml文件
	if(file_exists("../inc/codebase/menu_".$userid)){
		unlink("../inc/codebase/menu_".$userid);
	}

	//构建xml串
	$power = getListBySql("select * from boya_admin_user_menu um left join boya_admin_menu m on um.menuid=m.id where um.userid='$userid' order by seq",$db);
	$xml = '<?xml version="1.0" encoding="GBK"?><tree id="0">';
	for($i=0;$i<count($power);$i++){
		if($power[$i][pid]=="-1"){
			$xml =$xml.'<item text="'.$power[$i][menuname].'" id="'.$power[$i][url].'">';
			for($j=0;$j<count($power);$j++){
				if($power[$i][id]==$power[$j][pid]){
					$xml=$xml.'<item text="'.$power[$j][menuname].'" id="'.$power[$j][url].'"/>';
				}
			}
			$xml=$xml.'</item>';
		}
	}
	$xml=$xml.'</tree>';

	$handle = fopen("../inc/codebase/menu_".$userid.".xml","w");
 	fwrite($handle,$xml);
}


?>
