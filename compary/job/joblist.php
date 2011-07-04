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
//$smarty->assign("title","加入我们");
$smarty->assign("title","诚聘英才-加入我们-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords","诚聘英才 加入我们 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='joblist.php'>加入我们</a> &gt; 诚聘英才";
$smarty->assign("address",$address);

$smarty->display("job/joblist.html");

$content = $smarty->fetch('job/joblist.html');
$db->makeSearchData($url."=".$page,$content);
?>
