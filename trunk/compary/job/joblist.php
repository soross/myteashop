<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/page.class.php");

//搜索不缓存
$smarty->clear_cache('job/joblist.html'); //清除index.tpl的缓存
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

$pagesize = 6;//一页显示多少条

//分页
$queryTotal = $db->query("select id from job");
$total = $db->db_num_rows($queryTotal);
pageft($total, $pagesize);
if ($firstcount < 0) $firstcount = 0;

//岗位列表
$jobQuery = $db->query("select id,job_name,job_info_url,working_location,recruiting_numbers from job limit $firstcount, $displaypg ");
$jobRow = array();
while($rowR = $db->fetch_array($jobQuery)){
	$jobRow[] = $rowR;
}
$smarty->assign("jobRow",$jobRow);

//显示分页的内容
$smarty->assign("page",$pagenav);


//标题
$smarty->assign("title","诚聘英才|加入我们|".$SeoTitle);
$smarty->assign("keywords","诚聘英才|加入我们|".$SeoKeywords);
$smarty->assign("description","诚聘英才|加入我们|".$SeoDesc);


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../job/joblist.html'>加入我们</a> &gt; 诚聘英才";
$smarty->assign("address",$address);

$smarty->display("job/joblist.html");

$content = $smarty->fetch('job/joblist.html');
$db->makeSearchData($url."=".$page,$content);
?>
