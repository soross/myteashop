<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
	if(isset($_POST[task]) && "addUser"==$_POST[task]){
		if($_POST[password]==$_POST[password2]){
			if( $_POST[orderpass]==$_POST[orderpass2]){
				$db->query("select * from user where username='".$_POST[username]."'");
				$cnt = $db->db_num_rows();
				if($cnt<1){
					$db->query("insert into user(username,password,realname,orderpass,create_date) values('".$_POST[username]."','".md5($_POST[password])."','".$_POST[realname]."','".md5($_POST[password])."',now())");
					$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","��������Ա�ʺ�","��������Ա�ʺųɹ�");
					echo "<script>if(confirm('����Ա�ʺ������ɹ�,�Ƿ��������?')){location.href='../adduser.php';}else{location.href='../userlist.php';}</script>";
				}else{
					$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","��������Ա�ʺ�","�ù���Ա�ʺ��Ѵ���!");
					echo "<script>alert('�ù���Ա�ʺ��Ѵ���!');location.href='../adduser.php';</script>";
				}
			}else{
				$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","��������Ա�ʺ�","�������벻һ��!");
				echo "<script>alert('�������벻һ��!');location.href='../adduser.php';</script>";
			}
		}else{
			$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","��������Ա�ʺ�","�û����벻һ��!");
			echo "<script>alert('�û����벻һ��!');location.href='../adduser.php';</script>";
		}
	}
}else{
	$db->addLog("CAP10001",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","��������Ա�ʺ�","Ȩ�޲���!");
	echo "<script>alert('����Ȩ�޲���,����ϵ����Ա!');location.href='../adduser.php';</script>";
}
if(isset($_POST[task]) && "UpdateUserPassword"==$_POST[task]){
	if(isset($_POST[aamsid]) && !empty($_POST[aamsid])){
		if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'] == $_POST[aamsid] || $_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
			if(!empty($_POST[password])&& empty($_POST[orderpass])){
				$db->query("update user set password='".md5($_POST[password])."' where id ='".$_POST[aamsid]."'" );
				$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸��û�����","�޸��û�����ɹ�");
				echo "<script>alert('�û������޸ĳɹ�!');location.href='../userlist.php';</script>";
			}else if(empty($_POST[password])&&!empty($_POST[orderpass])){
				$db->query("update user set password='".md5($_POST[orderpass])."' where id ='".$_POST[aamsid]."'" );
				$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸Ķ�������","�޸Ķ�������ɹ�");
				echo "<script>alert('���������޸ĳɹ�!');location.href='../userlist.php';</script>";
			}else if(isset($_POST[password])&&!empty($_POST[password])&&isset($_POST[orderpass])&&!empty($_POST[orderpass])){
				$db->query("update user set password='".md5($_POST[password])."', orderpass='".md5($_POST[orderpass])."' where id ='".$_POST[aamsid]."'" );
				$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸��û�����Ͷ�������","�޸��û�����Ͷ�������ɹ�");
				echo "<script>alert('�û�����Ͷ��������޸ĳɹ�!');location.href='../userlist.php';</script>";
			}else{
				echo "<script>alert('��������Ҫ�޸ĵ�����!');location.href='../userlist.php';</script>";
			}
		}else{
			$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�޸��û�����Ͷ�������","�����ǹ���Ա,�޷��޸ı��˵�����!");
			echo "<script>alert('�����ǹ���Ա,�޷��޸ı��˵�����!');location.href='../userlist.php';</script>";
		}
	}else{
		$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","�޸��û�����Ͷ�������","�Ƿ�����");
		echo "<script>alert('�Ƿ�����!".$_GET[aamsid]."');location.href='../admin.php';</script>";
	}
}else if(isset($_GET[task]) && "deleteAamsUser"==$_GET[task]){
	if($_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION']==1){
		$db->query("delete from  user where id ='".$_GET[aamsid]."'" );
		$db->addLog("CAP10002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","ɾ���ʺ�","ɾ���ʺųɹ���");
		echo "<script>alert('�ʺ�ɾ���ɹ�!');location.href='../userlist.php';</script>";
	}else{
		$db->addLog("CAP10002",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"ʧ��","ɾ���ʺ�","�����ǹ���Ա,�޷�ɾ���˻�!");
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
	$db->addLog("CAP10003",$_SESSION['WEB_AAMS_USER_LOGIN_UID_SESSION'],"�ɹ�","�޸Ĺ���Ա��Ϣ","����Ա��Ϣ���³ɹ�!");
	echo "<script>alert('����Ա��Ϣ���³ɹ�!');location.href='../inc/tab.php';</script>";
}
?>
