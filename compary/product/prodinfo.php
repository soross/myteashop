<?php
require_once("../action/smarty_inc.php");
require_once("../action/mysql.class.php");
require_once("../action/public_info.php");

if(!isset($_GET[id]) || empty($_GET[id])){
	echo "<script>location.href='prodlist.php'</script>";
	exit();
}

//������������
$query = $db->query("select * from prod where id='".$_GET[id]."'");
$row = $db->fetch_array($query);
$cnt = $db->db_num_rows();
if($cnt <1){
	echo "<script>location.href='prodlist.php'</script>";
	exit();
}
$smarty->assign("prodinfo",$row);


//��Ʒ����
$queryProdClass = $db->query("select * from prod_class");
$rowPC = array();
while($rowProdClass = $db->fetch_array($queryProdClass)){
	$rowPC[] = $rowProdClass;
}
$smarty->assign("prodclass",$rowPC);

//����
$smarty->assign("title",$row[prod_name]."|�������|".$SeoTitle);
$smarty->assign("keywords",$row[prod_name]."|�������|".$SeoKeywords);
$smarty->assign("description",$row[prod_name]."|�������|".$SeoDesc);




//��ǰλ��
$address = "�����ڵ�λ�ã�<a href='../'>�������繤����</a> &gt; <a href='../product/prodlist.php'>�������</a>  &gt; $row[prod_name]";
$smarty->assign("address",$address);

$smarty->display("prod/prodinfo.html",$_GET[id]);

$content = $smarty->fetch('prod/prodinfo.html',$_GET[id]);
$db->makeSearchData("../product/prodinfo.php?id=".$_GET[id],$content);

//����html
//$filename = $db->getFileName($_GET[id],"../prodpage/","prod");
//$db->makeHtml("../prodpage/".$filename,$content);//д�����ݵ�news.html�ļ�

//$db->query("update prod set prod_info_url='../prodpage/".$filename."' where id='".$_GET[id]."'");
//echo "<script>location.href='../prodpage/".$filename."'</script>";
?>