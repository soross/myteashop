<?php
require_once ("../action/global_action.php");

if(empty ($_GET[page])||empty($_GET[task])){
	$param = "";
	if(!empty ($_GET[page])){
		$param = "?page=$_GET[page]";
	}
	echo "<script>location.href='prodlist.php".$param."';</script>";
	exit;
}else if (isset ($_GET[task]) && "editProd" == $_GET[task]) {
	//产品信息
	$prodinfoquery = $db->query("select id,prod_name,prod_desc,prod_class,prod_picture,prod_link,compary,state from prod where id = '".$_GET[id]."'");
	$prodinforow = $db->fetch_array($prodinfoquery);
	$smarty->assign("info",$prodinforow);

	//页码信息
	$cpage = '';
	if(!empty ($_GET[page])){
		$cpage = $_GET[page];
	}
	$smarty->assign("page",$cpage);

	//产品分类
	$queryProdClass = $db->query("select id,class_name from prod_class");
	$rowPC= array();
	while($rowProdClass = $db->fetch_array($queryProdClass)){
		$rowPC[] = $rowProdClass;
	}
	$smarty->assign("prodClassList",$rowPC);

	$smarty->display("product/prodedit.html");
}

?>
