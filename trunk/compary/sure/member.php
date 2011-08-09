<?php
require_once("action/checkLogin.php");
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");

$smarty->clear_cache('sure/member.html'); //清除index.tpl的缓存

require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//客户案例列表
$caseQuery = $db->query("select * from cust_case where cust_id='".$_SESSION[WEB_USER_LOGIN_UID_SESSION]."' order by state desc,create_date" );
//$caseRow = $db->fetch_array($caseQuery);
$caseRow = array();
while($rowR = $db->fetch_array($caseQuery)){
	$caseRow[] = $rowR;
}
$smarty->assign("caseList",$caseRow);



//标题
$smarty->assign("title","方案确定|加入我们|".$SeoTitle);
$smarty->assign("keywords","方案确定|加入我们|".$SeoKeywords);
$smarty->assign("description","方案确定|加入我们|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../job/joblist.html'>加入我们</a> &gt; 方案确定";
$smarty->assign("address",$address);

$smarty->display("sure/member.html");

$content = $smarty->fetch('sure/member.html');
$db->makeSearchData("../sure/member.php",$content);
?>
