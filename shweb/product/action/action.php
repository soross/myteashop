<?php
require_once("../../action/mysql.class.php");
header('Content-Type: text/html; charset=GBK');
session_start();
if(isset($_POST[task])&&"addProdOrder"==$_POST[task]){
	if($_POST[m_code] == $_SESSION[validationcode]){
		require_once("../../action/mysql.class.php");
		$sql ="insert into prod_order(cust_name,link_name,phone,address,fax,content,create_date,prod_count,prod_code,prod_id,prod_name) " .
				" values('$_POST[company]','$_POST[linkman]','$_POST[tel]','$_POST[addr]','$_POST[fax]','$_POST[bz]',now(),'$_POST[num]','$_POST[procode]','$_POST[id]','$_POST[proname]')";
		$db->query($sql);
		echo "<script>alert('产品订购成功,我们会尽快与您联系!');location.href='../prodinfo.php?id=$_POST[id]';</script>";
	}else{
		echo "<script>alert('验证码错误,请重试!');location.href='../prodorder.php?id=$_POST[id]'</script>";
	}
}else if(isset($_POST[act])&&"checkProdByName"==$_POST[act]){

	$str=iconv('utf-8','gbk',unicode_urldecode($_POST[prodName]));
	$query = $db->query("select * from prod where prod_name='$str'");
	$row = $db->fetch_array($query);
	$cnt = $db->db_num_rows();

	if($cnt>0){
		echo $row[prod_code];
	}else{
		echo "ERROR";
	}
}else if(isset($_POST[act])&&"checkProdByCode"==$_POST[act]){
	$query = $db->query("select * from prod where prod_code='$_POST[prodCode]'");
	$row = $db->fetch_array($query);
	$cnt = $db->db_num_rows();
	if($cnt>0){
		echo $row[prod_name];
	}else{
		echo "ERROR";
	}
}

//echo $str=iconv('utf-8','gb2312',unescape('%E5%8D%95%E6%AD%A3%E7%91%9E'));
function unicode_urldecode($url)
{
   preg_match_all('/%u([[:alnum:]]{4})/', $url, $a);

   foreach ($a[1] as $uniord)
   {
       $dec = hexdec($uniord);
       $utf = '';

       if ($dec < 128)
       {
           $utf = chr($dec);
       }
       else if ($dec < 2048)
       {
           $utf = chr(192 + (($dec - ($dec % 64)) / 64));
           $utf .= chr(128 + ($dec % 64));
       }
       else
       {
           $utf = chr(224 + (($dec - ($dec % 4096)) / 4096));
           $utf .= chr(128 + ((($dec % 4096) - ($dec % 64)) / 64));
           $utf .= chr(128 + ($dec % 64));
       }

       $url = str_replace('%u'.$uniord, $utf, $url);
   }

   return urldecode($url);
}

//echo unicode_urldecode('%u7231%u7231%u7231');

?>
