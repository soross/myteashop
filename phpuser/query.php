<?php
require("functions.inc.php");
include("dbconnect.inc.php");
if( isset( $_POST["domain"])){
	$domain = $_POST["domain"];
	$exts = explode("|",$_POST["ext"]);
	
	$success = '';//可以注册的
	$registered = '';//已被注册的
	$failed = '';//查询失败的
	foreach( $exts as $v){		
		if( $v != ''){
			$stat = whois_api( $domain,$v);
			if( $stat == 9999){
				$success .= "<li>".$domain.".".$v."<a class='sec' href='dreg.php?d=".$domain.".".$v."'>立即注册</a></li>";
			}elseif( $stat == 1001){
				$registered .= "<li>".$domain.".".$v."</li>";
			}else{
				$failed .= "<li>".$domain.".".$v."</li>";
			}
		}
	}
	$returnStr = '';
	if( $success != ''){
		$success = '<dd class="allowreg"><label>以下域名可以注册</label><ul>'.$success.'</ul></dd>';
	}
	if( $registered != ''){
		$registered = '<dd class="denialreg"><label>以下域名已经被注册</label><ul>'.$registered.'</ul></dd>';
	}
	if( $failed != ''){
		$failed = '<dd class="denialreg"><label>以下域名查询失败</label><ul>'.$failed.'</ul></dd>';
	}
	$returnStr .= "<dt></dt>".$success.$registered.$failed.'<br class="cb" />';
	
	echo $returnStr;
}
if( !empty( $_POST['t']) && $_POST['t'] == "chkname" && $_POST['user'] != ""){
	if( strlen( $_POST['user']) < 4 or strlen( $_POST['user']) > 8){
		echo "2";
		exit;
	}
	$res = mysql_query("select username from users where username='".addslashes( $_POST['user'])."'");
	echo mysql_num_rows( $res);
}

?>