<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");


$pagesize = 10;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from college");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select c.*,t.college_title_zh_cn,t.college_title_en from college c,college_type t where c.type_id=t.id order by c.create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("collegeRow",$newsRow);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


$smarty->display("college.html");
?>
