<?php
require_once("action/checkAamsLogin.php");
require_once("action/smarty_inc.php");
require_once("action/mysql.class.php");
require_once("action/page.class.aams.php");

$case=' 1=1 ';
if(isset($_GET[task])&&"SearchNews"==$_GET[task]){
	$search = array();
	if(!empty($_GET[type])&&"-1"!=$_GET[type]){
		$case = $case." and type_id in(select id from type where id='".$_GET[type]."' or pid='".$_GET[type]."') ";
		$search[type]=$_GET[type];
	}
	if(isset($_GET[kw])&&!empty($_GET[kw])){
		$case = $case." and (title like '%".$_GET[kw]."%' or content like '%".$_GET[kw]."%') ";
		$search[kw]=$_GET[kw];
	}
	$smarty->assign("search",$search);

}

$pagesize = 15;//һҳ��ʾ������
//��ҳ
$queryTotal = $db->query("select id from news where ".$case);
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//�����б�
$newsQuery = $db->query("select n.click,n.id,n.title,n.click,n.isshow,n.path,n.type_id,t.type_name,DATE_FORMAT(n.create_date,'%Y-%m-%d') as create_dates ,n.filepath,n.filename from news n,type t where n.type_id = t.id and ".$case." order by n.create_date desc limit $firstcount, $displaypg");
$newsRow = array();
while($rownews = $db->fetch_array($newsQuery)){
	$newsRow[] = $rownews;
}
$smarty->assign("newsRow",$newsRow);

//��������
$list = getListBySql("select * from type where flag='1'",$db);
$smarty->assign("typelist",$list);

//��ʾ��ҳ������
$smarty->assign("page",$pagenav);
$smarty->assign("cpage",$page);

$smarty->display("news.html");
?>
