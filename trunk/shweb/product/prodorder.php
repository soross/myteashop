<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	//echo "<script>history.go(-1);</script>";
	//exit();
}

//��������
$query = $db->query("select * from prod where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	//echo "<script>history.go(-1);</script>";
	//exit();
}
$smarty->assign("prodinfo",$row);


//��ǰλ��
$address = "�����ڵ�λ�ã�����ǰλ�ã��� ҳ &gt; ���߶��� &gt; <font color='#FF3300'>$row[prod_name]</font>";
$smarty->assign("address",$address);

$smarty->display("prod/prodorder.html");

?>
