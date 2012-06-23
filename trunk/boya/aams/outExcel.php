<?php
require_once("action/checkAamsLogin.php");
if(isset($_POST[task]) &&"OutExcel"==$_POST[task]){
  require_once("action/mysql.class.php");

  $users = $_POST[chks];
  $in="";
  for ($i = 0; $i < count($users); $i++) {
	$in = $in."'".$users[$i]."',";
  }
  $in = substr($in,0,strlen($in)-1);

  $query = $db->query("SELECT ru.username,ru.gender,ru.college,ru.work_unit,ru.mobile,
		ru.telephone,ru.qq,ru.email,ru.cnt,ru.money,ru.remark,au.adminname,t.type_name FROM
		boya_reg_user AS ru LEFT JOIN boya_course AS c ON c.id = ru.course LEFT JOIN boya_type AS t ON c.type_id = t.id
		LEFT JOIN boya_admin_user AS au ON ru.input_user = au.id where ru.id in(".$in.")");

  // 文件头
  header("Pragma: public");
  header("Expires: 0");
  header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
  header("Content-Type: application/force-download");
  header("Content-Type: application/octet-stream");
  header("Content-Type: application/download");;
  header("Content-Disposition: attachment;filename=".$_POST[excelname].".xls ");
  header("Content-Transfer-Encoding: binary ");

  // 向表中添加数据

  xlsBOF();
  xlsWriteLabel(0,0,"序号");
  xlsWriteLabel(0,1,"姓名");
  xlsWriteLabel(0,2,"性别");
  xlsWriteLabel(0,3,"学历");
  xlsWriteLabel(0,4,"工作单位");
  xlsWriteLabel(0,5,"手机号码");
  xlsWriteLabel(0,6,"联系电话");
  xlsWriteLabel(0,7,"QQ号码");
  xlsWriteLabel(0,8,"E-mail");
  xlsWriteLabel(0,9,"报名人数");
  xlsWriteLabel(0,10,"缴费金额");
  xlsWriteLabel(0,11,"收款人");
  xlsWriteLabel(0,12,"备注");

  $xlsRow = 1;
  while($array = $db->fetch_array($query)) {
	  ++$index;
	  xlsWriteNumber($xlsRow,0,"$index");
	  xlsWriteLabel($xlsRow,1,"$array[0]");
	  xlsWriteLabel($xlsRow,2,"$array[1]");
	  xlsWriteLabel($xlsRow,3,"$array[2]");
	  xlsWriteLabel($xlsRow,4,"$array[3]");
	  xlsWriteLabel($xlsRow,5,"$array[4]");
	  xlsWriteLabel($xlsRow,6,"$array[5]");
	  xlsWriteLabel($xlsRow,7,"$array[6]");
	  xlsWriteLabel($xlsRow,8,"$array[7]");
	  xlsWriteLabel($xlsRow,9,"$array[8]");
	  xlsWriteLabel($xlsRow,10,"$array[9]");
	  xlsWriteLabel($xlsRow,11,"$array[10]");
	  xlsWriteLabel($xlsRow,12,"$array[11]");
	  $xlsRow++;
  }
  xlsEOF();

  $date = date('Ymh');

  $db->query("update boya_reg_user set class_no='$date' where id in(".$in.")");

  exit;

}else{
	echo "<script>window.history.back();</script>";;

}


function xlsBOF() {
  echo pack("ssssss", 0x809, 0x8, 0x0, 0x10, 0x0, 0x0);
  return;
}

function xlsEOF() {
  echo pack("ss", 0x0A, 0x00);
  return;
}

function xlsWriteNumber($Row, $Col, $Value) {
  echo pack("sssss", 0x203, 14, $Row, $Col, 0x0);
  echo pack("d", $Value);
  return;
}

function xlsWriteLabel($Row, $Col, $Value ) {
  $L = strlen($Value);
  echo pack("ssssss", 0x204, 8 + $L, $Row, $Col, 0x0, $L);
  echo $Value;
return;
}

?>