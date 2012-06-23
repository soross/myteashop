<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/page.class.aams.php");
require_once("action/mysql.class.php");

$classlist = getListBySql("SELECT c.class_name,c.course_name,t.type_name,c.id FROM boya_course AS c
LEFT JOIN boya_type AS t ON c.type_id = t.id where c.id in(select ru.course from boya_reg_user ru where ru.class_no is null)",$db);
$smarty->assign("classlist",$classlist);


if(isset($_GET[task])&&"queryClass"==$_GET[task]){

	$sql="SELECT c.type_id,c.class_name,c.course_name,ru.course,ru.id,ru.username,ru.gender,ru.college,ru.work_unit,ru.mobile,
	ru.telephone,ru.qq,ru.email,ru.cnt,ru.create_date,ru.money,ru.pay_date,ru.remark,ru.class_no,t.type_name,au.adminname,ru.input_user FROM
	boya_reg_user AS ru LEFT JOIN boya_course AS c ON c.id = ru.course LEFT JOIN boya_type AS t ON c.type_id = t.id
	LEFT JOIN boya_admin_user AS au ON ru.input_user = au.id where 1=1 ";

	if("1"==$_GET[isfee]){
		$sql = $sql." and pay_date is not null ";

	}else if("0"==$_GET[isfee]){
		$sql = $sql." and pay_date is null ";
	}

	if("-1"!=$_GET[classname]){
		$sql = $sql." and ru.course='$_GET[classname]' ";
	}

	$sql = $sql." order by ru.create_date desc";
	//print_r($sql);

	$smarty->assign("isfee",$_GET[isfee]);
	$smarty->assign("classname",$_GET[classname]);

	//未审核会员分类
	$adminRow = getListBySql($sql,$db);

	$smarty->assign("adminRow",$adminRow);

	$smarty->assign("excelname",$adminRow[0][type_name]."-".$adminRow[0][class_name]."-".$adminRow[0][course_name]);

	pageft(0, 1);
	$smarty->assign("page",$pagenav);
}else{
	pageft(0, 1);
	$smarty->assign("page",$pagenav);
}

$smarty->display("queryclass.html");
?>
