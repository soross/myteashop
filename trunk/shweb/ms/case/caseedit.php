<?php
require_once ("../action/global_action.php");

if(empty ($_GET[page])||empty($_GET[task])){
	$param = "";
	if(!empty ($_GET[page])){
		$param = "?page=$_GET[page]";
	}
	echo "<script>location.href='caselist.php".$param."';</script>";
	exit;
}else if (isset ($_GET[task]) && "editcase" == $_GET[task]) {
	//������Ϣ
	$prodinfoquery = $db->query("select id,case_name from succ_case where id = '".$_GET[id]."'");
	$prodinforow = $db->fetch_array($prodinfoquery);
	$smarty->assign("info",$prodinforow);

	//����ͼƬ����
	$queryCasePath = $db->query("select id,case_path from succ_case_path where case_id='".$_GET[id]."'");
	$casePathList= array();
	while($rowCasePath = $db->fetch_array($queryCasePath)){
		$casePathList[] = $rowCasePath;
	}
	$smarty->assign("casePathList",$casePathList);

	//ҳ����Ϣ
	$cpage = '';
	if(!empty ($_GET[page])){
		$cpage = $_GET[page];
	}
	$smarty->assign("page",$cpage);

	$smarty->display("case/caseedit.html");
}

?>
