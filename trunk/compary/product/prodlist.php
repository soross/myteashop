<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//����������
$smarty->clear_cache('prod/prodlist.html'); //���index.tpl�Ļ���
require_once("../action/public_info.php");

//��ȡ��ѯ����
$key = $_GET[key];
$classcode = $_GET[classcode];

//ƴװ����
$where = " where 1=1 ";

if(isset($_GET[key]) && ""!=$_GET[key]){
	$where = $where. " and (prod_name like '%$key%' or prod_desc like '%$key%' or prod_summary like '%$key%')";
}

if(isset($_GET[classcode])&&""!=$_GET[classcode]){
	$where = $where."and prod_class=$classcode ";
}


$pagesize = 10;//һҳ��ʾ������

//��ҳ
$queryTotal = $db->query("select id from prod" .$where);
$total = $db->db_num_rows();
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�б�
$prodQuery = $db->query("select * from prod ".$where." order by create_date desc limit $firstcount, $displaypg ");
$prodRow = array();
while($rowR = $db->fetch_array($prodQuery)){
	$prodRow[] = $rowR;
}
$smarty->assign("prodRow",$prodRow);


//��ʾ��ҳ������
$smarty->assign("page",$pagenav);


//��Ʒ����
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//����
//$smarty->assign("title","�������");
$smarty->assign("title","�������-��������(Www.GuoguoNet.com)");
$smarty->assign("keywords","������� �������� ��� ������� ��վ ��վ���� ��վ����");
$smarty->assign("description","�������繤���ҳ�ֿΪ���ṩ��������������ơ�ϵͳ�з�����վ���衢��վ��ơ���վά��������ע�ᡢ�ռ�ע�ᡢ��Ʒ��վ����������ȷ���");


//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; �������";
$smarty->assign("address",$address);

$smarty->display("prod/prodlist.html");

$content = $smarty->fetch('prod/prodlist.html');
$db->makeSearchData($url."=".$page,$content);

?>
