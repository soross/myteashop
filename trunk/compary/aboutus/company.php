<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");
require_once("../action/public_info_contact.php");

//��˾���
$queryCompanyInfo = $db->query("select info_value from comm_info where info_type='CompanyInfo'");
$rowCompanyInfo = $db->fetch_array($queryCompanyInfo);
$smarty->assign("companyInfo",$rowCompanyInfo[info_value]);

//����
$smarty->assign("title","��������|".$SeoTitle);
$smarty->assign("keywords","��������|".$SeoKeywords);
$smarty->assign("description","��������|".$SeoDesc);

//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; ��˾���";
$smarty->assign("address",$address);
$smarty->display("aboutus/company.html");


$content = $smarty->fetch('aboutus/company.html');
$db->makeSearchData("../aboutus/company.php",$content);

//$filename = "company.html";
//$db->makeHtml($filename,$content);//д�����ݵ�news.html�ļ�
//echo "<script>location.href='".$filename."'</script>";

?>
