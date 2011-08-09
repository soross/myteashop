<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//公司简介
$queryCompanyInfo = $db->query("select info_value from comm_info where info_type='CompanyInfo'");
$rowCompanyInfo = $db->fetch_array($queryCompanyInfo);
$smarty->assign("companyInfo",$rowCompanyInfo[info_value]);

//标题
$smarty->assign("title","关于我们|".$SeoTitle);
$smarty->assign("keywords","关于我们|".$SeoKeywords);
$smarty->assign("description","关于我们|".$SeoDesc);

//当前位置
$address = "您现在的位置：<a href='../'>果果网络工作室</a> &gt; 公司简介";
$smarty->assign("address",$address);
$smarty->display("aboutus/company.html");


$content = $smarty->fetch('aboutus/company.html');
$db->makeSearchData("../aboutus/company.php",$content);

//$filename = "company.html";
//$db->makeHtml($filename,$content);//写入内容到news.html文件
//echo "<script>location.href='".$filename."'</script>";

?>
