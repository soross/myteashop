<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_POST[task]) && "CreateCardBy100"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('No1.')."','".getPassword()."','".md5(getPassword())."','0',now(),'2')");
		}
		echo "<script>alert('�ɹ�������".$_POST[num]."�����100�ĺ�����!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('��������Ҫ�����ĺ���������!');location.href='../createcard.php';</script>";
	}
}else if(isset($_POST[task]) && "CreateCardBy500"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('No5.')."','".getPassword()."','".md5(getPassword())."','0',now(),'10')");
		}
		echo "<script>alert('�ɹ�������".$_POST[num]."�����500�ĺ�����!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('��������Ҫ�����ĺ���������!');location.href='../createcard.php';</script>";
	}
}else if(isset($_POST[task]) && "CreateCardBy1000"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('No0.')."','".getPassword()."','".md5(getPassword())."','0',now(),'20')");
		}
		echo "<script>alert('�ɹ�������".$_POST[num]."�����1000�ĺ�����!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('��������Ҫ�����ĺ���������!');location.href='../createcard.php';</script>";
	}
}else if(isset($_GET[task]) && "createCardBySw"==$_GET[task]){
	if(isset($_GET[cardid])&&!empty($_GET[cardid])){
		$db->query("update lm_card set create_card='1' where id='".$_GET[cardid]."'");

	}else{
		echo "<script>alert('�Ƿ�����!');location.href='../nocard.php';</script>";
	}
}
else if(isset($_GET[task]) && "createCardBySwAll"==$_GET[task]){
	$db->query("update lm_card set create_card='1' where create_card='0'");
	echo "<script>alert('ȫ���ƿ��ɹ�!');location.href='../nocard.php';</script>";
}

function getCardNo($start){
	$str=date("His").rand(100,999);
	return $start.$str;
}
function getPassword(){
	$str = rand(100000,999999);
	return $str;
}
?>
