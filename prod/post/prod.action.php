<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
	if(isset($_POST[task]) && "addProdDDD"==$_POST[task]){
		if($_POST[prodid]==$_POST[prodid]){
			$db->query("select * from prod where prodid='".$_POST[prodid]."'");
			$cnt = $db->db_num_rows();
			if($cnt<1){
				$db->query("insert into user(username,password,realname,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."',now())");
				echo "<script>if(confirm('����Ա�ʺ������ɹ�,�Ƿ��������?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
			}else{
				echo "<script>alert('�ù���Ա�ʺ��Ѵ���!');location.href='../adduser.php';</script>";
			}
		}else{
			echo "<script>alert('�������벻һ��!');location.href='../adduser.php';</script>";
		}
	}
}else{
	echo "<script>alert('����Ȩ�޲���,����ϵ����Ա!');location.href='../adduser.php';</script>";
}
if(isset($_GET[task]) && "toUpdateUser"==$_GET[task]){
	if(isset($_GET[aamsid]) && !empty($_GET[aamsid])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_GET[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			$db->query("update user set password='".md5($_GET[password])."' where id ='".$_GET[aamsid]."'" );
			echo "<script>alert('�����޸ĳɹ�!');location.href='../userlist.php';</script>";
		}else{
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../userlist.php';</script>";
		}
	}else{
		echo "<script>alert('�Ƿ�����!".$_GET[aamsid]."');location.href='../admin.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteAamsUser"==$_GET[task]){
	if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
		$db->query("delete from  user where id ='".$_GET[aamsid]."'" );
		echo "<script>alert('�ʺ�ɾ���ɹ�!');location.href='../userlist.php';</script>";
	}else{
		echo "<script>alert('�����ǹ���Ա,�޷�ɾ���˻�!');location.href='../userlist.php';</script>";
	}
}


//������Ϣ
else if(isset($_POST[task]) && "updateAdminUserInfo"==($_POST[task])){
	$sql = "update user set ";
	if(isset($_POST[password]) &&  !empty($_POST[password]) && $_POST[password]==$_POST[password_confirm]){
		$sql = $sql." password='".md5($_POST[password])."' , realname='".$_POST[realname]."' ";
	}else{
		$sql = $sql." realname='".$_POST[realname]."' ";
	}
	$sql = $sql." where id=' ". $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']." '";
	$db->query($sql);
	echo "<script>alert('����Ա��Ϣ���³ɹ�!');location.href='../inc/tab.php';</script>";
}

//������Ʒ
else if(isset($_POST[task]) && "addProd"==($_POST[task])){
	//�ļ�����Ŀ¼URL
	$save_path = '../images/prod/';//201109281154581.jpg
	//���������ϴ����ļ���չ��
	$ext_arr = array('gif','png','jpg');
	require "../action/FileUpload.class.php";
	$up=new FileUpload(array('isRandName'=>true,'allowType'=>$ext_arr,'FilePath'=>$save_path, 'MAXSIZE'=>(1024*100)));
	if($up->uploadFile('picpath')){
		$filename = "images/prod/".$up->getNewFileName();
		$db->query('start transaction');
		$db->query("insert into prod(prodid,picname,picpath,create_date) values('".$_POST[prodid]."','".$_POST[picname]."','".$filename."',now())");
		$insertID = $db->insert_id();

		//��Ʒ��ϸ
		$cls = $_POST[clid];
		$clcnt = $_POST[amount];
		for($i = 0;$i<count($cls);$i++){
			$clinfo = getListBySql("select * from cl where id='".$cls[$i]."'",$db);
			$sumprice = $clcnt[$i]*$clinfo[0][price];
			$db->query("insert into prodlist(prodid,clid,amount,sumprice) values('".$insertID."','".$cls[$i]."','".$clcnt[$i]."','".$sumprice."')");
		}

		//������ϸ
		$job = $_POST[job];
		for($i = 0;$i<count($job);$i++){
			$db->query("insert into prodjob(prodid,jobid) values('".$insertID."','".$job[$i]."')");
		}
		if (mysql_errno()) {
			$db->query('rollback');
			echo "<script>alert('��Ʒ����ʧ��!');location.href='../addprod.php'</script>";
		} else {
			$db->query('commit');
			echo "<script>if(confirm('������Ʒ�ɹ�,�Ƿ��������?')){location.href='../addprod.php';}else{location.href='../prodlist.php';}</script>";
		}
	}else{
		echo "<script>alert('��Ʒ����ʧ�ܡ������ϴ����ļ��Ƿ����Ҫ��!');location.href='../addprod.php';</script>";
	}
}
?>