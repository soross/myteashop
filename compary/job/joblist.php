<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//����������
$smarty->clear_cache('job/joblist.html'); //���index.tpl�Ļ���
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

$pagesize = 6;//һҳ��ʾ������

//��ҳ
$queryTotal = $db->query("select id from job");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//��λ�б�
$jobQuery = $db->query("select id,job_name,job_info_url,working_location,recruiting_numbers from job limit $firstcount, $displaypg ");
$jobRow = array();
while($rowR = $db->fetch_array($jobQuery)){
	$jobRow[] = $rowR;
}
$smarty->assign("jobRow",$jobRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


//����
$smarty->assign("title","��ƸӢ��|��������|".$SeoTitle);
$smarty->assign("keywords","��ƸӢ��|��������|".$SeoKeywords);
$smarty->assign("description","��ƸӢ��|��������|".$SeoDesc);


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../job/joblist.html'>��������</a> &gt; ��ƸӢ��";
$smarty->assign("address",$address);

$smarty->display("job/joblist.html");

$content = $smarty->fetch('job/joblist.html');
$db->makeSearchData($url."=".$page,$content);
?>
