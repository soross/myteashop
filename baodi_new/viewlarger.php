<?php
include_once("action/lang.class.php");
include_once("action/mysql.class.php");
if(empty($_GET[prodid])) exit;
$prodID=$_GET[prodid];
$prodInfo = getInfo("product where id='".$prodID."' ",$db);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title></title>
<style type="text/css">
*{font-family:Arial, Helvetica, sans-serif;}
html,body{margin:0;padding:0;}
#popHeader{background:#67A621;padding:5px 10px;}
#popHeader *{color:#fff!important;}
#popHeader h1{font-size:14px;margin:0;padding:10px 0 10px 20px;}
#popClose{position:absolute;top:15px;right:10px;text-align:right;text-decoration:none;font-size:11px;}
#popClose:hover{text-decoration:underline;}
#popContent{text-align:center;}
</style>
</head>
<body>
	<div id="popHeader">
		<h1><?php echo $prodInfo[prod_name];?></h1>
		<a id="popClose" href="javascript:window.close();"><?php if($currlang=='en'){echo "Close Window"; }else{echo "关闭";}?></a>
	</div>
	<table id="popContent" cellspacing="0" border="0" width="100%" height="100%">
		<tr>
			<td>
				<img src='<?php echo $prodInfo[prod_pic];?>' width="444" height="378" />
			</td>
		</tr>
	</table>
</body>
</html>
