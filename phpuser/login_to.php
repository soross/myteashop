<?php
//登陆netfirm
/***
$para = array(
	"credential_0"=>"monclervestjacketsco",
	"credential_1"=>"glkd1257sS%wr",
	"submit"=>"Log In",
	"login"=>"https://secure.netfirms.com/secureLogin",
	"destination"=>"http://www2.netfirms.com/controlpanel/",
);
$para = http_build_query( $para);
//echo 
goNet("https://secure.netfirms.com/secure/login.bml?err=","https://secure.netfirms.com/secureLogin",$para);

$dns = "cmd=dns&domain=cheapsmonclersale.com&params=;count=2;action=editNS;id1=300194138;name1=cheapsmonclersale.com;content1=ns1.netfirms.com;id2=300194139;name2=cheapsmonclersale.com;content2=ns2.netfirms.com;";
echo goNet("","http://www2.netfirms.com/webControl/domaincentral/beta/m.cmp",$dns,'http://www2.netfirms.com/webControl/domaincentral/beta/index.bml');
**/
function goNet($url,$action,$paramter,$referer=""){
	$buf2 = '';
	$res = '';
	if( function_exists("curl_init")){
		//save cookies	
		 $cookie_file = getcwd()."/cookie.txt";
		 if( $url != ""){
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 1);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);			
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1); 
			curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)");
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_REFERER, $url);
			curl_setopt($ch, CURLOPT_POST, 1); 
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_TIMEOUT, 15);
			curl_setopt($ch, CURLOPT_POSTFIELDS, "");
			if( file_exists("./cookie.txt")){
				curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
			}
			curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
			//show header 1 or 0
			curl_setopt($ch, CURLOPT_HEADER, 1);
			$res = curl_exec($ch);
			curl_close($ch);
			unset($ch);
		 }
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST,2);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
			curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)");
			//把原先产生的cookie文件，作为这次请求的cookie
			curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
			curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
			curl_setopt($ch, CURLOPT_REFERER, $referer);
			curl_setopt($ch, CURLOPT_URL,$action);
			curl_setopt($ch, CURLOPT_POST, 1);
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $paramter);
			$buf2 = curl_exec ($ch);		
			curl_close ($ch);
			unset($ch);
	}else{
		return false;
	}
	return $buf2;
}
?>