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
//$smarty->assign("title","ְλҪ�� ְλ����");
$smarty->assign("title",$row[job_name]."-��λҪ��-��ƸӢ��-��������-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords",$row[job_name]." ��λҪ�� ��ƸӢ�� �������� �������� ���� �������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ����������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../job/joblist.php'>��������</a> &gt; ��λҪ��";
$smarty->assign("address",$address);

$smarty->display("job/jobinfo.html",$_GET[id]);

$content = $smarty->fetch('job/jobinfo.html',$_GET[id]);
$db->makeSearchData("../job/jobinfo.php?id=".$_GET[id],$content);

//����html
$filename = $db->getFileName($_GET[id],"../jobpage/","job");
$db->makeHtml("../jobpage/".$filename,$content);//д�����ݵ�news.html�ļ�

$db->query("update job set job_info_url='../jobpage/".$filename."' where id='".$_GET[id]."'");
//echo "<script>location.href='../jobpage/".$filename."'</script>";
?>