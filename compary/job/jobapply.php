<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}

//�жϸ�λ�Ƿ����
$query = $db->query("select * from job where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}
$smarty->assign("jobinfo",$row);

//����
//$smarty->assign("title","ְλ����");
$smarty->assign("title",$row[job_name]."-ְλ����-��ƸӢ��-��������-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords",$row[job_name]." ְλ���� ��ƸӢ�� �������� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='joblist.php'>��������</a> &gt; ְλ����";
$smarty->assign("address",$address);

$smarty->display("job/jobapply.html",$_GET[id]);

$content = $smarty->fetch('job/jobapply.html',$_GET[id]);
$db->makeSearchData("../job/jobapply.php?id=".$_GET[id],$content);

?>
