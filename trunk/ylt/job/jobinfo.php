<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");


if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}

//具体新闻内容
$query = $db->query("select * from job where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='joblist.php'</script>";
	exit();
}
$smarty->assign("jobinfo",$row);

//标题
$smarty->assign("title",$row[job_name]."|岗位要求|诚聘英才|加入我们|".$SeoTitle);
$smarty->assign("keywords",$row[job_name]."|岗位要求|诚聘英才|加入我们|".$SeoKeywords);
$smarty->assign("description",$row[job_name]."|岗位要求|诚聘英才|加入我们|".$SeoDesc);



//当前位置
$address = "您现在的位置：<a href='../'>艺玲通</a> &gt; <a href='../job/joblist.php'>加入我们</a> &gt; 岗位要求";
$smarty->assign("address",$address);

$smarty->display("job/jobinfo.html",$_GET[id]);
?>
