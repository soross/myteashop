<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}

//判断岗位是否存在
$query = $db->query("select * from job where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}
$smarty->assign("jobinfo",$row);

//标题
//$smarty->assign("title","职位申请");
$smarty->assign("title",$row[job_name]."-职位申请-诚聘英才-加入我们-果果网络(Www.GuoguoNet.com)");
$smarty->assign("keywords",$row[job_name]." 职位申请 诚聘英才 加入我们 果果网络 软件 软件开发 网站 网站建设 整站建设");
$smarty->assign("description","果果网络工作室诚挚为您提供软件开发、软件设计、系统研发、网站建设、网站设计、网站维护、域名注册、空间注册、成品建站、局域网搭建等服务！");

//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='joblist.php'>加入我们</a> &gt; 职位申请";
$smarty->assign("address",$address);

$smarty->display("job/jobapply.html",$_GET[id]);

$content = $smarty->fetch('job/jobapply.html',$_GET[id]);
$db->makeSearchData("../job/jobapply.php?id=".$_GET[id],$content);

?>
