<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='caselist.php'</script>";
	exit();
}

//��������
$query = $db->query("select case_name from succ_case where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='caselist.php'</script>";
	exit();
}
$smarty->assign("caseinfo",$row);

//·���б�
$pathQuery = $db->query("select case_path from succ_case_path where case_id='".$_GET[id]."'");
$pathList = array();
while($pathRow = $db->fetch_array($pathQuery)){
	$pathList[] = $pathRow;
}
$smarty->assign("pathList",$pathList);

//��ǰλ��
$address = "����ǰλ�ã��� ҳ &gt; �ɹ����� &gt; <font color='#FF3300'>$row[case_name]</font> ";
$smarty->assign("address",$address);

$smarty->display("case/caseinfo.html",$_GET[id]);
?>
