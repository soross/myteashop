<?php
require_once("action/checkAamsLogin.php");
if(isset($_GET[task]) &&"outNoCardData"==$_GET[task]){
	require_once("action/mysql.class.php");

	$query = $db->query("select cardno,srcpwdnomd5 from lm_card where create_card='0' order by type");


  // 文件头
  header("Pragma: public");
  header("Expires: 0");
  header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
  header("Content-Type: application/force-download");
  header("Content-Type: application/octet-stream");
  header("Content-Type: application/download");;
  header("Content-Disposition: attachment;filename=card.xls ");
  header("Content-Transfer-Encoding: binary ");

  // 向表中添加数据

  xlsBOF();
  xlsWriteLabel(0,0,"卡号");
  xlsWriteLabel(0,1,"密码");
  $xlsRow = 1;
  while($array = $db->fetch_array($query)) {
	  ++$i;
	  xlsWriteNumber($xlsRow,0,"$i");
	  xlsWriteLabel($xlsRow,0,"$array[0]");
	  xlsWriteLabel($xlsRow,1,"$array[1]");
	  $xlsRow++;
  }
  xlsEOF();
  exit();
}else if(isset($_GET[task]) &&"outExcelByTx"==$_GET[task]){
	require_once("action/mysql.class.php");

	$query = $db->query("select bankname,bankuser,bankcode,num from lm_mb_money where state='0' order by bankname");


  // 文件头
  header("Pragma: public");
  header("Expires: 0");
  header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
  header("Content-Type: application/force-download");
  header("Content-Type: application/octet-stream");
  header("Content-Type: application/download");;
  header("Content-Disposition: attachment;filename=tx.xls ");
  header("Content-Transfer-Encoding: binary ");

  // 向表中添加数据

  xlsBOF();
  xlsWriteLabel(0,0,"银行名称");
  xlsWriteLabel(0,1,"开户名");
  xlsWriteLabel(0,2,"银行卡号");
  xlsWriteLabel(0,3,"金额");
  $xlsRow = 1;
  while($array = $db->fetch_array($query)) {
	  ++$i;
	  xlsWriteNumber($xlsRow,0,"$i");
	  xlsWriteNumber($xlsRow,0,"$array[0]");
	  xlsWriteLabel($xlsRow,1,"$array[1]");
	  xlsWriteLabel($xlsRow,2,"$array[2]");
	  xlsWriteLabel($xlsRow,3,"$array[3]");
	  $xlsRow++;
  }
  xlsEOF();
  exit();
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