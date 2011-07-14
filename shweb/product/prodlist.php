<?php
require_once ("../action/smarty_inc.php");
require_once ("../action/mysql.class.php");
require_once ("../action/page.class.php");
require_once ("../action/public_info.php");

//拼装条件SQL
$where = " where 1=1 ";

//获取查询条件
$param = '';
$keyword = '';
if (isset ($_GET[keyword]) && !empty ($_GET[keyword])) {
	$keyword = $_GET[keyword];
	$where = $where . " and ( prod_desc like '%$keyword%' or prod_name like '%$keyword%' or prod_code like '%$keyword%')";
	$param = "keyword=" . urlencode($keyword);
}

if (empty($keyword)) {
	if (isset ($_POST[keyword]) && !empty ($_POST[keyword])) {
		$keyword = $_POST[keyword];
		$where = $where . " and ( prod_desc like '%$keyword%' or prod_name like '%$keyword%' or prod_code like '%$keyword%')";
		if (empty($param))
			$param = "keyword=" . urlencode($keyword);
	}
}

if (isset ($_GET[classcode]) && !empty ($_GET[classcode])) {
	$classcode = $_GET[classcode];
	$where = $where . "and prod_class=$classcode ";
}

//echo "<script>alert(keyword==='" . $_POST[keyword] . "');</script>";

$pagesize = 12; //一页显示多少条

//分页
$queryTotal = $db->query("select id from prod" . $where);
$total = $db->db_num_rows();
pageft($total, $pagesize,'',$param);
if ($firstcount < 0)
	$firstcount = 0;

//列表
$prodQuery = $db->query("select * from prod " . $where . " order by create_date desc limit $firstcount, $displaypg ");
$prodList = array ();
while ($row = $db->fetch_array($prodQuery)) {
	$prodList[] = $row;
}
$smarty->assign("prodList", $prodList);

//显示分页的内容
$smarty->assign("page", $pagenav);

//当前位置
$address = "您当前位置：首 页 &gt; <font color='#FF3300'>产品展示</font>";
$smarty->assign("address", $address);

$smarty->display("prod/prodlist.html");
?>
