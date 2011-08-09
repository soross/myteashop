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
$smarty->assign("title",$row[job_name]."|职位申请|诚聘英才|加入我们|".$SeoTitle);
$smarty->assign("keywords",$row[job_name]."|职位申请|诚聘英才|加入我们|".$SeoKeywords);
$smarty->assign("description",$row[job_name]."|职位申请|诚聘英才|加入我们|".$SeoDesc);


//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; <a href='../job/joblist.html'>加入我们</a> &gt; 职位申请";
$smarty->assign("address",$address);

$smarty->display("job/jobapply.html",$_GET[id]);

$content = $smarty->fetch('job/jobapply.html',$_GET[id]);
$db->makeSearchData("../job/jobapply.php?id=".$_GET[id],$content);

?>
