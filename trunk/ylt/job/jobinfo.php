<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}

//������������
$query = $db->query("select * from job where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}
$smarty->assign("jobinfo",$row);

//����
$smarty->assign("title",$row[job_name]."|��λҪ��|��ƸӢ��|��������|".$SeoTitle);
$smarty->assign("keywords",$row[job_name]."|��λҪ��|��ƸӢ��|��������|".$SeoKeywords);
$smarty->assign("description",$row[job_name]."|��λҪ��|��ƸӢ��|��������|".$SeoDesc);



//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>����ͨ</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ��λҪ��";
$smarty->assign("address",$address);

$smarty->display("job/jobinfo.html",$_GET[id]);
?>
