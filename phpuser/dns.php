<html>
<head>
<title>国内真正最便宜域名注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css" media="all">@import "style.css";</style>
<style type="text/css" media="all">@import "common.css";</style>
<script language="javascript" src="js/jquery-min.js"></script>
<script language="javascript">
function check_form(){
	if( $(".form1").attr("value") == "" | $(".form2").attr("value") == ""){
		alert("DNS不能为空");
		return false;
	}
}
</script>
</head>
<body bgcolor="#d4ddd8">
 <div id="header">
 </div>
 <?php 
	date_default_timezone_set("Asia/Hong_Kong"); 
	session_start();
	if(!$_SESSION["userid"]) header("Location:index.php");
	include("dbconnect.inc.php");
	include("login_to.php");
	$id = $_SESSION["userid"];
	$sql = "select dd.domain_dns,dd.domain_ip from domains d,domain_detail dd where d.domain_id=dd.domain_id and d.user_id={$id}";
	$res = mysql_query($sql);
	$row = mysql_fetch_array($res);
	$ns1 = "";
	$ns2 = "";
	if( $row["domain_dns"] && $row["domain_dns"] != ""){
		$ns = explode("|", $row["domain_dns"]);
		$ns1 = $ns[0];
		$ns2 = $ns[1];
	}
	if( isset($_POST['save']) && (!empty( $_POST['dns1']) and !empty( $_POST['dns1']))){
	  preg_match("~[a-zA-Z\.]+~",$_POST['dns1'],$n1);
	  preg_match("~[a-zA-Z\.]+~",$_POST['dns2'],$n2);
	  if( isset( $n1[0]) && $n1[0] == $_POST['dns1']){
		if( isset( $n2[0]) && $n2[0] == $_POST['dns2']){
			//验证通过
			//登陆netfirm
			$para = array(
				"credential_0"=>"",
				"credential_1"=>"",
				"submit"=>"Log In",
				"login"=>"https://secure.netfirms.com/secureLogin",
				"destination"=>"http://www2.netfirms.com/controlpanel/",
			);
			$para = http_build_query( $para);
			//echo 
			goNet("https://secure.netfirms.com/secure/login.bml?err=","https://secure.netfirms.com/secureLogin",$para);

			$dns = "cmd=dns&domain=".$_POST['domain']."&params=;count=2;action=editNS;id1=300194138;name1=".$_POST['domain'].";content1=".$_POST['dns1'].";id2=300194139;name2=".$_POST['domain'].";content2=".$_POST['dns2'].";";
			$res = goNet("","http://www2.netfirms.com/webControl/domaincentral/beta/m.cmp",$dns,'http://www2.netfirms.com/webControl/domaincentral/beta/index.bml');

			if( strstr( $res,"updated") ){
				echo "<script>alert('修改成功！');</script>";
			}else{
				echo "<script>alert('修改失败，请重试！');</script>";
			}
		}			
	  }
	}
?>
<div id="dnsform">
 <fieldset><legend>解析域名： <?php echo $_POST['domain'];?></legend>
	<form method="post" action="dns.php" name="mod_dns">
	<table class="dnsform" align="center" width="237" height="25" cellspacing="0" cellpadding="0" border="0">
	  <tbody>
	  <tr>
		<td width="30"></td>
		<td>域名: <?php echo $_POST['domain'];?>
		<input type="hidden" name="domain" value="<?php echo $_POST['domain'];?>"/></td></tr></tbody></table>
	<div align="center">
	<table class="dnsform">
	  <tbody>
	  <tr>
		<td align="center">　</td>
		<td align="center">　</td>
		<td align="center">　</td></tr>
	  <tr>
		<td>
		  <div align="right">DNS1：</div></td>
		<td><?php if( $ns1 != ""){ echo $ns1;}else{ echo "默认";} ?> --&gt;改为 </td>
		<td><input value="" name="dns1" class="form1"> 
	  </td></tr>
	  <tr>
		<td>　</td>
		<td>　</td>
		<td>　</td></tr>
	  <tr>
		<td>
		  <div align="right">DNS2：</div></td>
		<td><?php if( $ns2 != ""){ echo $ns2;}else{ echo "默认";} ?> --&gt;改为 </td>
		<td><input value="" name="dns2" class="form2"> 
	  </td></tr></tbody></table>
	<p><br/><br/><input type="submit" name="save" value="保 存" onclick="return check_form();"/> </p></div>
  </form>
 </fieldset>
</div>
 </body>
</html>
