<?php
require_once("../action/checkAamsLogin.php");
require_once("../action/mysql.class.php");
if(isset($_GET[task]) && "deleteNav"==$_GET[task]){
 	$db->query("delete from menu where id='$_GET[navid]'");
 	echo "<script>alert('删除成功!');location.href='../nav.php';</script>";


}else if(isset($_POST[task]) && "updateNav"==$_POST[task]){
	$db->query("update menu set menu_name_zh_cn='$_POST[name_cn]',menu_name_en='$_POST[name_en]',pid='$_POST[type]',show='$_POST[show]',remark='$_POST[remark]',url='$_POST[url]' where id='$_POST[navid]'");
	echo "<script>if(confirm('更新成功,是否继续更新?')){location.href='../editnav.php?navid=$_POST[navid]';}else{location.href='../nav.php';}</script>";

}else if(isset($_POST[task]) && "CreateCardBy1000"==$_POST[task]){
	if(isset($_POST[num])&& !empty($_POST[num])){
		for($i=0;$i<$_POST[num];$i++){
			$db->query("insert into lm_card(cardno,srcpwdnomd5,password,state,create_date,type) " .
					"values('".getCardNo('0')."','".getPassword()."','".md5(getPassword())."','0',now(),'20')");
		}
		echo "<script>alert('成功创建了".$_POST[num]."张面额1000的红利卡!');location.href='../createcard.php';</script>";
	}else{
		echo "<script>alert('请输入所要创建的红利卡数量!');location.href='../createcard.php';</script>";
	}
}else if(isset($_GET[task]) && "createCardBySw"==$_GET[task]){
	if(isset($_GET[cardid])&&!empty($_GET[cardid])){
		$db->query("update lm_card set create_card='1' where id='".$_GET[cardid]."'");

	}else{
		echo "<script>alert('非法操作!');location.href='../nocard.php';</script>";
	}
}
else if(isset($_GET[task]) && "createCardBySwAll"==$_GET[task]){
	$db->query("update lm_card set create_card='1' where create_card='0'");
	echo "<script>alert('全部制卡成功!');location.href='../nocard.php';</script>";
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
