<?php
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "addOnlineReg"==$_POST[task]){
	$user = array();
    $user[xm] = $_POST[xm];
    $user[ny] = $_POST[ny];
    $user[mz] = $_POST[mz];
    $user[jg] = $_POST[jg];
    $user[wh] = $_POST[wh];
    $user[tc] = $_POST[tc];
    $user[zzmm] = $_POST[zzmm];
    $user[sfzh] = $_POST[sfzh];
    $user[byyx] = $_POST[byyx];
    $user[email] = $_POST[email];
    $user[dz] = $_POST[dz];
    $user[yb] = $_POST[yb];
    $user[dh] = $_POST[dh];
    $user[qq] = $_POST[qq];
    $user[bkyx] = $_POST[bkyx];
    $user[bkcc] = $_POST[bkcc];
    $user[bkzy] = $_POST[bkzy];
    $user[bkxz] = $_POST[bkxz];
    $user[bz] = $_POST[bz];

	if(!isset($_POST[xm])||empty($_POST[xm])||strlen($_POST[xm])>5){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[����],�������5λ!');location.href='../onlinereg.php?err=xm';</script>";
		exit;
	}
	if(!isset($_POST[ny])||empty($_POST[ny])||strlen($_POST[ny])>10){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[��������],�������10λ!');location.href='../onlinereg.php?err=ny';</script>";
		exit;
	}
	if(!isset($_POST[mz])||empty($_POST[mz])||strlen($_POST[mz])>10){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[����],�������10λ!');location.href='../onlinereg.php?err=mz';</script>";
		exit;
	}
	if(!isset($_POST[jg])||empty($_POST[jg])||strlen($_POST[jg])>10){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[����],�������20λ!');location.href='../onlinereg.php?err=jg';</script>";
		exit;
	}
	if(!isset($_POST[wh])||empty($_POST[wh])){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('��ѡ��[�Ļ��̶�]!');location.href='../onlinereg.php?err=wh';</script>";
		exit;
	}
	if(!isset($_POST[tc])||empty($_POST[tc])||strlen($_POST[tc])>20){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[�к��س�],�������20λ!');location.href='../onlinereg.php?err=tc';</script>";
		exit;
	}
	if(!isset($_POST[zzmm])||empty($_POST[zzmm])||strlen($_POST[zzmm])>20){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[������ò],�������20λ!');location.href='../onlinereg.php?err=zzmm';</script>";
		exit;
	}
	if(!isset($_POST[sfzh])||empty($_POST[sfzh])||strlen($_POST[sfzh])>20){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[������ò],�������20λ!');location.href='../onlinereg.php?err=sfzh';</script>";
		exit;
	}
	if(!isset($_POST[byyx])||empty($_POST[byyx])||strlen($_POST[byyx])>30){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[��ҵԺУ],�������30λ!');location.href='../onlinereg.php?err=byyx';</script>";
		exit;
	}
	if(!isset($_POST[dz])||empty($_POST[dz])||strlen($_POST[dz])>50){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[ͨ�ŵ�ַ],�������50λ!');location.href='../onlinereg.php?err=dz';</script>";
		exit;
	}
	if(!isset($_POST[yb])||empty($_POST[yb])||strlen($_POST[yb])>10){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[��������],�������10λ!');location.href='../onlinereg.php?err=yb';</script>";
		exit;
	}
	if(!isset($_POST[dh])||empty($_POST[dh])||strlen($_POST[dh])>15){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[��ϵ�绰],�������15λ!');location.href='../onlinereg.php?err=dh';</script>";
		exit;
	}
	if(!isset($_POST[bkzy])||empty($_POST[bkzy])||strlen($_POST[bkzy])>36){
		session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('������[����רҵ],�������36λ!');location.href='../onlinereg.php?err=bkzy';</script>";
		exit;
	}

	$sql = "insert into onlinereg(name,birthdate,nation,birth_add,culture,speciality,pol_state,idcode,school," .
			"email,address,zipcode,tell,qq,enter_school,enter_level,enter_major,enter_prop,remark,create_date,state)" .
			"values('$_POST[xm]','$_POST[ny]','$_POST[mz]','$_POST[jg]','$_POST[wh]','$_POST[tc]','$_POST[zzmm]','$_POST[sfzh]','$_POST[byyx]'," .
			"'$_POST[email]','$_POST[dz]','$_POST[yb]','$_POST[dh]','$_POST[qq]','$_POST[bkyx]','$_POST[bkcc]','$_POST[bkzy]','$_POST[bkxz]','$_POST[bz]',now(),'0')";
    try{
    	$db->query($sql);
	    echo "<script>alert('���߱����ɹ���ָ����ʦ���һʱ��������ϵ!');location.href='../onlinereg.php';</script>";
    }catch(Exception $e){
    	session_start();
		$_SESSION['OnlineRegUserInfo']=$user;
		echo "<script>alert('ϵͳ�쳣,����ϵ�ͷ�!');location.href='../onlinereg.php?err=SYS_ERROR';</script>";
		exit;
    }


}else{
	echo "<script>alert('�Ƿ��ύ!');location.href='../onlinereg.php';</script>";
}

?>
